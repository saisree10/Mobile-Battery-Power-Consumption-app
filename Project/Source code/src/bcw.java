// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public abstract class bcw
    implements bde
{

    private final bdf a;

    public bcw()
    {
        this(((bdf) (new bcx())));
    }

    public bcw(bdf bdf1)
    {
        a = bdf1;
    }

    public HttpURLConnection a(String s)
    {
        return (HttpURLConnection)(new URL(s)).openConnection();
    }

    public void a(OutputStream outputstream, byte abyte0[])
    {
        outputstream.write(abyte0);
    }

    public void a(HttpURLConnection httpurlconnection, bcz bcz1, String s)
    {
        httpurlconnection.setRequestMethod(bcz1.c());
        httpurlconnection.setDoOutput(bcz1.b());
        httpurlconnection.setDoInput(bcz1.a());
        if (s != null)
        {
            httpurlconnection.setRequestProperty("Content-Type", s);
        }
        httpurlconnection.setRequestProperty("Accept-Charset", "UTF-8");
    }

    public boolean a(bdb bdb1)
    {
        bdc bdc1 = bdb1.a();
        if (a.a())
        {
            a.a("BasicRequestHandler.onError got");
            bdb1.printStackTrace();
        }
        return bdc1 != null && bdc1.a() > 0;
    }

    public byte[] a(InputStream inputstream)
    {
        byte abyte0[] = new byte[16384];
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        do
        {
            int i = inputstream.read(abyte0);
            if (i != -1)
            {
                bytearrayoutputstream.write(abyte0, 0, i);
            } else
            {
                bytearrayoutputstream.flush();
                return bytearrayoutputstream.toByteArray();
            }
        } while (true);
    }
}
