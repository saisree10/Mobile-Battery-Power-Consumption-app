// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.DefaultHttpRequestRetryHandler;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

public abstract class pj
    implements android.os.Handler.Callback
{

    private static DefaultHttpClient c;
    protected Handler a;
    protected oq b;
    private Activity d;
    private Context e;
    private Toast f;

    public pj(Activity activity)
    {
        d = activity;
        e = activity;
        a = new Handler(this);
        b = oq.a(activity);
    }

    static Activity a(pj pj1)
    {
        return pj1.d;
    }

    static Toast a(pj pj1, Toast toast)
    {
        pj1.f = toast;
        return toast;
    }

    static boolean a(String s)
    {
        while (s == null || s.trim().length() == 0 || !s.startsWith("http://market.") && !s.startsWith("https://market.") && !s.startsWith("https://play.") && !s.startsWith("http://play.") && !s.startsWith("market:")) 
        {
            return false;
        }
        return true;
    }

    static Toast b(pj pj1)
    {
        return pj1.f;
    }

    static DefaultHttpClient b()
    {
        pj;
        JVM INSTR monitorenter ;
        if (c == null) goto _L2; else goto _L1
_L1:
        DefaultHttpClient defaulthttpclient = c;
_L4:
        pj;
        JVM INSTR monitorexit ;
        return defaulthttpclient;
_L2:
        SchemeRegistry schemeregistry = new SchemeRegistry();
        schemeregistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        schemeregistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
        BasicHttpParams basichttpparams = new BasicHttpParams();
        defaulthttpclient = new DefaultHttpClient(new ThreadSafeClientConnManager(basichttpparams, schemeregistry), basichttpparams);
        HttpConnectionParams.setConnectionTimeout(defaulthttpclient.getParams(), 10000);
        HttpConnectionParams.setSoTimeout(defaulthttpclient.getParams(), 20000);
        defaulthttpclient.getParams().setIntParameter("http.protocol.max-redirects", 10);
        HttpClientParams.setCookiePolicy(defaulthttpclient.getParams(), "compatibility");
        HttpProtocolParams.setUserAgent(defaulthttpclient.getParams(), "Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.18) Gecko/20110628 Ubuntu/10.04 (lucid) Firefox/3.6.18");
        defaulthttpclient.setHttpRequestRetryHandler(new DefaultHttpRequestRetryHandler(3, true));
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    protected void a()
    {
        a(ok.toolbox_no_apps_des_network_error_b);
    }

    protected void a(int i)
    {
        a.post(new pk(this, i));
    }

    public abstract void a(ou ou1);

    protected void a(ou ou1, String s)
    {
        nz.b("BaseClickHandler", "An apk link.");
        b(ou1, s);
    }

    protected void b(ou ou1)
    {
        nz.b("BaseClickHandler", (new StringBuilder()).append("Goto installed App: ").append(ou1.f).toString());
        op.d(e, ou1);
        pi.b(e, ou1.f);
    }

    protected void b(ou ou1, String s)
    {
        if (s == null)
        {
            nz.b("BaseClickHandler", "startBrowser: url is null");
            op.e(e, ou1);
            a(ok.toolbox_no_apps_des_network_error_b);
            return;
        }
        try
        {
            nz.b("BaseClickHandler", "Goto browser");
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
            e.startActivity(intent);
            op.a(e, ou1, s);
            return;
        }
        catch (Exception exception)
        {
            nz.a("BaseClickHandler", "Goto browser failed: ", exception);
        }
        a(ok.toolbox_no_browser_play);
        op.e(e, ou1);
    }

    protected void c(ou ou1)
    {
        nz.b("BaseClickHandler", "No network.");
        op.f(e, ou1);
        if (ou1.v <= 0L)
        {
            b.a(ou1);
        }
        a();
    }

    protected void c(ou ou1, String s)
    {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
        intent.setFlags(0x10000000);
        intent.setPackage("com.android.vending");
        try
        {
            nz.b("BaseClickHandler", "Goto Play");
            e.startActivity(intent);
            op.c(e, ou1);
            return;
        }
        catch (Exception exception)
        {
            nz.a("BaseClickHandler", "Goto Play failed:", exception);
        }
        b(ou1, s);
    }

    public boolean handleMessage(Message message)
    {
        return false;
    }
}
