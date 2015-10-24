// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.TreeMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class bcg
{

    private static final Method d;
    private static final Method e;
    private static final Method f;
    private static final TreeMap k;
    private WebView a;
    private boolean b;
    private bch c;
    private final String g;
    private final String h;
    private boolean i;
    private WebSettings j;

    public bcg(Context context, bch bch1, boolean flag)
    {
label0:
        {
            super();
            a = null;
            b = false;
            c = null;
            g = "androidJSInterface";
            h = bcg.getName();
            i = false;
            String _tmp = h;
            (new StringBuilder("JSExecutor() Build: ")).append(android.os.Build.VERSION.RELEASE);
            i = b();
            c = bch1;
            if (flag)
            {
                a = new WebView(context);
                if (c == null)
                {
                    c = new bch(null);
                }
                WebViewClient webviewclient = new WebViewClient();
                j = a.getSettings();
                j.setJavaScriptEnabled(true);
                if (f != null)
                {
                    try
                    {
                        Method method = f;
                        WebSettings websettings = j;
                        Object aobj[] = new Object[1];
                        aobj[0] = android.webkit.WebSettings.PluginState.ON;
                        method.invoke(websettings, aobj);
                    }
                    catch (IllegalAccessException illegalaccessexception)
                    {
                        Log.e(h, "m_setPluginState invoke failed: ", illegalaccessexception);
                    }
                    catch (IllegalArgumentException illegalargumentexception)
                    {
                        Log.e(h, "m_setPluginState invoke failed: ", illegalargumentexception);
                    }
                    catch (InvocationTargetException invocationtargetexception)
                    {
                        Log.e(h, "m_setPluginState invoke failed: ", invocationtargetexception);
                    }
                }
                a.setVisibility(4);
                a.setWebViewClient(webviewclient);
                if (!a())
                {
                    break label0;
                }
                if (c.a == null)
                {
                    Log.e(h, "alternate JS interface but no global latch");
                }
                String _tmp1 = h;
            }
            return;
        }
        if (!i)
        {
            a.addJavascriptInterface(c, "androidJSInterface");
            return;
        }
        if (c.a == null)
        {
            Log.e(h, "broken JS interface but no global latch");
        }
        String _tmp2 = h;
        a.setWebChromeClient(new bcr(c));
    }

    public static boolean a()
    {
        return d != null;
    }

    public static boolean b()
    {
        boolean flag;
        try
        {
            flag = android.os.Build.VERSION.RELEASE.startsWith("2.3");
        }
        catch (Exception exception)
        {
            return false;
        }
        return flag;
    }

    public String a(String s)
    {
        if (b) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        if (Thread.currentThread().isInterrupted())
        {
            return "";
        }
        CountDownLatch countdownlatch;
        String s1;
        InvocationTargetException invocationtargetexception;
        boolean flag;
        IllegalArgumentException illegalargumentexception;
        IllegalAccessException illegalaccessexception;
        Method method;
        WebView webview;
        Object aobj[];
        if (!i && !a())
        {
            countdownlatch = new CountDownLatch(1);
            c.a(countdownlatch);
        } else
        {
            countdownlatch = null;
        }
        if (a())
        {
            s1 = (new StringBuilder("javascript:(function(){try{return ")).append(s).append(" + \"\";}catch(js_eval_err){return '';}})();").toString();
        } else
        if (!i)
        {
            s1 = (new StringBuilder("javascript:window.androidJSInterface.getString((function(){try{return ")).append(s).append(" + \"\";}catch(js_eval_err){return '';}})());").toString();
        } else
        {
            s1 = (new StringBuilder("javascript:alert((function(){try{return ")).append(s).append(" + \"\";}catch(js_eval_err){return '';}})());").toString();
        }
        h;
        (new StringBuilder("getJSResult() attempting to execute: ")).append(s1);
        c.b = null;
        if (!a())
        {
            break MISSING_BLOCK_LABEL_384;
        }
        method = d;
        webview = a;
        aobj = new Object[2];
        aobj[0] = s1;
        aobj[1] = c;
        method.invoke(webview, aobj);
        flag = false;
_L3:
        if (flag && c.a != null)
        {
            c.a.countDown();
        }
_L4:
        if (!i && !a())
        {
            if (countdownlatch != null)
            {
                if (!countdownlatch.await(5L, TimeUnit.SECONDS))
                {
                    h;
                }
                h;
                (new StringBuilder("getJSResult() count = ")).append(countdownlatch.getCount());
            } else
            {
                Log.e(h, "latch == null");
            }
            if (c.b == null)
            {
                h;
            } else
            {
                h;
                (new StringBuilder("getJSResult() After latch: got ")).append(c.b);
            }
            return c.b;
        }
          goto _L1
        illegalaccessexception;
        Log.e(h, "getJSResult() invoke failed: ", illegalaccessexception);
        flag = true;
          goto _L3
        illegalargumentexception;
        Log.e(h, "getJSResult() invoke failed: ", illegalargumentexception);
        flag = true;
          goto _L3
        invocationtargetexception;
        Log.e(h, "getJSResult() invoke failed: ", invocationtargetexception);
        flag = true;
          goto _L3
        a.loadUrl(s1);
          goto _L4
    }

    public String a(boolean flag, Context context)
    {
        if (e == null) goto _L2; else goto _L1
_L1:
        String s = (String)e.invoke(null, new Object[] {
            context
        });
_L7:
        if (s == null || s.isEmpty()) goto _L4; else goto _L3
_L3:
        return s;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        Log.e(h, "getJSResult() invoke failed: ", illegalaccessexception);
        s = "";
        continue; /* Loop/switch isn't completed */
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        Log.e(h, "getJSResult() invoke failed: ", illegalargumentexception);
        s = "";
        continue; /* Loop/switch isn't completed */
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        Log.e(h, "getJSResult() invoke failed: ", invocationtargetexception);
_L2:
        s = "";
        continue; /* Loop/switch isn't completed */
_L4:
        if (flag && j != null)
        {
            s = j.getUserAgentString();
        }
        if (s != null && !s.isEmpty()) goto _L3; else goto _L5
_L5:
        h;
        String s1;
        String s2;
        String s3;
        if (k.containsKey(Integer.valueOf(android.os.Build.VERSION.SDK_INT)))
        {
            s1 = (String)k.get(Integer.valueOf(android.os.Build.VERSION.SDK_INT));
        } else
        {
            s1 = (new StringBuilder()).append((String)k.lastEntry().getValue()).append("+").toString();
        }
        s2 = Locale.getDefault().getLanguage();
        s3 = Locale.getDefault().getCountry();
        if (!s3.isEmpty())
        {
            s2 = (new StringBuilder()).append(s2).append("-").append(s3).toString();
        }
        return (new StringBuilder("Mozilla/5.0 (Linux; U; Android ")).append(android.os.Build.VERSION.RELEASE).append("; ").append(s2.toLowerCase()).append("; ").append(Build.MODEL).append(" Build/").append(Build.DISPLAY).append(") AppleWebKit/").append(s1).append(" (KHTML, like Gecko) Version/4.0 Mobile Safari/").append(s1).append(" ").append(bco.a).toString();
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void c()
    {
        if (!b)
        {
            if (a == null)
            {
                b = true;
            } else
            {
                String _tmp = h;
                String s;
                CountDownLatch countdownlatch;
                if (!i && !a())
                {
                    countdownlatch = new CountDownLatch(1);
                    s = "<html><head></head><body onLoad='javascript:window.androidJSInterface.getString(1)'></body></html>";
                    c.a(countdownlatch);
                    c.b = null;
                } else
                {
                    s = "<html><head></head><body></body></html>";
                    countdownlatch = null;
                }
                if (!Thread.currentThread().isInterrupted())
                {
                    a.loadData(s, "text/html", null);
                    if (!i && countdownlatch != null && !a())
                    {
                        if (!countdownlatch.await(5L, TimeUnit.SECONDS))
                        {
                            Log.e(h, "timed out waiting for javascript");
                            return;
                        }
                        b = true;
                        String _tmp1 = h;
                        (new StringBuilder("in init() count = ")).append(countdownlatch.getCount());
                        if (c.b == null)
                        {
                            String _tmp2 = h;
                            return;
                        } else
                        {
                            String _tmp3 = h;
                            (new StringBuilder("init() After latch: got ")).append(c.b);
                            return;
                        }
                    } else
                    {
                        b = true;
                        return;
                    }
                }
            }
        }
    }

    static 
    {
        Class aclass[] = {
            java/lang/String, android/webkit/ValueCallback
        };
        Method method5 = android/webkit/WebView.getMethod("evaluateJavascript", aclass);
        Method method = method5;
_L1:
        Class aclass1[];
        d = method;
        aclass1 = new Class[1];
        aclass[0] = android/content/Context;
        Method method4 = android/webkit/WebSettings.getMethod("getDefaultUserAgent", aclass1);
        Method method1 = method4;
_L2:
        Class aclass2[];
        e = method1;
        aclass2 = new Class[1];
        aclass[0] = android/webkit/WebSettings$RenderPriority;
        Method method3 = android/webkit/WebSettings.getMethod("setPluginState", aclass2);
        Method method2 = method3;
_L3:
        f = method2;
        TreeMap treemap = new TreeMap();
        k = treemap;
        treemap.put(Integer.valueOf(9), "533.1");
        k.put(Integer.valueOf(10), "533.1");
        k.put(Integer.valueOf(11), "533.1");
        k.put(Integer.valueOf(12), "533.1");
        k.put(Integer.valueOf(13), "534.13");
        k.put(Integer.valueOf(14), "534.30");
        k.put(Integer.valueOf(15), "534.30");
        k.put(Integer.valueOf(16), "534.30");
        k.put(Integer.valueOf(17), "534.30");
        k.put(Integer.valueOf(18), "534.30");
        return;
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        method = null;
          goto _L1
        NoSuchMethodException nosuchmethodexception1;
        nosuchmethodexception1;
        method1 = null;
          goto _L2
        NoSuchMethodException nosuchmethodexception2;
        nosuchmethodexception2;
        method2 = null;
          goto _L3
    }
}
