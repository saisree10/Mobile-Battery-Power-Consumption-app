// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.dianxinos.appupdate.DownloadService;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.SyncFailedException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class jd extends Thread
{

    private static final boolean a;
    private ka b;
    private Context c;
    private iy d;
    private jw e;
    private boolean f;
    private long g;
    private long h;
    private boolean i;
    private List j;
    private String k;

    public jd(Context context, jw jw1, iy iy1, boolean flag)
    {
        f = false;
        j = new ArrayList();
        k = null;
        c = context;
        e = jw1;
        d = iy1;
        b = ka.a(c);
        i = flag;
        k = d.a;
    }

    private int a(int l)
    {
        if (a)
        {
            Log.d("DownloadThread", (new StringBuilder()).append("Converting download status, status:").append(l).toString());
        }
        switch (l)
        {
        default:
            return 0;

        case 200: 
            return -1;

        case 193: 
        case 490: 
            return 1;

        case 492: 
            return 4;

        case 499: 
            return 5;

        case 195: 
            return 3;

        case 194: 
            return 2;

        case 498: 
            return 6;

        case 493: 
        case 494: 
        case 495: 
        case 497: 
        case 503: 
            return 7;

        case 500: 
            return 8;

        case 197: 
            return 9;
        }
    }

    static Context a(jd jd1)
    {
        return jd1.c;
    }

    private InputStream a(jh jh1, HttpResponse httpresponse)
    {
        InputStream inputstream;
        try
        {
            inputstream = httpresponse.getEntity().getContent();
        }
        catch (IOException ioexception)
        {
            d();
            a(jh1, (new StringBuilder()).append("while getting entity: ").append(ioexception.toString()).toString(), ((Exception) (ioexception)));
            return null;
        }
        return inputstream;
    }

    static String a(String s)
    {
        return b(s);
    }

    private void a(String s, long l, long l1)
    {
        if (!i && b.b())
        {
            i = true;
        }
        if (!i && !b.b())
        {
            return;
        }
        List list = j;
        list;
        JVM INSTR monitorenter ;
        for (Iterator iterator = j.iterator(); iterator.hasNext(); ((iz)iterator.next()).a(c, s, l, l1)) { }
        break MISSING_BLOCK_LABEL_104;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
    }

    private void a(jf jf1, HttpGet httpget)
    {
        if (jf1.d)
        {
            if (jf1.c != null)
            {
                httpget.addHeader("If-Match", jf1.c);
            }
            httpget.addHeader("Range", (new StringBuilder()).append("bytes=").append(jf1.a).append("-").toString());
        }
    }

    private void a(jh jh1)
    {
        int l = d.a();
        if (l != 1)
        {
            char c1 = '\303';
            if (l == 5)
            {
                c1 = '\305';
            }
            throw new ji(this, c1, d.a(l));
        } else
        {
            return;
        }
    }

    private void a(jh jh1, int l)
    {
        e(jh1);
        if (jh1.a != null && l == 489)
        {
            (new File(jh1.a)).delete();
        }
    }

    private void a(jh jh1, String s, Exception exception)
    {
        int l = g(jh1);
        if (l == 194)
        {
            throw new jg(this, null);
        }
        if (exception == null)
        {
            throw new ji(this, l, s);
        } else
        {
            throw new ji(this, l, s, exception);
        }
    }

    private void a(jh jh1, jf jf1)
    {
        boolean flag = true;
        boolean flag1;
        if (!TextUtils.isEmpty(jf1.e) && jf1.b != (long)Integer.parseInt(jf1.e) || d.j > 0L && d.j != (long)jf1.a)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (a)
        {
            StringBuilder stringbuilder = (new StringBuilder()).append("handle end of stream, excepted size:").append(jf1.e).append(", byte transferred:").append(jf1.b).append(", total bytes:").append(d.j).append(", bytesSoFar:").append(jf1.a).append(", matches:");
            if (flag1)
            {
                flag = false;
            }
            Log.w("DownloadThread", stringbuilder.append(flag).toString());
        }
        if (flag1)
        {
            if (a(jf1))
            {
                throw new ji(this, 489, "mismatched content length");
            }
            a(jh1, "closed socket before end of file", ((Exception) (null)));
        }
    }

    private void a(jh jh1, jf jf1, int l)
    {
        int i1;
        if (jc.a(l))
        {
            i1 = l;
        } else
        if (l >= 300 && l < 400)
        {
            i1 = 493;
        } else
        if (jf1.d && l == 200)
        {
            i1 = 489;
        } else
        {
            i1 = 494;
        }
        throw new ji(this, i1, (new StringBuilder()).append("http error ").append(l).toString());
    }

    private void a(jh jh1, jf jf1, HttpResponse httpresponse)
    {
        b(jh1, jf1, httpresponse);
        int l;
        try
        {
            l = d.e;
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            throw new ji(this, 492, (new StringBuilder()).append("while opening destination file: ").append(filenotfoundexception.toString()).toString(), filenotfoundexception);
        }
        l;
        JVM INSTR lookupswitch 2: default 44
    //                   0: 162
    //                   5: 101;
           goto _L1 _L2 _L3
_L1:
        break; /* Loop/switch isn't completed */
_L2:
        break MISSING_BLOCK_LABEL_162;
_L4:
        if (a)
        {
            Log.v("DownloadThread", (new StringBuilder()).append("writing ").append(d.a).append(" to ").append(jh1.a).toString());
        }
        a(jh1);
        return;
_L3:
        jh1.c = c.openFileOutput(jh1.b, 32769);
          goto _L4
        jh1.c = new FileOutputStream(jh1.a, true);
          goto _L4
    }

    private void a(jh jh1, jf jf1, HttpGet httpget)
    {
        if (TextUtils.isEmpty(jh1.a)) goto _L2; else goto _L1
_L1:
        File file;
        if (!ix.b(jh1.a))
        {
            throw new ji(this, 492, "found invalid internal destination filename");
        }
        jf1.b = 0L;
        file = new File(jh1.a);
        if (!file.exists()) goto _L4; else goto _L3
_L3:
        long l = file.length();
        if (l != 0L) goto _L6; else goto _L5
_L5:
        file.delete();
        if (a)
        {
            Log.w("DownloadThread", "Obsoleted file deleted");
        }
_L2:
        if (jh1.c != null)
        {
            e(jh1);
        }
        if (!jf1.d && jh1.j.equals(k))
        {
            ka.a(c).a("sdl");
        }
        return;
_L6:
        boolean flag1;
        if (d.k == null && !d.b)
        {
            file.delete();
            if (a)
            {
                Log.w("DownloadThread", "Download cannot be resumed");
            }
            throw new ji(this, 489, "Trying to resume a download that can't be resumed");
        }
        if (TextUtils.isEmpty(d.l) && file.delete())
        {
            l = 0L;
        }
        int i1;
        int j1;
        boolean flag2;
        String s;
        boolean flag4;
        try
        {
            jh1.c = new FileOutputStream(jh1.a, true);
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            throw new ji(this, 492, (new StringBuilder()).append("while opening destination for resuming: ").append(filenotfoundexception.toString()).toString(), filenotfoundexception);
        }
        i1 = l != d.j;
        flag1 = false;
        if (i1 != 0)
        {
            break MISSING_BLOCK_LABEL_345;
        }
        j1 = d.j != 0L;
        flag1 = false;
        if (j1 <= 0)
        {
            break MISSING_BLOCK_LABEL_345;
        }
        flag2 = TextUtils.isEmpty(d.l);
        flag1 = false;
        if (flag2)
        {
            break MISSING_BLOCK_LABEL_345;
        }
        s = iw.a(file);
        flag4 = d.l.equals(s);
        flag1 = false;
        if (!flag4)
        {
            break MISSING_BLOCK_LABEL_345;
        }
        if (a)
        {
            Log.i("DownloadThread", "Download already finished");
        }
        flag1 = true;
_L8:
        if (flag1)
        {
            throw new ji(this, 200, "Download already finished");
        }
        break; /* Loop/switch isn't completed */
        FileNotFoundException filenotfoundexception1;
        filenotfoundexception1;
        boolean flag3;
        FileNotFoundException filenotfoundexception2;
        flag3 = false;
        filenotfoundexception2 = filenotfoundexception1;
_L9:
        filenotfoundexception2.printStackTrace();
        flag1 = flag3;
        if (true) goto _L8; else goto _L7
_L7:
        jf1.a = (int)l;
        g = l;
        if (a)
        {
            Log.d("DownloadThread", (new StringBuilder()).append("get file length:").append(l).toString());
        }
        jf1.c = d.k;
        jf1.d = true;
        if (a)
        {
            Log.d("DownloadThread", (new StringBuilder()).append("Download resumed from ").append(jf1.a).toString());
        }
          goto _L2
_L4:
        File file1 = file.getParentFile();
        if (file1 != null && (!file1.exists() || !file1.isDirectory()))
        {
            boolean flag = file1.mkdirs();
            if (a)
            {
                Log.d("DownloadThread", (new StringBuilder()).append("Dowload parent file created, success:").append(flag).toString());
            }
        }
          goto _L2
        filenotfoundexception2;
        flag3 = true;
          goto _L9
    }

    private void a(jh jh1, jf jf1, boolean flag)
    {
        long l = e.a();
        g = jf1.a;
        if (jf1.a - jf1.h > 4096 && l - jf1.i > 1500L || flag)
        {
            jf1.h = jf1.a;
            jf1.i = l;
            a(jf1.a);
        }
    }

    private void a(jh jh1, jf jf1, byte abyte0[], InputStream inputstream)
    {
        do
        {
            int l = b(jh1, jf1, abyte0, inputstream);
            if (l == -1)
            {
                a(jh1, jf1, true);
                a(jh1, jf1);
                return;
            }
            jh1.i = true;
            a(jh1, abyte0, l);
            jf1.a = l + jf1.a;
            jf1.b = jf1.b + (long)l;
            h = h + (long)l;
            a(jh1, jf1, false);
            f(jh1);
        } while (d.j <= 0L || (long)jf1.a <= d.j);
        if (a)
        {
            Log.w("DownloadThread", "File size exceeds");
        }
        a(jh1, 489);
        if (f)
        {
            throw new ji(this, 495, "File size exceeds");
        } else
        {
            f = true;
            throw new jg(this, null);
        }
    }

    private void a(jh jh1, HttpResponse httpresponse, int l)
    {
        if (a)
        {
            Log.v("DownloadThread", (new StringBuilder()).append("got HTTP redirect ").append(l).toString());
        }
        if (jh1.g >= 5)
        {
            throw new ji(this, 497, "too many redirects");
        }
        Header header = httpresponse.getFirstHeader("Location");
        if (header == null)
        {
            return;
        }
        if (a)
        {
            Log.v("DownloadThread", (new StringBuilder()).append("Location :").append(header.getValue()).toString());
        }
        String s;
        try
        {
            s = (new URI(d.a)).resolve(new URI(header.getValue())).toString();
        }
        catch (URISyntaxException urisyntaxexception)
        {
            if (a)
            {
                Log.d("DownloadThread", (new StringBuilder()).append("Couldn't resolve redirect URI ").append(header.getValue()).append(" for ").append(d.a).toString());
            }
            throw new ji(this, 495, "Couldn't resolve redirect URI");
        }
        jh1.g = 1 + jh1.g;
        jh1.j = s;
        if (l == 301 || l == 303)
        {
            jh1.h = s;
        }
        throw new jg(this, null);
    }

    private void a(jh jh1, HttpClient httpclient, HttpGet httpget)
    {
        jf jf1 = new jf(null);
        byte abyte0[] = new byte[4096];
        a(jh1, jf1, httpget);
        f(jh1);
        a(jf1, httpget);
        a(jh1);
        HttpResponse httpresponse = b(jh1, httpclient, httpget);
        f(jh1);
        c(jh1, jf1, httpresponse);
        if (a)
        {
            Log.v("DownloadThread", (new StringBuilder()).append("received response for ").append(httpget.getURI()).append(", status:").append(httpresponse.getStatusLine().getStatusCode()).toString());
        }
        a(jh1, jf1, httpresponse);
        if (d.f == 1)
        {
            if (a)
            {
                Log.i("DownloadThread", "Download paused");
            }
            throw new ji(this, 193, "Dowload paused after before start receive data");
        } else
        {
            a(jh1.a, jf1.a, d.j);
            a(jh1, jf1, abyte0, a(jh1, httpresponse));
            return;
        }
    }

    private void a(jh jh1, byte abyte0[], int l)
    {
        try
        {
            if (jh1.c == null)
            {
                jh1.c = new FileOutputStream(jh1.a, true);
            }
            jh1.c.write(abyte0, 0, l);
            jh1.c.flush();
            return;
        }
        catch (IOException ioexception)
        {
            if (!ix.a())
            {
                throw new ji(this, 499, "external media not mounted while writing destination file");
            }
            if (ix.a(ix.a(jh1.a)) < (long)l)
            {
                throw new ji(this, 498, "insufficient space while writing destination file", ioexception);
            } else
            {
                throw new ji(this, 492, (new StringBuilder()).append("while writing destination file: ").append(ioexception.toString()).toString(), ioexception);
            }
        }
    }

    private boolean a(jf jf1)
    {
        return jf1.a > 0 && !d.b && jf1.c == null;
    }

    private int b(jh jh1, jf jf1, byte abyte0[], InputStream inputstream)
    {
        int l;
        try
        {
            l = inputstream.read(abyte0);
        }
        catch (IOException ioexception)
        {
            d();
            if (a(jf1))
            {
                throw new ji(this, 489, (new StringBuilder()).append("while reading response: ").append(ioexception.toString()).append(", can't resume interrupted download with no ETag").toString(), ioexception);
            } else
            {
                a(jh1, (new StringBuilder()).append("while reading response: ").append(ioexception.toString()).toString(), ioexception);
                return -1;
            }
        }
        return l;
    }

    private String b()
    {
        String s = d.i;
        if (s == null);
        if (s == null)
        {
            s = "Appupdate model";
        }
        return s;
    }

    private static String b(String s)
    {
        String s1;
        int l;
        String s2;
        try
        {
            s1 = s.trim().toLowerCase(Locale.ENGLISH);
            l = s1.indexOf(';');
        }
        catch (NullPointerException nullpointerexception)
        {
            return null;
        }
        if (l == -1)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        s2 = s1.substring(0, l);
        s1 = s2;
        return s1;
    }

    private HttpResponse b(jh jh1, HttpClient httpclient, HttpGet httpget)
    {
        HttpResponse httpresponse;
        try
        {
            httpresponse = httpclient.execute(httpget);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw new ji(this, 495, (new StringBuilder()).append("while trying to execute request: ").append(illegalargumentexception.toString()).toString(), illegalargumentexception);
        }
        catch (Exception exception)
        {
            d();
            a(jh1, (new StringBuilder()).append("while trying to execute request: ").append(exception.toString()).toString(), exception);
            return null;
        }
        return httpresponse;
    }

    private void b(jh jh1)
    {
        if (d(jh1))
        {
            Log.e("DownloadThread", "Drm file, not supported at present");
            return;
        } else
        {
            c(jh1);
            return;
        }
    }

    private void b(jh jh1, jf jf1, HttpResponse httpresponse)
    {
        Header header = httpresponse.getFirstHeader("Content-Disposition");
        if (header != null)
        {
            jf1.f = header.getValue();
        }
        Header header1 = httpresponse.getFirstHeader("Content-Location");
        if (header1 != null)
        {
            jf1.g = header1.getValue();
        }
        if (jh1.d == null)
        {
            Header header5 = httpresponse.getFirstHeader("Content-Type");
            if (header5 != null)
            {
                jh1.d = b(header5.getValue());
            }
        }
        Header header2 = httpresponse.getFirstHeader("ETag");
        if (header2 != null)
        {
            jf1.c = header2.getValue();
        }
        Header header3 = httpresponse.getFirstHeader("Transfer-Encoding");
        String s = null;
        if (header3 != null)
        {
            s = header3.getValue();
        }
        boolean flag;
        if (s == null)
        {
            Header header4 = httpresponse.getFirstHeader("Content-Length");
            if (header4 != null)
            {
                jf1.e = header4.getValue();
                if (d.j <= 0L)
                {
                    d.j = Long.parseLong(jf1.e);
                }
            }
            if (a)
            {
                Log.d("DownloadThread", (new StringBuilder()).append("Content-length:").append(header4.getValue()).toString());
            }
        } else
        if (a)
        {
            Log.v("DownloadThread", "ignoring content-length because of xfer-encoding");
        }
        if (a)
        {
            Log.v("DownloadThread", (new StringBuilder()).append("Content-Disposition: ").append(jf1.f).toString());
            Log.v("DownloadThread", (new StringBuilder()).append("Content-Length: ").append(jf1.e).toString());
            Log.v("DownloadThread", (new StringBuilder()).append("Content-Location: ").append(jf1.g).toString());
            Log.v("DownloadThread", (new StringBuilder()).append("Content-Type: ").append(jh1.d).toString());
            Log.v("DownloadThread", (new StringBuilder()).append("ETag: ").append(jf1.c).toString());
            Log.v("DownloadThread", (new StringBuilder()).append("Transfer-Encoding: ").append(s).toString());
        }
        if (jf1.e == null && (s == null || !s.equalsIgnoreCase("chunked")))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!d.b && flag)
        {
            throw new ji(this, 495, "can't know size of download, giving up");
        } else
        {
            return;
        }
    }

    private void b(jh jh1, HttpResponse httpresponse)
    {
        Header header;
        if (a)
        {
            Log.v("DownloadThread", "got HTTP response code 503");
        }
        jh1.e = true;
        header = httpresponse.getFirstHeader("Retry-After");
        if (header == null) goto _L2; else goto _L1
_L1:
        if (a)
        {
            Log.v("DownloadThread", (new StringBuilder()).append("Retry-After :").append(header.getValue()).toString());
        }
        jh1.f = Integer.parseInt(header.getValue());
        if (jh1.f >= 0) goto _L4; else goto _L3
_L3:
        jh1.f = 0;
_L2:
        throw new ji(this, 503, "got 503 Service Unavailable, will retry later");
_L4:
        if (jh1.f >= 30) goto _L6; else goto _L5
_L5:
        jh1.f = 30;
_L8:
        jh1.f = jh1.f + ix.a.nextInt(31);
        jh1.f = 1000 * jh1.f;
        continue; /* Loop/switch isn't completed */
_L6:
        if (jh1.f <= 0x15180) goto _L8; else goto _L7
_L7:
        jh1.f = 0x15180;
          goto _L8
        NumberFormatException numberformatexception;
        numberformatexception;
        if (true) goto _L2; else goto _L9
_L9:
    }

    private void c()
    {
        jh jh1;
        int l;
        Process.setThreadPriority(10);
        jh1 = new jh(this, d);
        l = 491;
        DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
        HttpConnectionParams.setSoTimeout(defaulthttpclient.getParams(), 60000);
        boolean flag9 = false;
        h = 0L;
_L7:
        if (flag9) goto _L2; else goto _L1
_L1:
        jx jx1 = e.g();
        int k2;
        String s3;
        String s4;
        String s5;
        k2 = -1;
        s3 = null;
        s4 = null;
        s5 = null;
        if (jx1 == null)
        {
            break MISSING_BLOCK_LABEL_109;
        }
        s5 = jx1.a;
        k2 = jx1.b;
        s4 = jx1.c;
        s3 = jx1.d;
        if (TextUtils.isEmpty(s5) || k2 <= 0) goto _L4; else goto _L3
_L3:
        if (a)
        {
            Log.i("DownloadThread", (new StringBuilder()).append("Connecting with proxy, addr:").append(s5).append(":").append(k2).append(", user:").append(s4).append(", pass:").append(s3).toString());
        }
        HttpHost httphost = new HttpHost(s5, k2, "http");
        defaulthttpclient.getParams().setParameter("http.route.default-proxy", httphost);
        if (TextUtils.isEmpty(s4) || TextUtils.isEmpty(s3)) goto _L6; else goto _L5
_L5:
        defaulthttpclient.getCredentialsProvider().setCredentials(new AuthScope(s5, k2), new UsernamePasswordCredentials(s4, s3));
_L8:
        HttpGet httpget;
        ArrayList arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("tk", gx.a(c)));
        String s6 = URLEncodedUtils.format(arraylist, "UTF-8");
        httpget = new HttpGet((new StringBuilder()).append(jh1.j).append("?").append(s6).toString());
        httpget.setHeader("User-Agent", b());
        a(jh1, defaulthttpclient, httpget);
        flag9 = true;
        httpget.abort();
          goto _L7
        ji ji1;
        ji1;
