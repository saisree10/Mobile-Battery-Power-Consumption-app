// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;

public class bcd
    implements HostnameVerifier
{

    private bck a;

    public bcd(bck bck1)
    {
        a = bck1;
    }

    public boolean verify(String s, SSLSession sslsession)
    {
        boolean flag = true;
        if (!HttpsURLConnection.getDefaultHostnameVerifier().verify(s, sslsession))
        {
            a.b = flag;
            flag = false;
        }
        return flag;
    }
}
