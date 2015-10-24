// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.InputStream;
import java.io.OutputStream;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

public abstract class bcs
{

    protected String a;
    protected bdf b;
    protected final bde c;
    protected int d;
    protected int e;
    private Map f;
    private boolean g;

    public bcs(String s, bde bde1)
    {
        a = "";
        b = new bcx();
        f = new TreeMap();
        d = 2000;
        e = 8000;
        a = s;
        c = bde1;
    }

    protected static void b()
    {
        if (CookieHandler.getDefault() == null)
        {
            CookieHandler.setDefault(new CookieManager());
        }
    }

    protected int a(HttpURLConnection httpurlconnection, byte abyte0[])
    {
        OutputStream outputstream = null;
        outputstream = httpurlconnection.getOutputStream();
        if (outputstream == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        c.a(outputstream, abyte0);
        int i = httpurlconnection.getResponseCode();
        Exception exception;
        Exception exception1;
        if (outputstream != null)
        {
            try
            {
                outputstream.close();
            }
            catch (Exception exception2)
            {
                return i;
            }
        }
        return i;
        exception;
        if (outputstream != null)
        {
            try
            {
                outputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception1) { }
        }
        throw exception;
    }

    public bcs a(String s, String s1)
    {
        f.put(s, s1);
        return this;
    }

    public bdc a(bda bda1)
    {
        bdc bdc1;
        try
        {
            bdc1 = a(bda1.a(), bda1.b(), bda1.c(), bda1.d());
        }
        catch (bdb bdb1)
        {
            c.a(bdb1);
            return null;
        }
        catch (Exception exception)
        {
            c.a(new bdb(exception, null));
            return null;
        }
        return bdc1;
    }

    protected bdc a(String s, bcz bcz, String s1, byte abyte0[])
    {
        bdc bdc1 = null;
        HttpURLConnection httpurlconnection1;
        g = false;
        httpurlconnection1 = a(s);
        HttpURLConnection httpurlconnection = httpurlconnection1;
        a(httpurlconnection, bcz, s1);
        String s2;
        for (Iterator iterator = f.keySet().iterator(); iterator.hasNext(); httpurlconnection.setRequestProperty(s2, (String)f.get(s2)))
        {
            s2 = (String)iterator.next();
        }

          goto _L1
        Exception exception6;
        exception6;
        Exception exception1 = exception6;
_L15:
        bdc bdc2 = b(httpurlconnection);
        bdc bdc3 = bdc2;
        if (bdc3 == null) goto _L3; else goto _L2
_L2:
        int k = bdc3.a();
        if (k <= 0) goto _L3; else goto _L4
_L4:
        if (b.a())
        {
            b.a(bdc3);
        }
        if (httpurlconnection == null) goto _L6; else goto _L5
_L5:
        httpurlconnection.disconnect();
_L6:
        return bdc3;
_L1:
        if (b.a())
        {
            b.a(httpurlconnection, abyte0);
        }
        httpurlconnection.connect();
        g = true;
        if (!httpurlconnection.getDoOutput() || abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_217;
        }
        a(httpurlconnection, abyte0);
        if (!httpurlconnection.getDoInput()) goto _L8; else goto _L7
_L7:
        bdc bdc4 = a(httpurlconnection);
        bdc3 = bdc4;
_L9:
        if (b.a())
        {
            b.a(bdc3);
        }
        if (httpurlconnection == null) goto _L6; else goto _L5
_L8:
        bdc3 = new bdc(httpurlconnection, null);
          goto _L9
        Exception exception3;
        exception3;
_L13:
        if (b.a())
        {
            b.a(bdc1);
        }
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
        throw exception3;
        Exception exception4;
        exception4;
        exception1.printStackTrace();
        if (true)
        {
            break MISSING_BLOCK_LABEL_440;
        }
        int j = null.a();
        if (j <= 0)
        {
            break MISSING_BLOCK_LABEL_440;
        }
        if (b.a())
        {
            b.a(null);
        }
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
_L11:
        return null;
        Exception exception2;
        exception2;
        if (true)
        {
            break; /* Loop/switch isn't completed */
        }
        int i = null.a();
        if (i <= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        if (b.a())
        {
            b.a(null);
        }
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
        if (true) goto _L11; else goto _L10
_L10:
        throw new bdb(exception1, null);
        throw new bdb(exception1, null);
_L3:
        throw new bdb(exception1, bdc3);
        Exception exception5;
        exception5;
        bdc1 = bdc3;
        exception3 = exception5;
        continue; /* Loop/switch isn't completed */
        exception3;
        bdc1 = null;
        httpurlconnection = null;
        if (true) goto _L13; else goto _L12
_L12:
        Exception exception;
        exception;
        exception1 = exception;
        httpurlconnection = null;
        if (true) goto _L15; else goto _L14
_L14:
    }

    public bdc a(String s, bdd bdd1)
    {
        return a(((bda) (new bcy(s, bdd1))));
    }

    protected bdc a(HttpURLConnection httpurlconnection)
    {
        InputStream inputstream1 = httpurlconnection.getInputStream();
        InputStream inputstream;
        byte abyte0[];
        inputstream = inputstream1;
        abyte0 = null;
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        abyte0 = c.a(inputstream);
        bdc bdc1 = new bdc(httpurlconnection, abyte0);
        Exception exception;
        Exception exception1;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (Exception exception2)
            {
                return bdc1;
            }
        }
        return bdc1;
        exception;
        inputstream = null;
_L2:
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception1) { }
        }
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public bdd a()
    {
        return new bdd();
    }

    protected HttpURLConnection a(String s)
    {
        String s1 = (new StringBuilder()).append(a).append(s).toString();
        try
        {
            new URL(s1);
        }
        catch (MalformedURLException malformedurlexception)
        {
            throw new IllegalArgumentException((new StringBuilder()).append(s1).append(" is not a valid URL").toString(), malformedurlexception);
        }
        return c.a(s1);
    }

    public void a(int i)
    {
        d = i;
    }

    public void a(bdf bdf1)
    {
        b = bdf1;
    }

    protected void a(HttpURLConnection httpurlconnection, bcz bcz, String s)
    {
        httpurlconnection.setConnectTimeout(d);
        httpurlconnection.setReadTimeout(e);
        c.a(httpurlconnection, bcz, s);
    }

    protected bdc b(HttpURLConnection httpurlconnection)
    {
        InputStream inputstream1 = httpurlconnection.getErrorStream();
        InputStream inputstream;
        byte abyte0[];
        inputstream = inputstream1;
        abyte0 = null;
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        abyte0 = c.a(inputstream);
        bdc bdc1 = new bdc(httpurlconnection, abyte0);
        Exception exception;
        Exception exception1;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (Exception exception2)
            {
                return bdc1;
            }
        }
        return bdc1;
        exception;
        inputstream = null;
_L2:
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception1) { }
        }
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void b(int i)
    {
        e = i;
    }

    static 
    {
        b();
    }
}
