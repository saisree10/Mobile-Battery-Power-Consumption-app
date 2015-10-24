// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;

// Referenced classes of package com.tapjoy:
//            TapjoyLog, TapjoyHttpURLResponse, TapjoyUtil

public class TapjoyURLConnection
{

    private static final String TAG = "TapjoyURLConnection";
    public static final int TYPE_GET = 0;
    public static final int TYPE_POST = 1;
    public static boolean unitTestMode = false;

    public TapjoyURLConnection()
    {
    }

    public String getContentLength(String s)
    {
        String s3;
        String s2 = s.replaceAll(" ", "%20");
        TapjoyLog.i("TapjoyURLConnection", (new StringBuilder()).append("requestURL: ").append(s2).toString());
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL(s2)).openConnection();
        httpurlconnection.setConnectTimeout(15000);
        httpurlconnection.setReadTimeout(30000);
        s3 = httpurlconnection.getHeaderField("content-length");
        String s1 = s3;
_L2:
        TapjoyLog.i("TapjoyURLConnection", (new StringBuilder()).append("content-length: ").append(s1).toString());
        return s1;
        Exception exception;
        exception;
        TapjoyLog.e("TapjoyURLConnection", (new StringBuilder()).append("Exception: ").append(exception.toString()).toString());
        s1 = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public TapjoyHttpURLResponse getRedirectFromURL(String s)
    {
        return getResponseFromURL(s, "", 0, true);
    }

    public TapjoyHttpURLResponse getResponseFromURL(String s)
    {
        return getResponseFromURL(s, "", 0);
    }

    public TapjoyHttpURLResponse getResponseFromURL(String s, String s1)
    {
        return getResponseFromURL(s, s1, 0);
    }

    public TapjoyHttpURLResponse getResponseFromURL(String s, String s1, int i)
    {
        return getResponseFromURL(s, s1, i, false);
    }

