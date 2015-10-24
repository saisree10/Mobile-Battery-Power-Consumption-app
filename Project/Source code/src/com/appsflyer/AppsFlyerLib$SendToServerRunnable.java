// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.appsflyer;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.appsflyer:
//            AppsFlyerLib

class <init>
    implements Runnable
{

    Map a;
    private String b;
    private WeakReference c;

    private void a(URL url, String s)
    {
        Context context = (Context)c.get();
        HttpURLConnection httpurlconnection = (HttpURLConnection)url.openConnection();
        httpurlconnection.setRequestMethod("POST");
        int i = s.getBytes().length;
        httpurlconnection.setRequestProperty("Content-Length", (new StringBuilder()).append(i).append("").toString());
        httpurlconnection.setDoOutput(true);
        OutputStreamWriter outputstreamwriter = new OutputStreamWriter(httpurlconnection.getOutputStream());
        outputstreamwriter.write(s);
        outputstreamwriter.close();
        Log.i("AppsFlyer", (new StringBuilder()).append("response code: ").append(httpurlconnection.getResponseCode()).toString());
        AppsFlyerLib.a("response from server. status=", Integer.toString(httpurlconnection.getResponseCode()), context);
        if (httpurlconnection.getResponseCode() == 200 && c.get() != null)
        {
            SharedPreferences sharedpreferences = context.getSharedPreferences("appsflyer-data", 0);
            android.content.nit> nit> = sharedpreferences.edit();
            nit>.("sentSuccessfully", "true");
            nit>.("appsFlyerCount", 1 + sharedpreferences.getInt("appsFlyerCount", 1));
            nit>.();
        }
    }

    public void run()
    {
        boolean flag;
        Context context;
        boolean flag1;
        StringBuffer stringbuffer;
        String s3;
        String s4;
        flag = true;
        SharedPreferences sharedpreferences;
        String s;
        Map map;
        Iterator iterator;
        String s2;
        try
        {
            context = (Context)c.get();
        }
        catch (Throwable throwable)
        {
            Log.e("AppsFlyer", "", throwable);
            return;
        }
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_424;
        }
        sharedpreferences = context.getSharedPreferences("appsflyer-data", 0);
        s = sharedpreferences.getString("referrer", "");
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_83;
        }
        if (s.length() > 0 && a.get("referrer") == null)
        {
            a.put("referrer", s);
        }
        flag1 = "true".equals(sharedpreferences.getString("sentSuccessfully", ""));
        a.put("counter", Integer.toString(sharedpreferences.getInt("appsFlyerCount", 1)));
_L3:
        map = a;
        if (flag1)
        {
            flag = false;
        }
        map.put("isFirstCall", Boolean.toString(flag));
        stringbuffer = new StringBuffer();
        iterator = a.keySet().iterator();
_L1:
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_288;
        }
        s2 = (String)iterator.next();
        s3 = (String)a.get(s2);
        if (s3 != null)
        {
            break MISSING_BLOCK_LABEL_276;
        }
        s4 = "";
_L2:
        if (stringbuffer.length() > 0)
        {
            stringbuffer.append('&');
        }
        stringbuffer.append(s2).append('=').append(s4);
          goto _L1
        s4 = URLEncoder.encode(s3, "UTF-8");
          goto _L2
        String s1;
        URL url;
        s1 = stringbuffer.toString();
        url = new URL(b.toString());
        Log.i("AppsFlyer", (new StringBuilder()).append("url: ").append(b).toString());
        AppsFlyerLib.a("call server.", (new StringBuilder()).append("\n").append(b).append("\nPOST:").append(s1).toString(), context);
        try
        {
            a(url, s1);
            return;
        }
        catch (IOException ioexception) { }
        AppsFlyerLib.a("https failed. trying http....", "", context);
        a(new URL(b.replace("https:", "http:")), s1);
        return;
        flag1 = false;
          goto _L3
    }

    private (String s, Map map, Context context)
    {
        c = null;
        b = s;
        a = map;
        c = new WeakReference(context);
    }

    c(String s, Map map, Context context, c c1)
    {
        this(s, map, context);
    }
}
