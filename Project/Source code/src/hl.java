// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.PowerManager;
import android.os.Process;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.params.HttpConnectionParams;

public class hl
    implements Runnable
{

    private Context a;
    private hf b;

    hl(Context context, hf hf1)
    {
        a = context;
        b = hf1;
    }

    private HttpResponse a(HttpClient httpclient, HttpGet httpget)
    {
        HttpResponse httpresponse = httpclient.execute(httpget);
        return httpresponse;
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        illegalargumentexception.printStackTrace();
_L2:
        return null;
        ClientProtocolException clientprotocolexception;
        clientprotocolexception;
        clientprotocolexception.printStackTrace();
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void a(hm hm1, HttpResponse httpresponse)
    {
        b(hm1, httpresponse);
        b.d();
        in.b("DownloadThread", (new StringBuilder()).append("writing ").append(b.e().e()).append(" to ").append(b.e().f()).toString());
    }

    private void a(hm hm1, boolean flag)
    {
        long l = System.currentTimeMillis();
        if (hm1.a - hm1.d > 4096L && l - hm1.e > 1500L || flag)
        {
            hm1.d = hm1.a;
            hm1.e = l;
            b.b(hm1.a, Long.parseLong(hm1.c));
        }
    }

    private void a(hm hm1, byte abyte0[], InputStream inputstream)
    {
        do
        {
            int i = inputstream.read(abyte0);
            if (i == -1)
            {
                a(hm1, true);
                return;
            }
            a(abyte0, i);
            hm1.a = hm1.a + (long)i;
            hm1.b = hm1.b + (long)i;
            a(hm1, false);
            Thread.sleep(0L);
        } while (true);
    }

    private void a(byte abyte0[], int i)
    {
        if (b.c() == null)
        {
            b.d();
        }
        b.c().write(abyte0, 0, i);
        b.c().flush();
_L1:
        return;
        IOException ioexception;
        ioexception;
        if (hi.a(hi.a(b.e().f())) < (long)i)
        {
            return;
        }
          goto _L1
    }

    private boolean a(HttpResponse httpresponse, int i)
    {
        Header header;
        String s;
label0:
        {
            in.b("DownloadThread", (new StringBuilder()).append("got HTTP redirect ").append(i).toString());
            if (i == 301 || i == 302 || i == 303 || i == 307)
            {
                header = httpresponse.getFirstHeader("Location");
                if (header != null)
                {
                    break label0;
                }
            }
            return false;
        }
        in.b("DownloadThread", (new StringBuilder()).append("Location :").append(header.getValue()).toString());
        s = "";
        String s1 = (new URI(b.e().e())).resolve(new URI(header.getValue())).toString();
        s = s1;
_L2:
        b.e().a(s);
        return true;
        URISyntaxException urisyntaxexception;
        urisyntaxexception;
        in.b("DownloadThread", (new StringBuilder()).append("Couldn't resolve redirect URI ").append(header.getValue()).append(" for ").append(b.e().e()).toString());
        if (true) goto _L2; else goto _L1
_L1:
    }

    private boolean a(HttpGet httpget, hr hr1)
    {
        hm hm1 = new hm(b.e());
        byte abyte0[] = new byte[4096];
        httpget.addHeader("Range", (new StringBuilder()).append("bytes=").append(hm1.a).append("-").toString());
        HttpResponse httpresponse = a(((HttpClient) (hr1)), httpget);
        int i = c(hm1, httpresponse);
        if (i == 109)
        {
            return false;
        }
        if (i == 500)
        {
            return true;
        }
        in.b("DownloadThread", (new StringBuilder()).append("received response for ").append(httpget.getURI()).append(", status:").append(httpresponse.getStatusLine().getStatusCode()).toString());
        a(hm1, httpresponse);
        b.a(hm1.a, Long.parseLong(hm1.c));
        InputStream inputstream;
        try
        {
            inputstream = httpresponse.getEntity().getContent();
        }
        catch (IllegalStateException illegalstateexception)
        {
            illegalstateexception.printStackTrace();
            return false;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return false;
        }
        a(hm1, abyte0, inputstream);
        in.b("DownloadThread", " transfer data end ");
        return true;
    }

    private void b(hm hm1, HttpResponse httpresponse)
    {
        Header header = httpresponse.getFirstHeader("Transfer-Encoding");
        String s = null;
        if (header != null)
        {
            s = header.getValue();
        }
        boolean flag;
        if (s == null)
        {
            Header header1 = httpresponse.getFirstHeader("Content-Length");
            if (header1 != null)
            {
                hm1.c = String.valueOf(Long.parseLong(header1.getValue()) + hm1.a);
                if (b.e().g() <= 0L)
                {
                    b.e().a(Long.parseLong(hm1.c));
                }
            }
            in.b("DownloadThread", (new StringBuilder()).append("Content-length:").append(header1.getValue()).toString());
        } else
        {
            in.b("DownloadThread", "ignoring content-length because of xfer-encoding");
        }
        in.b("DownloadThread", (new StringBuilder()).append("Content-Length: ").append(hm1.c).toString());
        if (hm1.c == null && (s == null || !s.equalsIgnoreCase("chunked")))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            b.b(491);
        }
    }

    private int c(hm hm1, HttpResponse httpresponse)
    {
        int i = httpresponse.getStatusLine().getStatusCode();
        if (i == 503 && b.e().h() < 5)
        {
            b.b(503);
            return 503;
        }
        if (a(httpresponse, i))
        {
            return 109;
        }
        if (i == 416)
        {
            String as[] = String.valueOf(httpresponse.getFirstHeader("Content-Range").getValue()).split("/");
            in.b("DownloadThread", (new StringBuilder()).append(" get values values[0] ").append(as[0]).append(" values[1] ").append(as[1]).toString());
            if (hm1.a == Long.valueOf(as[1]).longValue())
            {
                return 500;
            }
        }
        in.b("DownloadThread", (new StringBuilder()).append("handleExceptionalStatus  statusCode ").append(i).toString());
        if (i == 206 && hm1.a <= 0L)
        {
            in.d("DownloadThread", (new StringBuilder()).append("Status code:").append(i).append(", Server does not allow to resume the download, start a new file").toString());
            boolean flag = (new File(b.e().f())).delete();
            hm1.a = 0L;
            hm1.b = 0L;
            in.b("DownloadThread", (new StringBuilder()).append("Obsoleted file deleted, start a new file, removed:").append(flag).toString());
            return 200;
        }
        return i != 206 || hm1.a <= 0L ? 500 : 200;
    }

    public void run()
    {
        HttpGet httpget;
        httpget = null;
        Process.setThreadPriority(10);
        if (iq.a(a)) goto _L2; else goto _L1
_L1:
        in.a("DownloadThread", " NETWORK ERROR DOWNLOAD CANCEL");
        if (false)
        {
            null.abort();
        }
        in.b("DownloadThread", " DownLoad TASK over ");
        b.b(3);
        if (false)
        {
            null.release();
        }
_L6:
        return;
_L2:
        if (iq.a())
        {
            break MISSING_BLOCK_LABEL_105;
        }
        in.a("DownloadThread", " SDSTATE ERROR DOWNLOAD CANCEL");
        if (false)
        {
            null.abort();
        }
        in.b("DownloadThread", " DownLoad TASK over ");
        b.b(4);
        if (false)
        {
            null.release();
            return;
        }
        continue; /* Loop/switch isn't completed */
        android.os.PowerManager.WakeLock wakelock2 = ((PowerManager)a.getSystemService("power")).newWakeLock(1, "DXAP");
        android.os.PowerManager.WakeLock wakelock = wakelock2;
        hr hr1;
        wakelock.acquire();
        hr1 = new hr(a);
        HttpConnectionParams.setSoTimeout(hr1.getParams(), 60000);
        boolean flag;
        HttpGet httpget1;
        flag = false;
        httpget1 = null;
_L4:
        if (flag)
        {
            break; /* Loop/switch isn't completed */
        }
        in.b("DownloadThread", (new StringBuilder()).append(" request uri ").append(b.e().c()).toString());
        httpget = new HttpGet(b.e().c());
        boolean flag1 = a(httpget, hr1);
        flag = flag1;
        httpget1 = httpget;
        if (true) goto _L4; else goto _L3
_L3:
        if (httpget1 != null)
        {
            httpget1.abort();
        }
        in.b("DownloadThread", " DownLoad TASK over ");
        b.b(0);
        if (wakelock != null)
        {
            wakelock.release();
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
        InterruptedException interruptedexception;
        interruptedexception;
        android.os.PowerManager.WakeLock wakelock1 = null;
_L11:
        interruptedexception.printStackTrace();
        in.b("DownloadThread", "catch Interrupted Exception over trans");
        if (httpget != null)
        {
            httpget.abort();
        }
        in.b("DownloadThread", " DownLoad TASK over ");
        b.b(1);
        if (wakelock1 != null)
        {
            wakelock1.release();
            return;
        }
          goto _L6
        Exception exception1;
        exception1;
        wakelock = null;
_L10:
        exception1.printStackTrace();
        if (httpget != null)
        {
            httpget.abort();
        }
        in.b("DownloadThread", " DownLoad TASK over ");
        b.b(2);
        if (wakelock == null) goto _L6; else goto _L7
_L7:
        wakelock.release();
        return;
        Exception exception;
        exception;
        wakelock = null;
_L9:
        if (httpget != null)
        {
            httpget.abort();
        }
        in.b("DownloadThread", " DownLoad TASK over ");
        b.b(2);
        if (wakelock != null)
        {
            wakelock.release();
        }
        throw exception;
        exception;
        continue; /* Loop/switch isn't completed */
        exception;
        httpget = httpget1;
        continue; /* Loop/switch isn't completed */
        exception;
        wakelock = wakelock1;
        if (true) goto _L9; else goto _L8
_L8:
        exception1;
          goto _L10
        exception1;
        httpget = httpget1;
          goto _L10
        interruptedexception;
        wakelock1 = wakelock;
          goto _L11
        interruptedexception;
        httpget = httpget1;
        wakelock1 = wakelock;
          goto _L11
    }
}
