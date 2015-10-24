// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

// Referenced classes of package com.tapjoy:
//            TJAdUnitJSBridge, TapjoyConnectCore, TJEvent, TapjoyLog

public class TJEventOptimizer extends WebView
{

    private static int eventCount = 0;
    private static TJEventOptimizer eventOptimizer;
    private String TAG;
    private TJAdUnitJSBridge bridge;
    private Context ctx;
    private HashMap events;
    private Map urlParams;

    private TJEventOptimizer(Context context)
    {
        super(context);
        TAG = "TJEventOptimizer";
        ctx = context;
        events = new HashMap();
        bridge = new TJAdUnitJSBridge(ctx, this, null);
        getSettings().setJavaScriptEnabled(true);
        setWebViewClient(new TJEventWebViewClient(null));
        setWebChromeClient(new TJEventWebChromeClient(null));
        loadUrl((new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("events/proxy?").toString());
    }

    TJEventOptimizer(Context context, _cls1 _pcls1)
    {
        this(context);
    }

    public static TJEventOptimizer getInstance()
    {
        return eventOptimizer;
    }

    public static void init(final Context context)
    {
        _cls1 _lcls1 = new _cls1();
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            _lcls1.run();
            return;
        } else
        {
            (new Handler(context.getMainLooper())).post(_lcls1);
            return;
        }
    }

    public void checkEvent(TJEvent tjevent)
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("token");
        int i = eventCount;
        eventCount = i + 1;
        final String token = stringbuilder.append(i).toString();
        urlParams = TapjoyConnectCore.getGenericURLParams();
        urlParams.putAll(tjevent.getParameters());
        urlParams.putAll(TapjoyConnectCore.getTimeStampAndVerifierParams());
        final String params = (new JSONObject(urlParams)).toString();
        events.put(token, tjevent);
        _cls2 _lcls2 = new _cls2();
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            _lcls2.run();
            return;
        } else
        {
            (new Handler(ctx.getMainLooper())).post(_lcls2);
            return;
        }
    }

    public void eventOptimizationCallback(String s, boolean flag)
    {
        TJEvent tjevent = (TJEvent)events.get(s);
        if (tjevent != null)
        {
            tjevent.processSendCallback(flag);
            TapjoyLog.d(TAG, (new StringBuilder()).append("Event optimization result ").append(flag).append(" for event ").append(tjevent.getName()).toString());
            events.remove(s);
        }
    }



/*
    static TJEventOptimizer access$202(TJEventOptimizer tjeventoptimizer)
    {
        eventOptimizer = tjeventoptimizer;
        return tjeventoptimizer;
    }

*/



    private class TJEventWebViewClient extends WebViewClient
    {

        final TJEventOptimizer this$0;

        public void onPageFinished(WebView webview, String s)
        {
            TapjoyLog.d(TAG, "boostrap html loaded successfully");
        }

        public void onReceivedError(WebView webview, int i, String s, String s1)
        {
            super.onReceivedError(webview, i, s, s1);
            TapjoyLog.e(TAG, (new StringBuilder()).append("error:").append(s).toString());
        }

        private TJEventWebViewClient()
        {
            this$0 = TJEventOptimizer.this;
            super();
        }

        TJEventWebViewClient(_cls1 _pcls1)
        {
            this();
        }
    }


    private class TJEventWebChromeClient extends WebChromeClient
    {

        final TJEventOptimizer this$0;

        public boolean onConsoleMessage(ConsoleMessage consolemessage)
        {
            TapjoyLog.d(TAG, (new StringBuilder()).append("JS CONSOLE: ").append(consolemessage.message()).append(" -- From line ").append(consolemessage.lineNumber()).append(" of ").append(consolemessage.sourceId()).toString());
            return true;
        }

        private TJEventWebChromeClient()
        {
            this$0 = TJEventOptimizer.this;
            super();
        }

        TJEventWebChromeClient(_cls1 _pcls1)
        {
            this();
        }
    }


    private class _cls1
        implements Runnable
    {

        final Context val$context;

        public void run()
        {
            TJEventOptimizer.eventOptimizer = new TJEventOptimizer(context, null);
        }

        _cls1()
        {
            context = context1;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        final TJEventOptimizer this$0;
        final String val$params;
        final String val$token;

        public void run()
        {
            String s = (new StringBuilder()).append("javascript:window.eventsProxy.processEvent('").append(token).append("', ").append(params).append(");").toString();
            TJEventTimerTask tjeventtimertask = new TJEventTimerTask(token);
            (new Timer()).schedule(tjeventtimertask, 2000L);
            loadUrl(s);
        }

        _cls2()
        {
            this$0 = TJEventOptimizer.this;
            token = s;
            params = s1;
            super();
        }

        private class TJEventTimerTask extends TimerTask
        {

            final TJEventOptimizer this$0;
            String token;

            public void run()
            {
                TJEvent tjevent = (TJEvent)events.get(token);
                if (tjevent != null)
                {
                    TapjoyLog.d(TAG, (new StringBuilder()).append("Event optimization call timed out for event ").append(tjevent.getName()).append(", fall through to full event call").toString());
                    eventOptimizationCallback(token, true);
                }
            }

            public TJEventTimerTask(String s)
            {
                this$0 = TJEventOptimizer.this;
                super();
                token = s;
            }
        }

    }

}
