// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.text.TextUtils;
import java.util.Map;
import org.apache.http.HttpHost;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
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

public class lu
{

    private static final String a = lu.getName();
    private static DefaultHttpClient b;

    public lu()
    {
    }

    public static Map a(Context context)
    {
        Uri uri;
        NetworkInfo networkinfo;
        uri = Uri.parse("content://telephony/carriers/preferapn");
        networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo == null || networkinfo.getType() != 0) goto _L2; else goto _L1
_L1:
        Cursor cursor1 = context.getContentResolver().query(uri, null, null, null, null);
        Cursor cursor = cursor1;
        if (cursor == null) goto _L4; else goto _L3
_L3:
        if (!cursor.moveToFirst()) goto _L4; else goto _L5
_L5:
        lv lv1 = new lv(cursor.getString(cursor.getColumnIndex("proxy")), cursor.getInt(cursor.getColumnIndex("port")), cursor.getString(cursor.getColumnIndex("user")), cursor.getString(cursor.getColumnIndex("password")));
        if (cursor != null)
        {
            cursor.close();
        }
        return lv1;
        Exception exception1;
        exception1;
        cursor = null;
_L8:
        exception1.printStackTrace();
        if (cursor != null)
        {
            cursor.close();
        }
_L2:
        return null;
        Exception exception;
        exception;
        cursor = null;
_L6:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
_L4:
        if (cursor != null)
        {
            cursor.close();
        }
          goto _L2
        exception;
          goto _L6
        exception1;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public static DefaultHttpClient a()
    {
        lu;
        JVM INSTR monitorenter ;
        if (b == null) goto _L2; else goto _L1
_L1:
        DefaultHttpClient defaulthttpclient = b;
_L4:
        lu;
        JVM INSTR monitorexit ;
        return defaulthttpclient;
_L2:
        SchemeRegistry schemeregistry = new SchemeRegistry();
        schemeregistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        schemeregistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
        BasicHttpParams basichttpparams = new BasicHttpParams();
        b = new DefaultHttpClient(new ThreadSafeClientConnManager(basichttpparams, schemeregistry), basichttpparams);
        HttpConnectionParams.setSoTimeout(b.getParams(), 30000);
        HttpConnectionParams.setConnectionTimeout(b.getParams(), 30000);
        b.getParams().setIntParameter("http.protocol.max-redirects", 10);
        HttpClientParams.setCookiePolicy(b.getParams(), "compatibility");
        HttpProtocolParams.setUserAgent(b.getParams(), "Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.18) Gecko/20110628 Ubuntu/10.04 (lucid) Firefox/3.6.18");
        b.setHttpRequestRetryHandler(new DefaultHttpRequestRetryHandler(3, true));
        defaulthttpclient = b;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public static void a(DefaultHttpClient defaulthttpclient, Map map)
    {
label0:
        {
label1:
            {
                if (map != null)
                {
                    int i;
                    String s;
                    String s1;
                    String s2;
                    if (map != null)
                    {
                        s = (String)map.get("host");
                        HttpHost httphost;
                        if (map.containsKey("port"))
                        {
                            i = ((Number)map.get("port")).intValue();
                        } else
                        {
                            i = -1;
                        }
                        s1 = (String)map.get("user");
                        s2 = (String)map.get("password");
                    } else
                    {
                        i = -1;
                        s = null;
                        s1 = null;
                        s2 = null;
                    }
                    if (TextUtils.isEmpty(s) || i <= 0)
                    {
                        break label0;
                    }
                    la.c(a, (new StringBuilder("connecting with proxy, addr:")).append(s).append(", port:").append(i).toString());
                    httphost = new HttpHost(s, i, "http");
                    defaulthttpclient.getParams().setParameter("http.route.default-proxy", httphost);
                    if (TextUtils.isEmpty(s1) || TextUtils.isEmpty(s2))
                    {
                        break label1;
                    }
                    defaulthttpclient.getCredentialsProvider().setCredentials(new AuthScope(s, i), new UsernamePasswordCredentials(s1, s2));
                }
                return;
            }
            defaulthttpclient.getCredentialsProvider().clear();
            return;
        }
        defaulthttpclient.getParams().setParameter("http.route.default-proxy", null);
        defaulthttpclient.getCredentialsProvider().clear();
    }

}
