// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.AsyncTask;
import android.os.RemoteException;
import com.dianxinos.common.dxsplash.SplashDownloadFileService;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;

public class mw extends AsyncTask
{

    final SplashDownloadFileService a;
    private volatile boolean b;
    private String c;
    private String d;
    private long e;
    private volatile long f;
    private mm g;

    public mw(SplashDownloadFileService splashdownloadfileservice, mm mm1)
    {
        a = splashdownloadfileservice;
        super();
        g = mm1;
    }

    protected transient Integer a(Object aobj[])
    {
        URL url;
        File file;
        BufferedOutputStream bufferedoutputstream;
        byte abyte0[];
        int i;
        BufferedInputStream bufferedinputstream;
        int j;
        BufferedInputStream bufferedinputstream1;
        int k;
        c = (String)aobj[0];
        d = (String)aobj[1];
        e = ((Long)aobj[2]).longValue();
        f = ((Long)aobj[3]).longValue();
        if (!nd.a(a.getApplicationContext()))
        {
            return Integer.valueOf(0x30d43);
        }
        try
        {
            url = new URL(c);
        }
        catch (MalformedURLException malformedurlexception)
        {
            malformedurlexception.printStackTrace();
            return Integer.valueOf(0x30d44);
        }
        file = new File((new StringBuilder(String.valueOf(d))).append(".tmp").toString());
        if (!file.exists())
        {
            try
            {
                f = 0L;
                file.createNewFile();
            }
            catch (IOException ioexception7)
            {
                ioexception7.printStackTrace();
                return Integer.valueOf(0x30d45);
            }
        } else
        if (file.length() != f)
        {
            f = 0L;
            if (file.delete())
            {
                try
                {
                    file.createNewFile();
                }
                catch (IOException ioexception)
                {
                    ioexception.printStackTrace();
                    return Integer.valueOf(0x30d45);
                }
            } else
            {
                return Integer.valueOf(0x30d46);
            }
        }
        ms.a("DownloadFileService", (new StringBuilder("last time have download: ")).append(f).toString());
        try
        {
            bufferedoutputstream = new BufferedOutputStream(new FileOutputStream(file, true));
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            filenotfoundexception.printStackTrace();
            return Integer.valueOf(0x30d47);
        }
        abyte0 = new byte[32768];
        i = -1;
        bufferedinputstream = null;
        j = 0;
_L5:
        if (!b && j < 10) goto _L2; else goto _L1
_L1:
        bufferedinputstream1 = bufferedinputstream;
_L8:
        ms.a("DownloadFileService", (new StringBuilder("this time have download size: ")).append(f).toString());
        if (bufferedinputstream1 == null) goto _L4; else goto _L3
_L3:
        bufferedinputstream1.close();
        k = i;
        break MISSING_BLOCK_LABEL_237;
_L2:
        URLConnection urlconnection;
        URLConnection urlconnection1;
        urlconnection = url.openConnection();
        if (e > 0L)
        {
            break MISSING_BLOCK_LABEL_836;
        }
        e = urlconnection.getContentLength();
        urlconnection1 = url.openConnection();
_L12:
        ms.a("DownloadFileService", (new StringBuilder("file's total size: ")).append(e).toString());
        urlconnection1.setConnectTimeout(20000);
        urlconnection1.setReadTimeout(20000);
        urlconnection1.setRequestProperty("Range", (new StringBuilder("bytes=")).append(f).append("-").toString());
        IOException ioexception3;
        if (d.startsWith("/data"))
        {
            if (nd.a() <= e)
            {
                return Integer.valueOf(0x30d42);
            }
        } else
        {
            if (!nd.c())
            {
                return Integer.valueOf(0x30d41);
            }
            if (nd.b() <= e)
            {
                return Integer.valueOf(0x30d42);
            }
        }
        break MISSING_BLOCK_LABEL_555;
        ioexception3;
        ioexception3.printStackTrace();
        ms.a("DownloadFileService", (new StringBuilder("catch exception when connect network: ")).append(ioexception3.getClass().getName()).toString());
        j++;
        i = 0x30d48;
          goto _L5
        bufferedinputstream1 = new BufferedInputStream(urlconnection1.getInputStream());
_L10:
        if (!b)
        {
            break MISSING_BLOCK_LABEL_628;
        }
        bufferedinputstream = bufferedinputstream1;
          goto _L5
        ioexception6;
        ioexception6.printStackTrace();
        ms.a("DownloadFileService", (new StringBuilder("catch exception when get input stream: ")).append(ioexception6.getClass().getName()).toString());
        j++;
        i = 0x30d49;
          goto _L5
        l = bufferedinputstream1.read(abyte0);
        if (l != -1) goto _L7; else goto _L6
_L6:
        i = 0x186a1;
          goto _L8
        ioexception4;
        ioexception4.printStackTrace();
        ms.a("DownloadFileService", (new StringBuilder("catch exception when reading input stream: ")).append(ioexception4.getClass().getName()).toString());
        j++;
        i = 0x30d4a;
        bufferedinputstream = bufferedinputstream1;
          goto _L5
_L7:
        if (l <= 0) goto _L10; else goto _L9
_L9:
        bufferedoutputstream.write(abyte0, 0, l);
        bufferedoutputstream.flush();
        f = f + (long)l;
        Integer ainteger[] = new Integer[1];
        ainteger[0] = Integer.valueOf(l);
        publishProgress(ainteger);
        j = 0;
          goto _L10
        ioexception5;
        ioexception5.printStackTrace();
        i = 0x30d4b;
          goto _L8
        ioexception2;
        ioexception2.printStackTrace();
        k = 0x30d4d;
_L11:
        IOException ioexception2;
        IOException ioexception4;
        int l;
        IOException ioexception5;
        IOException ioexception6;
        if (bufferedoutputstream != null)
        {
            try
            {
                bufferedoutputstream.close();
            }
            catch (IOException ioexception1)
            {
                ioexception1.printStackTrace();
                k = 0x30d4c;
            }
        }
        if (b)
        {
            return Integer.valueOf(0x186a2);
        }
        if (k == 0x186a1)
        {
            file.renameTo(new File(d));
        }
        return Integer.valueOf(k);
_L4:
        k = i;
          goto _L11
        urlconnection1 = urlconnection;
          goto _L12
    }

