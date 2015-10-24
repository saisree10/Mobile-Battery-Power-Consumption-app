// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import javax.net.ssl.HttpsURLConnection;

public class bck extends bcw
{

    public bcq a;
    public boolean b;
    bcd c;

    public bck()
    {
        a = bcq.b;
        b = false;
        c = new bcd(this);
    }

    public HttpURLConnection a(String s)
    {
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL(s)).openConnection();
        if (httpurlconnection instanceof HttpsURLConnection)
        {
            ((HttpsURLConnection)httpurlconnection).setHostnameVerifier(c);
        }
        return httpurlconnection;
    }

    public boolean a(bdb bdb1)
    {
        bdc bdc1 = bdb1.a();
        bdb1.printStackTrace();
        if (bdc1 != null && bdc1.a() > 0)
        {
            return true;
        }
        if (b)
        {
            a = bcq.g;
        } else
        if (bdb1.getCause() instanceof UnknownHostException)
        {
            a = bcq.d;
        } else
        if (bdb1.getCause() instanceof SocketTimeoutException)
        {
            a = bcq.e;
        } else
        {
            a = bcq.c;
        }
        return false;
    }
}