    public TapjoyHttpURLResponse getResponseFromURL(String s, String s1, int i, boolean flag)
    {
        HttpURLConnection httpurlconnection;
        TapjoyHttpURLResponse tapjoyhttpurlresponse;
        httpurlconnection = null;
        tapjoyhttpurlresponse = new TapjoyHttpURLResponse();
        String s3;
        StringBuilder stringbuilder1;
        s3 = (new StringBuilder()).append(s).append(s1).toString();
        stringbuilder1 = (new StringBuilder()).append("http ");
        Exception exception;
        Exception exception1;
        BufferedReader bufferedreader;
        StringBuilder stringbuilder;
        String s2;
        String s4;
        boolean flag1;
        DefaultHttpClient defaulthttpclient;
        HttpResponse httpresponse;
        BufferedReader bufferedreader1;
        StringBuilder stringbuilder2;
        String s5;
        if (i == 0)
        {
            s4 = "get";
        } else
        {
            s4 = "post";
        }
        TapjoyLog.i("TapjoyURLConnection", stringbuilder1.append(s4).append(": ").append(s3).toString());
        flag1 = unitTestMode;
        httpurlconnection = null;
        if (!flag1) goto _L2; else goto _L1
_L1:
        defaulthttpclient = new DefaultHttpClient();
        httpurlconnection = null;
        if (i != 1) goto _L4; else goto _L3
_L3:
        httpresponse = defaulthttpclient.execute(new HttpPost(s3));
_L16:
        tapjoyhttpurlresponse.statusCode = httpresponse.getStatusLine().getStatusCode();
        bufferedreader1 = new BufferedReader(new InputStreamReader(httpresponse.getEntity().getContent()));
_L17:
        if (flag) goto _L6; else goto _L5
_L5:
        stringbuilder2 = new StringBuilder();
_L9:
        s5 = bufferedreader1.readLine();
        if (s5 == null) goto _L8; else goto _L7
_L7:
        stringbuilder2.append((new StringBuilder()).append(s5).append('\n').toString());
          goto _L9
        exception;
_L21:
        TapjoyLog.e("TapjoyURLConnection", (new StringBuilder()).append("Exception: ").append(exception.toString()).toString());
        if (httpurlconnection == null) goto _L11; else goto _L10
_L10:
        if (tapjoyhttpurlresponse.response != null) goto _L11; else goto _L12
_L12:
        bufferedreader = new BufferedReader(new InputStreamReader(httpurlconnection.getErrorStream()));
        stringbuilder = new StringBuilder();
_L15:
        s2 = bufferedreader.readLine();
        if (s2 == null) goto _L14; else goto _L13
_L13:
        stringbuilder.append((new StringBuilder()).append(s2).append('\n').toString());
          goto _L15
_L11:
        TapjoyLog.i("TapjoyURLConnection", "--------------------");
        TapjoyLog.i("TapjoyURLConnection", (new StringBuilder()).append("response status: ").append(tapjoyhttpurlresponse.statusCode).toString());
        TapjoyLog.i("TapjoyURLConnection", (new StringBuilder()).append("response size: ").append(tapjoyhttpurlresponse.contentLength).toString());
        TapjoyLog.v("TapjoyURLConnection", "response: ");
        TapjoyLog.v("TapjoyURLConnection", (new StringBuilder()).append("").append(tapjoyhttpurlresponse.response).toString());
        if (tapjoyhttpurlresponse.redirectURL != null && tapjoyhttpurlresponse.redirectURL.length() > 0)
        {
            TapjoyLog.i("TapjoyURLConnection", (new StringBuilder()).append("redirectURL: ").append(tapjoyhttpurlresponse.redirectURL).toString());
        }
        TapjoyLog.i("TapjoyURLConnection", "--------------------");
        return tapjoyhttpurlresponse;
_L4:
        httpresponse = defaulthttpclient.execute(new HttpGet(s3));
          goto _L16
_L2:
        HttpURLConnection httpurlconnection1 = (HttpURLConnection)(new URL(s3)).openConnection();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_582;
        }
        httpurlconnection1.setInstanceFollowRedirects(false);
        httpurlconnection1.setConnectTimeout(15000);
        httpurlconnection1.setReadTimeout(30000);
        if (i != 1)
        {
            break MISSING_BLOCK_LABEL_610;
        }
        httpurlconnection1.setRequestMethod("POST");
        httpurlconnection1.connect();
        tapjoyhttpurlresponse.statusCode = httpurlconnection1.getResponseCode();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_794;
        }
        BufferedReader bufferedreader2 = new BufferedReader(new InputStreamReader(httpurlconnection1.getInputStream()));
        bufferedreader1 = bufferedreader2;
        httpurlconnection = httpurlconnection1;
          goto _L17
_L8:
        tapjoyhttpurlresponse.response = stringbuilder2.toString();
_L6:
        String s6;
        if (tapjoyhttpurlresponse.statusCode == 302)
        {
            tapjoyhttpurlresponse.redirectURL = httpurlconnection.getHeaderField("Location");
        }
        s6 = httpurlconnection.getHeaderField("content-length");
        if (s6 == null) goto _L19; else goto _L18
_L18:
        tapjoyhttpurlresponse.contentLength = Integer.valueOf(s6).intValue();
_L19:
        if (bufferedreader1 == null) goto _L11; else goto _L20
_L20:
        bufferedreader1.close();
          goto _L11
        Exception exception2;
        exception2;
        TapjoyLog.e("TapjoyURLConnection", (new StringBuilder()).append("Exception: ").append(exception2.toString()).toString());
          goto _L19
_L14:
        try
        {
            tapjoyhttpurlresponse.response = stringbuilder.toString();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception1)
        {
            TapjoyLog.e("TapjoyURLConnection", (new StringBuilder()).append("Exception trying to get error code/content: ").append(exception1.toString()).toString());
        }
          goto _L11
        Exception exception3;
        exception3;
        httpurlconnection = httpurlconnection1;
        exception = exception3;
          goto _L21
        httpurlconnection = httpurlconnection1;
        bufferedreader1 = null;
          goto _L17
    }

    public TapjoyHttpURLResponse getResponseFromURL(String s, Map map)
    {
        return getResponseFromURL(s, TapjoyUtil.convertURLParams(map, false), 0);
    }

    public TapjoyHttpURLResponse getResponseFromURL(String s, Map map, int i)
    {
        return getResponseFromURL(s, TapjoyUtil.convertURLParams(map, false), i);
    }

}
