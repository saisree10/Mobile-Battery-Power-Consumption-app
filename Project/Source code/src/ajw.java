// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.AsyncTask;
import android.os.RemoteException;
import android.text.TextUtils;
import com.dianxinos.powermanager.download.DownloadFileService;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;

public class ajw extends AsyncTask
{

    final DownloadFileService a;
    private volatile boolean b;
    private String c;
    private String d;
    private long e;
    private volatile long f;
    private ajy g;

    public ajw(DownloadFileService downloadfileservice, ajy ajy1)
    {
        a = downloadfileservice;
        super();
        g = ajy1;
    }

    protected transient Integer a(Object aobj[])
    {
        File file;
        BufferedOutputStream bufferedoutputstream;
        byte abyte0[];
        int i;
        URL url1;
        int j;
        BufferedInputStream bufferedinputstream;
        HttpURLConnection httpurlconnection;
        URL url3;
        c = (String)aobj[0];
        d = (String)aobj[1];
        e = ((Long)aobj[2]).longValue();
        f = ((Long)aobj[3]).longValue();
        if (!azx.b(a.getApplicationContext()))
        {
            return Integer.valueOf(0x30d43);
        }
        URL url;
        int l;
        String s;
        try
        {
            url = new URL(c);
        }
        catch (MalformedURLException malformedurlexception)
        {
            malformedurlexception.printStackTrace();
            return Integer.valueOf(0x30d44);
        }
        file = new File((new StringBuilder()).append(d).append(".tmp").toString());
        if (!file.exists())
        {
            try
            {
                f = 0L;
                file.createNewFile();
            }
            catch (IOException ioexception8)
            {
                ioexception8.printStackTrace();
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
        DownloadFileService.c((new StringBuilder()).append("last time have download: ").append(f).toString());
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
        url1 = url;
        j = 0;
        bufferedinputstream = null;
_L4:
        if (b || j >= 10)
        {
            break MISSING_BLOCK_LABEL_982;
        }
        httpurlconnection = (HttpURLConnection)url1.openConnection();
        if (e <= 0L)
        {
            e = httpurlconnection.getContentLength();
            httpurlconnection = (HttpURLConnection)url1.openConnection();
        }
        DownloadFileService.c((new StringBuilder()).append("file's total size: ").append(e).toString());
        httpurlconnection.setConnectTimeout(20000);
        httpurlconnection.setReadTimeout(20000);
        httpurlconnection.setRequestProperty("Range", (new StringBuilder()).append("bytes=").append(f).append("-").toString());
        l = httpurlconnection.getResponseCode();
        if (l != 301 && l != 302 && l != 303 && l != 307) goto _L2; else goto _L1
_L1:
        s = httpurlconnection.getHeaderField("Location");
        if (TextUtils.isEmpty(s)) goto _L2; else goto _L3
_L3:
        url3 = new URL(s);
        DownloadFileService.c((new StringBuilder()).append("redirect to ").append(s).toString());
        url1 = url3;
        break MISSING_BLOCK_LABEL_185;
        IOException ioexception3;
        ioexception3;
        URL url2 = url1;
_L14:
        ioexception3.printStackTrace();
        DownloadFileService.c((new StringBuilder()).append("catch exception when connect network: ").append(ioexception3.getClass().getName()).toString());
        j++;
        i = 0x30d48;
        url1 = url2;
          goto _L4
_L2:
        if (d.startsWith("/data"))
        {
            if (azu.b() <= e)
            {
                return Integer.valueOf(0x30d42);
            }
        } else
        {
            if (!azu.a())
            {
                return Integer.valueOf(0x30d41);
            }
            if (azu.c() <= e)
            {
                return Integer.valueOf(0x30d42);
            }
        }
        BufferedInputStream bufferedinputstream1 = new BufferedInputStream(httpurlconnection.getInputStream());
        int i1 = j;
_L12:
        if (b) goto _L6; else goto _L5
_L5:
        int k1 = bufferedinputstream1.read(abyte0);
        if (k1 != -1) goto _L8; else goto _L7
_L7:
        i = 0x186a1;
_L13:
        DownloadFileService.c((new StringBuilder()).append("this time have download size: ").append(f).toString());
        if (bufferedinputstream1 == null) goto _L10; else goto _L9
_L9:
        bufferedinputstream1.close();
        int k;
        k = i;
        break MISSING_BLOCK_LABEL_695;
        ioexception7;
        ioexception7.printStackTrace();
        DownloadFileService.c((new StringBuilder()).append("catch exception when get input stream: ").append(ioexception7.getClass().getName()).toString());
        j++;
        i = 0x30d49;
          goto _L4
        ioexception5;
        ioexception5.printStackTrace();
        DownloadFileService.c((new StringBuilder()).append("catch exception when reading input stream: ").append(ioexception5.getClass().getName()).toString());
        int j1 = i1 + 1;
        bufferedinputstream = bufferedinputstream1;
        i = 0x30d4a;
        j = j1;
          goto _L4
_L8:
        if (k1 <= 0) goto _L12; else goto _L11
_L11:
        bufferedoutputstream.write(abyte0, 0, k1);
        bufferedoutputstream.flush();
        f = f + (long)k1;
        Integer ainteger[] = new Integer[1];
        ainteger[0] = Integer.valueOf(k1);
        publishProgress(ainteger);
        i1 = 0;
          goto _L12
        ioexception6;
        ioexception6.printStackTrace();
        i = 0x30d4b;
          goto _L13
_L6:
        bufferedinputstream = bufferedinputstream1;
        j = i1;
          goto _L4
        ioexception2;
        ioexception2.printStackTrace();
        k = 0x30d4d;
_L15:
        IOException ioexception2;
        IOException ioexception5;
        IOException ioexception6;
        IOException ioexception7;
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
        IOException ioexception4;
        ioexception4;
        url2 = url3;
        ioexception3 = ioexception4;
          goto _L14
_L10:
        k = i;
          goto _L15
        bufferedinputstream1 = bufferedinputstream;
          goto _L13
    }

    protected void a(Integer integer)
    {
        super.onPostExecute(integer);
        DownloadFileService.a(a).remove(c);
        if (integer.intValue() != 0x186a2)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        if (g == null)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        g.b(c, f);
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
                    g.a(c, f);
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
            DownloadFileService.c((new StringBuilder()).append("download file failed, error code: ").append(integer).toString());
            if (g != null)
            {
                try
                {
                    g.a(c, integer.intValue(), f);
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

    protected Object doInBackground(Object aobj[])
    {
        return a(aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Integer)obj);
    }

    public void onPreExecute()
    {
        super.onPreExecute();
        if (g == null)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        g.a(c);
        return;
        RemoteException remoteexception;
        remoteexception;
        remoteexception.printStackTrace();
        return;
    }

    protected void onProgressUpdate(Object aobj[])
    {
        a((Integer[])aobj);
    }
}
