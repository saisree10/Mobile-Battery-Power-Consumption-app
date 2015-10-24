// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class qi extends WebViewClient
    implements qg
{

    ou a;
    WebView b;
    final qb c;
    private Runnable d;
    private Runnable e;
    private volatile boolean f;
    private volatile boolean g;
    private volatile boolean h;

    public qi(qb qb1, ou ou1)
    {
        c = qb1;
        super();
        d = new qj(this);
        e = new qk(this);
        f = false;
        g = false;
        h = false;
        a = ou1;
    }

    private void a(String s)
    {
        nz.b("ToolboxClickHandler", "[WebView] handleError");
        c.a.removeCallbacks(e);
        c.a.removeCallbacks(d);
        if (g)
        {
            nz.b("ToolboxClickHandler", "[WebView]Action canceled.");
            op.g(qb.a(c), a);
            return;
        }
        if (h)
        {
            nz.b("ToolboxClickHandler", "[WebView] already consumed");
            return;
        } else
        {
            nz.b("ToolboxClickHandler", (new StringBuilder()).append("[WebView] onReceivedError: ").append(s).toString());
            c.b(a, a.m);
            c.c();
            return;
        }
    }

    static boolean a(qi qi1)
    {
        return qi1.f;
    }

    static boolean a(qi qi1, boolean flag)
    {
        qi1.f = flag;
        return flag;
    }

    static boolean b(qi qi1)
    {
        return qi1.g;
    }

    public void a()
    {
        g = true;
    }

    public void onPageFinished(WebView webview, String s)
    {
        nz.b("ToolboxClickHandler", "[WebView] Page finished");
        c.a.removeCallbacks(e);
        c.a.removeCallbacks(d);
        if (g)
        {
            nz.b("ToolboxClickHandler", "[WebView]Action canceled.");
            op.g(qb.a(c), a);
        } else
        {
            if (h)
            {
                nz.b("ToolboxClickHandler", "[WebView] already consumed");
                return;
            }
            if (!f)
            {
                nz.b("ToolboxClickHandler", (new StringBuilder()).append("[WebView] start TIMEOUT_FINISH: ").append(s).toString());
                c.a.postDelayed(d, 2000L);
                return;
            }
        }
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        nz.b("ToolboxClickHandler", "[WebView] onPageStarted.");
        b = webview;
        f = false;
        h = false;
        c.a.removeCallbacks(e);
        c.a.removeCallbacks(d);
        nz.b("ToolboxClickHandler", (new StringBuilder()).append("[WebView] start TIMEOUT_START: ").append(s).toString());
        c.a.postDelayed(e, 30000L);
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        a((new StringBuilder()).append("Error: ").append(i).toString());
    }

    public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
    {
        super.onReceivedSslError(webview, sslerrorhandler, sslerror);
        a("SslError");
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        nz.b("ToolboxClickHandler", "[WebView] shouldOverrideUrlLoading.");
        c.a.removeCallbacks(e);
        c.a.removeCallbacks(d);
        if (g)
        {
            nz.b("ToolboxClickHandler", "[WebView]Action canceled.");
            h = true;
            return true;
        }
        if (s == null)
        {
            nz.b("ToolboxClickHandler", "[WebView] null URL.");
            c.b(a, a.m);
            c.c();
            h = true;
            return true;
        }
        if (pj.a(s))
        {
            nz.b("ToolboxClickHandler", (new StringBuilder()).append("[WebView] Market URL: ").append(s).toString());
            c.c(a, s);
            c.c();
            h = true;
            return true;
        }
        nz.b("ToolboxClickHandler", (new StringBuilder()).append("[WebView] Decode URL: ").append(s).toString());
        if (!f)
        {
            nz.b("ToolboxClickHandler", (new StringBuilder()).append("[WebView] start TIMEOUT_START: ").append(s).toString());
            c.a.postDelayed(e, 30000L);
        }
        return false;
    }
}
