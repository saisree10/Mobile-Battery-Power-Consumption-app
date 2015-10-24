// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;

public class qs extends pj
{

    private Context c;
    private Activity d;
    private WebView e;
    private qv f;
    private pq g;

    public qs(Activity activity)
    {
        super(activity);
        c = activity;
        d = activity;
    }

    static Activity a(qs qs1)
    {
        return qs1.d;
    }

    private void d(ou ou1)
    {
        boolean flag = pi.a(c, "com.android.vending");
        nz.b("ToolboxTctbClickHandler", (new StringBuilder()).append("Click with Play installed? ").append(flag).toString());
        if (flag)
        {
            String s = ou1.m;
            if (a(s))
            {
                c(ou1, s);
                return;
            } else
            {
                b(ok.toolbox_loading_switch_google_play_des);
                d(ou1, s);
                return;
            }
        } else
        {
            b(ou1, ou1.m);
            return;
        }
    }

    private void e(ou ou1)
    {
        nz.b("ToolboxTctbClickHandler", (new StringBuilder()).append("CHINA Click to download:").append(ou1.f).toString());
        op.c(c, ou1);
        b(ou1, ou1.m);
    }

    private pq f()
    {
        pq pq1 = new pq(d, ol.Dialog_Fullscreen);
        pq1.setOnCancelListener(new qu(this));
        return pq1;
    }

    public void a(ou ou1)
    {
        if (pi.a(c, ou1.f))
        {
            b(ou1);
            return;
        }
        op.b(c, ou1);
        if (!pi.a(c))
        {
            c(ou1);
            return;
        }
        if (ou1.j == 0)
        {
            a(ou1, ou1.n);
            return;
        }
        if (ou1.j == 1)
        {
            nz.b("ToolboxTctbClickHandler", (new StringBuilder()).append("Clicked URL: ").append(ou1.m).toString());
            if (pa.a())
            {
                d(ou1);
                return;
            } else
            {
                e(ou1);
                return;
            }
        } else
        {
            nz.b("ToolboxTctbClickHandler", (new StringBuilder()).append("Unknown Open type: ").append(ou1.j).toString());
            return;
        }
    }

    protected void b(int i)
    {
        Message message = a.obtainMessage(1002);
        message.arg1 = i;
        a.sendMessage(message);
    }

    protected void c()
    {
        d();
    }

    protected void d()
    {
        if (f != null)
        {
            f.a();
        }
        a.removeCallbacksAndMessages(null);
    }

    protected void d(ou ou1, String s)
    {
        if (pi.a())
        {
            nz.b("ToolboxTctbClickHandler", "Newer OS, use WebView redirect.");
            f(ou1, s);
            return;
        } else
        {
            nz.b("ToolboxTctbClickHandler", "Older OS, use Http redirect.");
            ra.a().a(new qt(this, ou1, s));
            return;
        }
    }

    protected void e()
    {
        a.sendEmptyMessage(1001);
    }

    protected void e(ou ou1, String s)
    {
        try
        {
            DefaultHttpClient defaulthttpclient = b();
            qw qw1 = new qw(this, ou1);
            f = qw1;
            defaulthttpclient.setRedirectHandler(qw1);
            nz.b("ToolboxTctbClickHandler", (new StringBuilder()).append("[Http] Decode URL: ").append(s).toString());
            HttpGet httpget = new HttpGet(s);
            httpget.setHeader("User-Agent", "dianxinosdxbs/3.2 (Linux; Android; Tapas OTA)");
            HttpConnectionParams.setConnectionTimeout(httpget.getParams(), 10000);
            HttpConnectionParams.setSoTimeout(httpget.getParams(), 20000);
            defaulthttpclient.execute(httpget).getEntity();
            return;
        }
        catch (Exception exception)
        {
            nz.b("ToolboxTctbClickHandler", "[Http] Others error: ", exception);
        }
        g(ou1, s);
    }

    protected void f(ou ou1, String s)
    {
        if (e == null)
        {
            e = new WebView(c);
            WebSettings websettings = e.getSettings();
            websettings.setAllowContentAccess(true);
            websettings.setJavaScriptEnabled(true);
            websettings.setUserAgentString("dianxinosdxbs/3.2 (Linux; Android; Tapas OTA)");
        }
        e.stopLoading();
        qx qx1 = new qx(this, ou1);
        f = qx1;
        e.setWebViewClient(qx1);
        nz.b("ToolboxTctbClickHandler", (new StringBuilder()).append("[WebView] Decode URL: ").append(s).toString());
        e.loadUrl(s);
    }

    protected void g(ou ou1, String s)
    {
        int i = 0;
        if ("tctb".equals(ou1.q))
        {
            nz.b("ToolboxTctbClickHandler", "Already in TCTB, DO NOTHING.");
            e();
            return;
        }
        if (!nl.a(c).f())
        {
            nz.b("ToolboxTctbClickHandler", "TCTB is DISABLED");
            b(ou1, s);
            e();
            return;
        }
        List list = b.b("tctb");
        if (list == null)
        {
            nz.c("ToolboxTctbClickHandler", "TCTB list is empty.");
            b(ou1, s);
            e();
            return;
        }
        pi.a(c, list);
        if (list.size() <= 0)
        {
            nz.c("ToolboxTctbClickHandler", "TCTB list is empty.");
            b(ou1, s);
            e();
            return;
        }
        ou ou2;
        Message message;
        if (om.b(c, "tctb"))
        {
            om.a(c, "tctb", false);
        } else
        {
            int j = om.e(c);
            i = 0;
            if (j >= 0)
            {
                int k = list.size();
                i = 0;
                if (j < k)
                {
                    i = (j + 1) % list.size();
                }
            }
        }
        om.b(c, i);
        ou2 = (ou)list.get(i);
        message = a.obtainMessage(1003);
        message.obj = ou2;
        a.sendMessage(message);
        if (a(ou2.m))
        {
            Message message1 = a.obtainMessage(1004);
            message1.obj = ou2;
            a.sendMessageDelayed(message1, 4000L);
            return;
        } else
        {
            d(ou2, ou2.m);
            return;
        }
    }

    public boolean handleMessage(Message message)
    {
        int i = message.what;
        if (i == 1002)
        {
            if (d.isFinishing())
            {
                return true;
            }
            int j = message.arg1;
            if (g == null)
            {
                g = f();
            }
            g.a(j);
            return true;
        }
        if (i == 1003)
        {
            if (d.isFinishing())
            {
                return true;
            }
            if (g == null)
            {
                g = f();
            }
            ou ou2 = (ou)message.obj;
            g.a(ou2);
            op.a(c, "tctb");
            op.a(c, ou2);
            return true;
        }
        if (i == 1004)
        {
            if (g != null)
            {
                g.dismiss();
            }
            ou ou1 = (ou)message.obj;
            op.b(c, ou1);
            if (!pi.a(c))
            {
                c(ou1);
            } else
            {
                c(ou1, ou1.m);
            }
            return true;
        }
        if (i == 1001)
        {
            if (d.isFinishing())
            {
                return true;
            }
            if (g != null)
            {
                g.dismiss();
            }
            return true;
        } else
        {
            return super.handleMessage(message);
        }
    }
}
