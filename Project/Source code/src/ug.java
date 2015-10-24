// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnRouteParams;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

public class ug
{

    private static Uri a = Uri.parse("content://telephony/carriers/preferapn");
    private Context b;
    private String c;
    private String d;
    private HttpPost e;

    public ug(Context context, String s, String s1, String s2)
    {
        b = context;
        c = s1;
        d = s2;
        e = new HttpPost(s);
    }

    public static DefaultHttpClient a(Context context, HttpHost httphost, HttpParams httpparams)
    {
        if (httphost != null)
        {
            ConnRouteParams.setDefaultProxy(httpparams, httphost);
            a(context, httpparams);
        }
        HttpConnectionParams.setConnectionTimeout(httpparams, 60000);
        HttpConnectionParams.setSoTimeout(httpparams, 60000);
        return new DefaultHttpClient(httpparams);
    }

    public static DefaultHttpClient a(String s, Context context)
    {
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setStaleCheckingEnabled(basichttpparams, false);
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 60000);
        HttpConnectionParams.setSoTimeout(basichttpparams, 60000);
        HttpConnectionParams.setSocketBufferSize(basichttpparams, 8192);
        HttpClientParams.setRedirecting(basichttpparams, false);
        HttpProtocolParams.setUserAgent(basichttpparams, s);
        SchemeRegistry schemeregistry = new SchemeRegistry();
        schemeregistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        return new DefaultHttpClient(new ThreadSafeClientConnManager(basichttpparams, schemeregistry), basichttpparams);
    }

    public static final void a(Context context, HttpParams httpparams)
    {
        Cursor cursor1 = context.getContentResolver().query(a, null, null, null, null);
        Cursor cursor = cursor1;
        if (cursor == null) goto _L2; else goto _L1
_L1:
        boolean flag = cursor.moveToFirst();
        if (flag) goto _L3; else goto _L2
_L2:
        if (cursor != null)
        {
            cursor.close();
        }
_L5:
        return;
_L3:
        int i;
        int j;
        i = cursor.getColumnIndex("user");
        j = cursor.getColumnIndex("password");
        if (i >= 0 && j >= 0)
        {
            break MISSING_BLOCK_LABEL_88;
        }
        if (cursor == null) goto _L5; else goto _L4
_L4:
        cursor.close();
        return;
        String s;
        String s1;
        boolean flag1;
        s = cursor.getString(i);
        s1 = cursor.getString(j);
        if (!TextUtils.isEmpty(s))
        {
            break MISSING_BLOCK_LABEL_139;
        }
        flag1 = TextUtils.isEmpty(s1);
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        if (cursor == null) goto _L5; else goto _L6
_L6:
        cursor.close();
        return;
        String s2 = new String(bdi.a((new StringBuilder()).append(s).append(":").append(s1).toString().getBytes()));
        httpparams.setParameter("Proxy-Authorization", (new StringBuilder()).append(" Basic ").append(s2).toString());
        if (cursor == null) goto _L5; else goto _L7
_L7:
        cursor.close();
        return;
        Exception exception1;
        exception1;
        cursor = null;
_L11:
        Log.w("HttpPostHelper", exception1);
        if (cursor == null) goto _L5; else goto _L8
_L8:
        cursor.close();
        return;
        Exception exception;
        exception;
        cursor = null;
_L10:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        if (true) goto _L10; else goto _L9
_L9:
        exception1;
          goto _L11
    }

    public void a(String s, String s1)
    {
        try
        {
            e.addHeader(s, URLEncoder.encode(s1, "UTF-8"));
            return;
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            e.addHeader(s, s1);
        }
    }

    public boolean a(List list)
    {
        return a(list, ((List) (null)));
    }

    public boolean a(List list, List list1)
    {
        DefaultHttpClient defaulthttpclient = null;
        e.getParams().setParameter("http.protocol.content-charset", "UTF-8");
        defaulthttpclient = null;
        if (list1 != null) goto _L2; else goto _L1
_L1:
        e.setEntity(new UrlEncodedFormEntity(list, "UTF-8"));
_L9:
        boolean flag = ud.c;
        defaulthttpclient = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        Log.i(d, (new StringBuilder()).append("Try to post to ").append(e.getURI()).append(" with content length = ").append(e.getEntity().getContentLength()).toString());
        int i = -1;
        ConnectivityManager connectivitymanager = (ConnectivityManager)b.getSystemService("connectivity");
        if (connectivitymanager != null) goto _L4; else goto _L3
_L3:
        NetworkInfo networkinfo1 = null;
_L13:
        defaulthttpclient = null;
        if (networkinfo1 == null)
        {
            break MISSING_BLOCK_LABEL_546;
        }
        int j = networkinfo1.getType();
        defaulthttpclient = null;
        if (j == 1)
        {
            break MISSING_BLOCK_LABEL_546;
        }
        String s;
        s = Proxy.getHost(b);
        i = Proxy.getPort(b);
        Exception exception1;
        DefaultHttpClient defaulthttpclient1;
        NetworkInfo networkinfo;
        boolean flag1;
        DefaultHttpClient defaulthttpclient2;
        HttpResponse httpresponse;
        int l;
        if (s != null && i > 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
_L17:
        defaulthttpclient = null;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_231;
        }
        HttpHost httphost = new HttpHost(s, i);
        HttpParams httpparams = e.getParams();
        defaulthttpclient2 = a(b, httphost, httpparams);
        defaulthttpclient = defaulthttpclient2;
        if (defaulthttpclient != null)
        {
            break MISSING_BLOCK_LABEL_244;
        }
        defaulthttpclient = a(c, ((Context) (null)));
        httpresponse = defaulthttpclient.execute(e);
        if (httpresponse.getStatusLine() != null) goto _L6; else goto _L5
_L5:
        if (ud.d)
        {
            Log.e(d, "HTTPPost failed with no HTTP status code.");
        }
        if (defaulthttpclient != null)
        {
            defaulthttpclient.getConnectionManager().shutdown();
        }
_L12:
        return false;
_L2:
        if (list == null) goto _L8; else goto _L7
_L7:
        if (!list.isEmpty()) goto _L9; else goto _L8
_L8:
        l = list1.size();
        defaulthttpclient = null;
        if (l != 1) goto _L9; else goto _L10
_L10:
        e.setEntity(new ByteArrayEntity((byte[])((Pair)list1.get(0)).second));
          goto _L9
        exception1;
        defaulthttpclient1 = null;
_L16:
        if (ud.d)
        {
            Log.w(d, "HTTPPost failed with exception.", exception1);
        }
        if (defaulthttpclient1 == null) goto _L12; else goto _L11
_L11:
        defaulthttpclient1.getConnectionManager().shutdown();
        return false;
_L4:
        networkinfo = connectivitymanager.getActiveNetworkInfo();
        networkinfo1 = networkinfo;
          goto _L13
_L6:
        int k = httpresponse.getStatusLine().getStatusCode();
        if (k == 200)
        {
            break MISSING_BLOCK_LABEL_497;
        }
        if (ud.d)
        {
            Log.w(d, (new StringBuilder()).append("HTTPPost failed with HTTP status code: ").append(k).append(".").toString());
        }
        if (defaulthttpclient != null)
        {
            defaulthttpclient.getConnectionManager().shutdown();
            return false;
        }
          goto _L12
        if (defaulthttpclient != null)
        {
            defaulthttpclient.getConnectionManager().shutdown();
        }
        return true;
        Exception exception;
        exception;
_L15:
        if (defaulthttpclient != null)
        {
            defaulthttpclient.getConnectionManager().shutdown();
        }
        throw exception;
        exception;
        defaulthttpclient = defaulthttpclient1;
        if (true) goto _L15; else goto _L14
_L14:
        exception1;
        defaulthttpclient1 = defaulthttpclient;
          goto _L16
        flag1 = false;
        s = null;
          goto _L17
    }

}
