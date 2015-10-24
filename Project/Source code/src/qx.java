// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class qx extends WebViewClient
    implements qv
{

    ou a;
    WebView b;
    final qs c;
    private Runnable d;
    private Runnable e;
    private volatile boolean f;
    private volatile boolean g;
    private volatile boolean h;

    public qx(qs qs1, ou ou1)
    {
        c = qs1;
        super();
        d = new qy(this);
        e = new qz(this);
        f = false;
        g = false;
        h = false;
        a = ou1;
    }

    private void a(String s)
    {
        nz.b("ToolboxTctbClickHandler", "[WebView] handleError");
        c.a.removeCallbacks(e);
        c.a.removeCallbacks(d);
        if (g)
        {
            nz.b("ToolboxTctbClickHandler", "[WebView]Action canceled.");
            op.g(qs.a(c), a);
            return;
        }
        if (h)
        {
            nz.b("ToolboxTctbClickHandler", "[WebView] already consumed");
            return;
        } else
        {
            nz.b("ToolboxTctbClickHandler", (new StringBuilder()).append("[WebView] onReceivedError: ").append(s).toString());
            c.b(a, a.m);
            c.e();
            return;
        }
    }

    static boolean a(qx qx1)
    {
        return qx1.f;
    }

    static boolean a(qx qx1, boolean flag)
    {
        qx1.f = flag;
        return flag;
    }

    static boolean b(qx qx1)
    {
        return qx1.g;
    }

    public void a()
    {
        g = true;
    }

    public void onPageFinished(WebView webview, String s)
    {
        nz.b("ToolboxTctbClickHandler", "[WebView] Page finished");
        c.a.removeCallbacks(e);
        c.a.removeCallbacks(d);
        if (g)
        {
            nz.b("ToolboxTctbClickHandler", "[WebView]Action canceled.");
            op.g(qs.a(c), a);
        } else
        {
            if (h)
            {
                nz.b("ToolboxTctbClickHandler", "[WebView] already consumed");
                return;
            }
            if (!f)
            {
                nz.b("ToolboxTctbClickHandler", (new StringBuilder()).append("[WebView] start TIMEOUT_FINISH: ").append(s).toString());
                c.a.postDelayed(d, 2000L);
                return;
            }
        }
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        nz.b("ToolboxTctbClickHandler", "[WebView] onPageStarted.");
        b = webview;
        f = false;
        h = false;
        c.a.removeCallbacks(e);
        c.a.removeCallbacks(d);
        nz.b("ToolboxTctbClickHandler", (new StringBuilder()).append("[WebView] start TIMEOUT_START: ").append(s).toString());
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
        nz.b("ToolboxTctbClickHandler", "[WebView] shouldOverrideUrlLoading.");
        c.a.removeCallbacks(e);
        c.a.removeCallbacks(d);
        if (g)
        {
            nz.b("ToolboxTctbClickHandler", "[WebView]Action canceled.");
            h = true;
            return true;
        }
        if (s == null)
        {
            nz.b("ToolboxTctbClickHandler", "[WebView] null URL.");
            c.b(a, a.m);
            c.e();
            h = true;
            return true;
        }
        if (pj.a(s))
        {
            nz.b("ToolboxTctbClickHandler", (new StringBuilder()).append("[WebView] Market URL: ").append(s).toString());
            c.c(a, s);
            c.e();
            h = true;
            return true;
        }
        nz.b("ToolboxTctbClickHandler", (new StringBuilder()).append("[WebView] Decode URL: ").append(s).toString());
        if (!f)
        {
            nz.b("ToolboxTctbClickHandler", (new StringBuilder()).append("[WebView] start TIMEOUT_START: ").append(s).toString());
            c.a.postDelayed(e, 30000L);
        }
        return false;
    }
}