_L20:
        l = ji1.a;
        ji1.printStackTrace();
        Exception exception1;
        Throwable throwable;
        char c1;
        int l2;
        if (defaulthttpclient == null);
        a(jh1, l);
        int i2 = a(l);
        if (i2 == -1)
        {
            jo.b(c, "pref-archive-dspt", d.n);
            jo.b(c, "pref-archive-extra", d.o);
            jo.b(c, "pref-archive-pri", d.m);
            jo.b(c, "pref-archive-time", System.currentTimeMillis());
        }
        boolean flag6;
        boolean flag7;
        if (i2 == 2 || i2 == 3)
        {
            flag6 = true;
        } else
        {
            flag6 = false;
        }
        if (flag6)
        {
            int j2 = 1 + jo.a(c, "pref-retry-count", 0);
            jo.b(c, "pref-retry-count", j2);
            Exception exception;
            int i1;
            boolean flag;
            String s;
            boolean flag1;
            ka ka1;
            HashMap hashmap;
            int j1;
            byte byte0;
            Context context;
            boolean flag2;
            int k1;
            String s1;
            iy iy1;
            ka ka2;
            HashMap hashmap1;
            int l1;
            Context context1;
            String s2;
            ka ka3;
            HashMap hashmap2;
            byte byte2;
            Context context2;
            boolean flag8;
            Exception exception2;
            jg jg1;
            iy iy2;
            File file;
            int i3;
            String s7;
            ka ka4;
            HashMap hashmap3;
            int j3;
            Context context3;
            String s8;
            if (j2 > it.b)
            {
                byte2 = 10;
            } else
            {
                byte2 = 2;
            }
            context2 = c;
            if (byte2 == 2)
            {
                flag8 = true;
            } else
            {
                flag8 = false;
            }
            jo.b(context2, "pref-need-redownload", flag8);
            i2 = byte2;
        } else
        {
            jo.b(c, "pref-need-redownload", false);
        }
        jo.b(c, "pref-last-progress-enable", i);
        if (i2 != -1 && i2 != 2)
        {
            ka3 = ka.a(c);
            hashmap2 = new HashMap();
            hashmap2.put("errorcode", String.valueOf(i2));
            if (i2 == 7)
            {
                hashmap2.put("statuscode", String.valueOf(l));
            }
            ka3.a("fail", hashmap2);
        }
        s2 = jh1.a;
        if (i2 == -1)
        {
            flag7 = true;
        } else
        {
            flag7 = false;
        }
        a(s2, flag7, jh1.f, jh1.h, i2);
        iy1 = d;
        iy1.q = false;
        return;
