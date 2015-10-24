// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.zip.GZIPInputStream;
import java.util.zip.InflaterInputStream;

public class mj
{

    private static final boolean a;
    private int b;
    private int c;

    private mj(int i, int j)
    {
        b = i;
        c = j;
    }

    private String a(HttpURLConnection httpurlconnection)
    {
        Object obj;
        String s1;
        String s = httpurlconnection.getContentEncoding();
        if (a)
        {
            ms.a("DxHttpClient", (new StringBuilder("response code: ")).append(httpurlconnection.getResponseCode()).append(", encoding: ").append(s).append(", method: ").append(httpurlconnection.getRequestMethod()).toString());
        }
        if (s != null && s.contains("gzip"))
        {
            obj = new GZIPInputStream(httpurlconnection.getInputStream());
        } else
        if (s != null && s.contains("deflate"))
        {
            obj = new InflaterInputStream(httpurlconnection.getInputStream());
        } else
        {
            obj = httpurlconnection.getInputStream();
        }
        if (obj != null) goto _L2; else goto _L1
_L1:
        s1 = "";
_L4:
        return s1;
_L2:
        s1 = new String(nd.a(((InputStream) (obj))));
        if (obj == null) goto _L4; else goto _L3
_L3:
        try
        {
            ((InputStream) (obj)).close();
        }
        catch (IOException ioexception)
        {
            ms.a("DxHttpClient", "Failed to close the target", ioexception);
            return s1;
        }
        return s1;
        Exception exception;
        exception;
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            catch (IOException ioexception1)
            {
                ms.a("DxHttpClient", "Failed to close the target", ioexception1);
            }
        }
        throw exception;
    }

    private HttpURLConnection a(Context context, String s, boolean flag, String s1)
    {
        HttpURLConnection httpurlconnection = nd.a(context, s);
        httpurlconnection.setConnectTimeout(b);
        httpurlconnection.setReadTimeout(c);
        httpurlconnection.setDoInput(true);
        httpurlconnection.setUseCaches(false);
        httpurlconnection.setRequestProperty("Accept-Encoding", "gzip,deflate");
        httpurlconnection.setRequestProperty("Charset", s1);
        if (flag)
        {
            httpurlconnection.setDoOutput(true);
            httpurlconnection.setRequestMethod("POST");
            return httpurlconnection;
        } else
        {
            httpurlconnection.setRequestMethod("GET");
            return httpurlconnection;
        }
    }

    public static mj a()
    {
        return new mj(20000, 20000);
    }

    public String a(Context context, String s, String s1)
    {
        HttpURLConnection httpurlconnection;
        httpurlconnection = a(context, s, false, s1);
        httpurlconnection.connect();
        String s2 = a(httpurlconnection);
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
        return s2;
        Exception exception;
        exception;
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
        throw exception;
    }

    static 
    {
        a = mi.a;
    }
}
