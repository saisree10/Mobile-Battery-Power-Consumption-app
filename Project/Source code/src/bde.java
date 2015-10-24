// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;

public interface bde
{

    public abstract HttpURLConnection a(String s);

    public abstract void a(OutputStream outputstream, byte abyte0[]);

    public abstract void a(HttpURLConnection httpurlconnection, bcz bcz, String s);

    public abstract boolean a(bdb bdb);

    public abstract byte[] a(InputStream inputstream);
}
