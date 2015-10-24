// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;

public class qb extends pj
{

    private Context c;
    private Activity d;
    private WebView e;
    private qg f;
    private po g;

    public qb(Activity activity)
    {
        super(activity);
        c = activity;
        d = activity;
    }

    static Activity a(qb qb1)
    {
        return qb1.d;
    }

    static po a(qb qb1, po po1)
    {
        qb1.g = po1;
        return po1;
    }

    static po b(qb qb1)
    {
        return qb1.g;
    }

    static po c(qb qb1)
    {
        return qb1.f();
    }

    private void d(ou ou1)
    {
        boolean flag = pi.a(c, "com.android.vending");
        nz.b("ToolboxClickHandler", (new StringBuilder()).append("Click with Play installed? ").append(flag).toString());
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
        nz.b("ToolboxClickHandler", (new StringBuilder()).append("CHINA Click to download:").append(ou1.f).toString());
        op.c(c, ou1);
        b(ou1, ou1.m);
    }

    private po f()
    {
        po po1 = new po(d, ol.Dialog_Fullscreen);
        po1.setOnCancelListener(new qe(this));
        return po1;
    }

    public void a(ou ou1)
    {
        a(ou1, true);
    }

    public void a(ou ou1, boolean flag)
    {
        if (pi.a(c, ou1.f))
        {
            b(ou1);
            return;
        }
        if (flag)
        {
            op.b(c, ou1);
        }
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
            nz.b("ToolboxClickHandler", (new StringBuilder()).append("Clicked URL: ").append(ou1.m).toString());
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
            nz.b("ToolboxClickHandler", (new StringBuilder()).append("Unknown Open type: ").append(ou1.j).toString());
            return;
        }
    }

    protected void b(int i)
    {
        a.post(new qc(this, i));
    }

    protected void c()
    {
        a.post(new qd(this));
    }

    protected void d()
    {
        e();
    }

    protected void d(ou ou1, String s)
    {
        if (pi.a())
        {
            nz.b("ToolboxClickHandler", "Newer OS, use WebView redirect.");
            f(ou1, s);
            return;
        } else
        {
            nz.b("ToolboxClickHandler", "Older OS, use Http redirect.");
            ra.a().a(new qf(this, ou1, s));
            return;
        }
    }

    protected void e()
    {
        if (f != null)
        {
            f.a();
        }
    }

    protected void e(ou ou1, String s)
    {
        DefaultHttpClient defaulthttpclient = b();
        qh qh1 = new qh(this, ou1);
        f = qh1;
        defaulthttpclient.setRedirectHandler(qh1);
        nz.b("ToolboxClickHandler", (new StringBuilder()).append("[Http] Decode URL: ").append(s).toString());
        try
        {
            HttpGet httpget = new HttpGet(s);
            HttpConnectionParams.setConnectionTimeout(httpget.getParams(), 10000);
            HttpConnectionParams.setSoTimeout(httpget.getParams(), 20000);
            defaulthttpclient.execute(httpget).getEntity();
            return;
        }
        catch (Exception exception)
        {
            nz.b("ToolboxClickHandler", "[Http] Others error: ", exception);
        }
        b(ou1, s);
        c();
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
        qi qi1 = new qi(this, ou1);
        f = qi1;
        e.setWebViewClient(qi1);
        nz.b("ToolboxClickHandler", (new StringBuilder()).append("[WebView] Decode URL: ").append(s).toString());
        e.loadUrl(s);
    }
}
