// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.net.Proxy;
import android.net.wifi.WifiManager;
import java.util.ArrayList;
import org.apache.http.HttpHost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.DefaultHttpRequestRetryHandler;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class va extends DefaultHttpClient
{

    private ArrayList a;
    private String b;

    public va(Context context)
    {
        a = new ArrayList();
        b = null;
        if (!((WifiManager)context.getSystemService("wifi")).isWifiEnabled())
        {
            String s = Proxy.getDefaultHost();
            if (s != null)
            {
                HttpHost httphost = new HttpHost(s, Proxy.getDefaultPort());
                getParams().setParameter("http.route.default-proxy", httphost);
            }
        }
        setHttpRequestRetryHandler(new DefaultHttpRequestRetryHandler(3, true));
        HttpConnectionParams.setConnectionTimeout(getParams(), 5000);
        HttpConnectionParams.setSoTimeout(getParams(), 5000);
    }
}