_L6:
        defaulthttpclient.getCredentialsProvider().clear();
          goto _L8
        throwable;
_L19:
        l = 491;
        throwable.printStackTrace();
        if (defaulthttpclient == null);
        a(jh1, l);
        k1 = a(l);
        if (k1 == -1)
        {
            jo.b(c, "pref-archive-dspt", d.n);
            jo.b(c, "pref-archive-extra", d.o);
            jo.b(c, "pref-archive-pri", d.m);
            jo.b(c, "pref-archive-time", System.currentTimeMillis());
        }
        boolean flag3;
        boolean flag4;
        if (k1 == 2 || k1 == 3)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        if (flag3)
        {
            l1 = 1 + jo.a(c, "pref-retry-count", 0);
            jo.b(c, "pref-retry-count", l1);
            byte byte1;
            boolean flag5;
            if (l1 > it.b)
            {
                byte1 = 10;
            } else
            {
                byte1 = 2;
            }
            context1 = c;
            if (byte1 == 2)
            {
                flag5 = true;
            } else
            {
                flag5 = false;
            }
            jo.b(context1, "pref-need-redownload", flag5);
            k1 = byte1;
        } else
        {
            jo.b(c, "pref-need-redownload", false);
        }
        jo.b(c, "pref-last-progress-enable", i);
        if (k1 != -1 && k1 != 2)
        {
            ka2 = ka.a(c);
            hashmap1 = new HashMap();
            hashmap1.put("errorcode", String.valueOf(k1));
            if (k1 == 7)
            {
                hashmap1.put("statuscode", String.valueOf(l));
            }
            ka2.a("fail", hashmap1);
        }
        s1 = jh1.a;
        if (k1 == -1)
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        a(s1, flag4, jh1.f, jh1.h, k1);
        iy1 = d;
        break MISSING_BLOCK_LABEL_697;