    protected void a(Integer integer)
    {
        super.onPostExecute(integer);
        SplashDownloadFileService.a(a).remove(c);
        if (integer.intValue() != 0x186a2)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        if (g == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        g.b(f);
_L1:
        return;
        RemoteException remoteexception2;
        remoteexception2;
        remoteexception2.printStackTrace();
        return;
        if (integer.intValue() == 0x186a1)
        {
            if (g != null)
            {
                try
                {
                    g.a(f);
                    return;
                }
                catch (RemoteException remoteexception1)
                {
                    remoteexception1.printStackTrace();
                }
                return;
            }
        } else
        {
            ms.a("DownloadFileService", (new StringBuilder("download file failed, error code: ")).append(integer).toString());
            if (g != null)
            {
                try
                {
                    g.a(integer.intValue(), f);
                    return;
                }
                catch (RemoteException remoteexception)
                {
                    remoteexception.printStackTrace();
                }
                return;
            }
        }
          goto _L1
    }

    public void a(boolean flag)
    {
        b = flag;
    }

    protected transient void a(Integer ainteger[])
    {
        int i;
        super.onProgressUpdate(ainteger);
        i = ainteger[0].intValue();
        if (g == null || b)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        g.a(c, i, f, e);
        return;
        RemoteException remoteexception;
        remoteexception;
        remoteexception.printStackTrace();
        return;
    }

    protected transient Object doInBackground(Object aobj[])
    {
        return a((Object[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Integer)obj);
    }

    protected transient void onProgressUpdate(Object aobj[])
    {
        a((Integer[])aobj);
    }
}