_L4:
        defaulthttpclient.getParams().setParameter("http.route.default-proxy", null);
        defaulthttpclient.getCredentialsProvider().clear();
          goto _L8
        exception;
        exception1 = exception;
_L18:
        if (defaulthttpclient == null);
        a(jh1, l);
        i1 = a(l);
        if (i1 == -1)
        {
            jo.b(c, "pref-archive-dspt", d.n);
            jo.b(c, "pref-archive-extra", d.o);
            jo.b(c, "pref-archive-pri", d.m);
            jo.b(c, "pref-archive-time", System.currentTimeMillis());
        }
        if (i1 == 2 || i1 == 3)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            j1 = 1 + jo.a(c, "pref-retry-count", 0);
            jo.b(c, "pref-retry-count", j1);
            if (j1 > it.b)
            {
                byte0 = 10;
            } else
            {
                byte0 = 2;
            }
            context = c;
            if (byte0 == 2)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            jo.b(context, "pref-need-redownload", flag2);
            i1 = byte0;
        } else
        {
            jo.b(c, "pref-need-redownload", false);
        }
        jo.b(c, "pref-last-progress-enable", i);
        if (i1 != -1 && i1 != 2)
        {
            ka1 = ka.a(c);
            hashmap = new HashMap();
            hashmap.put("errorcode", String.valueOf(i1));
            if (i1 == 7)
            {
                hashmap.put("statuscode", String.valueOf(l));
            }
            ka1.a("fail", hashmap);
        }
        s = jh1.a;
        if (i1 == -1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        a(s, flag1, jh1.f, jh1.h, i1);
        d.q = false;
        throw exception1;
        jg1;
        jg1.printStackTrace();
        iy2 = d;
        iy2.h = 1 + iy2.h;
        httpget.abort();
          goto _L7
        exception2;
        httpget.abort();
        throw exception2;
_L2:
        b(jh1);
        if (l == 200)
        {
            break MISSING_BLOCK_LABEL_2108;
        }
        file = new File(jh1.a);
        c1 = '\310';
        if (!file.exists() || !file.isFile()) goto _L10; else goto _L9
_L9:
        if (TextUtils.isEmpty(d.l)) goto _L12; else goto _L11
_L11:
        s8 = iw.a(file);
        if (d.l.equals(s8)) goto _L14; else goto _L13
_L13:
        if (a)
        {
            Log.i("DownloadThread", (new StringBuilder()).append("MD5SUM is not same, delete file, expect:").append(d.l).append(", got:").append(s8).toString());
        }
        c1 = '\u01F4';
        file.delete();
_L16:
        l2 = c1;
_L17:
        if (defaulthttpclient == null);
        a(jh1, l2);
        i3 = a(l2);
        if (i3 == -1)
        {
            jo.b(c, "pref-archive-dspt", d.n);
            jo.b(c, "pref-archive-extra", d.o);
            jo.b(c, "pref-archive-pri", d.m);
            jo.b(c, "pref-archive-time", System.currentTimeMillis());
        }
        boolean flag10;
        boolean flag11;
        if (i3 == 2 || i3 == 3)
        {
            flag10 = true;
        } else
        {
            flag10 = false;
        }
        if (flag10)
        {
            j3 = 1 + jo.a(c, "pref-retry-count", 0);
            jo.b(c, "pref-retry-count", j3);
            byte byte3;
            boolean flag12;
            if (j3 > it.b)
            {
                byte3 = 10;
            } else
            {
                byte3 = 2;
            }
            context3 = c;
            if (byte3 == 2)
            {
                flag12 = true;
            } else
            {
                flag12 = false;
            }
            jo.b(context3, "pref-need-redownload", flag12);
            i3 = byte3;
        } else
        {
            jo.b(c, "pref-need-redownload", false);
        }
        jo.b(c, "pref-last-progress-enable", i);
        if (i3 != -1 && i3 != 2)
        {
            ka4 = ka.a(c);
            hashmap3 = new HashMap();
            hashmap3.put("errorcode", String.valueOf(i3));
            if (i3 == 7)
            {
                hashmap3.put("statuscode", String.valueOf(l2));
            }
            ka4.a("fail", hashmap3);
        }
        s7 = jh1.a;
        if (i3 == -1)
        {
            flag11 = true;
        } else
        {
            flag11 = false;
        }
        a(s7, flag11, jh1.f, jh1.h, i3);
        iy1 = d;
        break MISSING_BLOCK_LABEL_697;
_L14:
        if (!a) goto _L16; else goto _L15
_L15:
        Log.i("DownloadThread", "MD5SUM is same");
          goto _L16
_L12:
        if (a)
        {
            Log.w("DownloadThread", "Target md5sum not specified");
        }
_L10:
        l2 = c1;
          goto _L17
        Exception exception4;
        exception4;
        exception1 = exception4;
        defaulthttpclient = null;
          goto _L18
        Exception exception3;
        exception3;
        exception1 = exception3;
        l = c1;
          goto _L18
        throwable;
        defaulthttpclient = null;
          goto _L19
        ji1;
        defaulthttpclient = null;
          goto _L20
        l2 = l;
          goto _L17
        ji ji2;
        ji2;
        l = c1;
        ji1 = ji2;
          goto _L20
    }

    private void c(jh jh1)
    {
        FileOutputStream fileoutputstream;
        fileoutputstream = jh1.c;
        if (fileoutputstream != null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        fileoutputstream = new FileOutputStream(jh1.a, true);
        fileoutputstream.getFD().sync();
        if (fileoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        fileoutputstream.close();
_L2:
        return;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        Log.w("DownloadThread", (new StringBuilder()).append("file ").append(jh1.a).append(" not found: ").append(filenotfoundexception).toString());
        if (fileoutputstream == null) goto _L2; else goto _L1
_L1:
        fileoutputstream.close();
        return;
        IOException ioexception1;
        ioexception1;
        String s2;
        String s3;
        s2 = "DownloadThread";
        s3 = "IOException while closing synced file: ";
_L4:
        Log.w(s2, s3, ioexception1);
        return;
        SyncFailedException syncfailedexception;
        syncfailedexception;
        Log.w("DownloadThread", (new StringBuilder()).append("file ").append(jh1.a).append(" sync failed: ").append(syncfailedexception).toString());
        if (fileoutputstream == null) goto _L2; else goto _L3
_L3:
        fileoutputstream.close();
        return;
        ioexception1;
        s2 = "DownloadThread";
        s3 = "IOException while closing synced file: ";
          goto _L4
        IOException ioexception2;
        ioexception2;
        Log.w("DownloadThread", (new StringBuilder()).append("IOException trying to sync ").append(jh1.a).append(": ").append(ioexception2).toString());
        if (fileoutputstream == null) goto _L2; else goto _L5
_L5:
        fileoutputstream.close();
        return;
        ioexception1;
        s2 = "DownloadThread";
        s3 = "IOException while closing synced file: ";
          goto _L4
        RuntimeException runtimeexception1;
        runtimeexception1;
        Log.w("DownloadThread", "exception while syncing file: ", runtimeexception1);
        if (fileoutputstream == null) goto _L2; else goto _L6
_L6:
        fileoutputstream.close();
        return;
        ioexception1;
        s2 = "DownloadThread";
        s3 = "IOException while closing synced file: ";
          goto _L4
        Exception exception;
        exception;
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            catch (IOException ioexception)
            {
                Log.w("DownloadThread", "IOException while closing synced file: ", ioexception);
            }
            catch (RuntimeException runtimeexception)
            {
                Log.w("DownloadThread", "exception while closing file: ", runtimeexception);
            }
        }
        throw exception;
        RuntimeException runtimeexception2;
        runtimeexception2;
        String s;
        String s1;
        s = "DownloadThread";
        s1 = "exception while closing file: ";
_L7:
        Log.w(s, s1, runtimeexception2);
        return;
        runtimeexception2;
        s = "DownloadThread";
        s1 = "exception while closing file: ";
          goto _L7
        runtimeexception2;
        s = "DownloadThread";
        s1 = "exception while closing file: ";
          goto _L7
        runtimeexception2;
        s = "DownloadThread";
        s1 = "exception while closing file: ";
          goto _L7
        ioexception1;
        s2 = "DownloadThread";
        s3 = "IOException while closing synced file: ";
          goto _L4
        runtimeexception2;
        s = "DownloadThread";
        s1 = "exception while closing file: ";
          goto _L7
    }

    private void c(jh jh1, jf jf1, HttpResponse httpresponse)
    {
        int l;
label0:
        {
            l = httpresponse.getStatusLine().getStatusCode();
            if (l == 503 && d.h < 5)
            {
                b(jh1, httpresponse);
            }
            if (l == 301 || l == 302 || l == 303 || l == 307)
            {
                a(jh1, httpresponse, l);
            }
            char c1;
            if (jf1.d)
            {
                c1 = '\316';
            } else
            {
                c1 = '\310';
            }
            if (l != c1)
            {
                if (l != 200 && l != 206 && l != 416)
                {
                    break label0;
                }
                if (a)
                {
                    Log.w("DownloadThread", (new StringBuilder()).append("Status code:").append(l).append(", Server does not allow to resume the download, start a new file").toString());
                }
                boolean flag = (new File(jh1.a)).delete();
                jf1.a = 0;
                jf1.b = 0L;
                if (a)
                {
                    Log.d("DownloadThread", (new StringBuilder()).append("Obsoleted file deleted, start a new file, removed:").append(flag).toString());
                }
            }
            return;
        }
        a(jh1, jf1, l);
    }

    private void d()
    {
        if (a)
        {
            StringBuilder stringbuilder = (new StringBuilder()).append("Net ");
            String s;
            if (ix.a(e))
            {
                s = "Up";
            } else
            {
                s = "Down";
            }
            Log.i("DownloadThread", stringbuilder.append(s).toString());
        }
    }

    private boolean d(jh jh1)
    {
        return false;
    }

    private void e(jh jh1)
    {
        if (jh1.c != null)
        {
            jh1.c.close();
            jh1.c = null;
        }
_L1:
        return;
        IOException ioexception;
        ioexception;
        if (a)
        {
            Log.v("DownloadThread", (new StringBuilder()).append("exception when closing the file after download : ").append(ioexception).toString());
            return;
        }
          goto _L1
    }

    private void f(jh jh1)
    {
        iy iy1 = d;
        iy1;
        JVM INSTR monitorenter ;
        if (d.f == 1)
        {
            throw new ji(this, 193, "download paused by owner");
        }
        break MISSING_BLOCK_LABEL_38;
        Exception exception;
        exception;
        iy1;
        JVM INSTR monitorexit ;
        throw exception;
        iy1;
        JVM INSTR monitorexit ;
        if (d.g == 490)
        {
            throw new ji(this, 490, "download canceled");
        } else
        {
            return;
        }
    }

    private int g(jh jh1)
    {
        if (!ix.a(e))
        {
            return 195;
        }
        if (d.h < 5)
        {
            jh1.e = true;
            return 194;
        } else
        {
            Log.w("DownloadThread", (new StringBuilder()).append("reached max retries for ").append(d.a).toString());
            return 495;
        }
    }

    public void a()
    {
        if (a)
        {
            Log.d("DownloadThread", "Force finishing download");
        }
        synchronized (d)
        {
            d.f = 1;
        }
        interrupt();
        return;
        exception;
        iy1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(long l)
    {
        if (!Thread.State.TERMINATED.equals(getState())) goto _L2; else goto _L1
_L1:
        if (a)
        {
            Log.d("DownloadThread", "Download thread stopped, publish progress ignored");
        }
_L4:
        return;
_L2:
        if (l < g) goto _L4; else goto _L3
_L3:
        if (a)
        {
            Log.d("DownloadThread", (new StringBuilder()).append("Publishing progress, bytes:").append(l).toString());
        }
        if (!i && b.b())
        {
            i = true;
        }
        if (!i && !b.b()) goto _L4; else goto _L5
_L5:
        List list = j;
        list;
        JVM INSTR monitorenter ;
        for (Iterator iterator = j.iterator(); iterator.hasNext(); ((iz)iterator.next()).a(c, l, d.j)) { }
        break MISSING_BLOCK_LABEL_174;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
        g = l;
        return;
    }

    public void a(iz iz1)
    {
        if (a)
        {
            Log.d("DownloadThread", "Adding progress listener");
        }
        List list = j;
        list;
        JVM INSTR monitorenter ;
        if (iz1 == null)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        if (!j.contains(iz1))
        {
            j.add(iz1);
            if (a)
            {
                Log.d("DownloadThread", (new StringBuilder()).append("Added new progress listener, current bytes:").append(g).toString());
            }
            a(g);
        }
        list;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(String s, boolean flag, int l, String s1, int i1)
    {
        if (!i && b.b())
        {
            i = true;
        }
        if (!i && !b.b())
        {
            if (flag)
            {
                jt.a().b();
            }
            return;
        }
        c.stopService(new Intent(c, com/dianxinos/appupdate/DownloadService));
        List list = j;
        list;
        JVM INSTR monitorenter ;
        for (Iterator iterator = (new ArrayList(j)).iterator(); iterator.hasNext(); ((iz)iterator.next()).a(c, s, flag, l, s1, i1)) { }
        break MISSING_BLOCK_LABEL_146;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
    }

    public void b(iz iz1)
    {
        synchronized (j)
        {
            j.remove(iz1);
        }
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void run()
    {
        android.os.PowerManager.WakeLock wakelock = null;
        wakelock = ((PowerManager)c.getSystemService("power")).newWakeLock(1, "App update module");
        wakelock.acquire();
        c();
        if (wakelock != null)
        {
            wakelock.release();
        }
        return;
        Exception exception;
        exception;
        if (wakelock != null)
        {
            wakelock.release();
        }
        throw exception;
    }

    static 
    {
        a = it.a;
    }
}
