// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URI;
import java.security.PublicKey;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicHeader;
import org.apache.http.params.HttpParams;
import org.apache.http.util.CharArrayBuffer;
import org.json.JSONException;
import org.json.JSONObject;

public class kl
{

    public static String a = "10.18.102.104";
    public static int b = 3724;
    public static String c = "cms/overseas";
    private static final PublicKey d = lw.a("91984037215497453715695537150101136180891052789697033543194092619618648264321686995125910645918307527361902207937849374278999247610081485346792920961341041235187112556183400885916498929543480156108595411929206248207390582439108464025592253754008974647620342386179132598251271296121068499378920392705867355039", "65537");
    private static final Header e = new BasicHeader("Content-Encoding", "gzip");
    private static final Header f = new BasicHeader("Accept-Encoding", "gzip");
    private static kl g = null;
    private kw h;
    private String i;
    private Context j;
    private String k;
    private kt l;
    private long m;

    private kl(Context context)
    {
        this(((kw) (kx.a(context))), context);
    }

    private kl(kw kw, Context context)
    {
        i = "862fe64a3f627a61727cd443ca79f1bf";
        m = 0x5265c00L;
        h = kw;
        j = context;
        k = gt.a(context);
        l = new kt(2, 4, 60L, TimeUnit.SECONDS, new PriorityBlockingQueue(100), new java.util.concurrent.ThreadPoolExecutor.DiscardOldestPolicy());
        lu.a(lu.a(), lu.a(context));
    }

    private int a(URI uri, List list, kz kz1, kp kp1, int i1)
    {
        HttpResponse httpresponse;
        if (i1 > 2)
        {
            throw new IOException("Too much recursion:2");
        }
        httpresponse = a(uri, list, true);
        int j1 = httpresponse.getStatusLine().getStatusCode();
        if (j1 == 200 || j1 == 304) goto _L2; else goto _L1
_L1:
        kz1.a(j1, "NETWORK_FAIL");
_L4:
        a(httpresponse);
        return j1;
_L2:
        if (j1 != 200) goto _L4; else goto _L3
_L3:
        JSONObject jsonobject;
        JSONObject jsonobject1;
        jsonobject = c(httpresponse);
        jsonobject1 = jsonobject.getJSONObject("responseHeader");
        kp1.b = jsonobject1;
        j1 = jsonobject1.getInt("status");
        if (j1 != 200)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        kp1.a = jsonobject.getJSONObject("response");
        kp1.c = b(httpresponse);
          goto _L4
        Exception exception;
        exception;
        a(httpresponse);
        throw exception;
        if (j1 != 403)
        {
            break MISSING_BLOCK_LABEL_197;
        }
        a();
        i1 + 1;
        int k1 = a(uri, list, kz1, kp1, i1);
        a(httpresponse);
        return k1;
        kz1.a(j1, jsonobject1.optString("msg"));
          goto _L4
    }

    static int a(kl kl1, URI uri, List list, kz kz1, kp kp1, int i1)
    {
        return kl1.a(uri, list, kz1, kp1, i1);
    }

    public static kl a(Context context)
    {
        kl;
        JVM INSTR monitorenter ;
        kl kl1;
        if (g == null)
        {
            g = new kl(context);
        }
        kl1 = g;
        kl;
        JVM INSTR monitorexit ;
        return kl1;
        Exception exception;
        exception;
        throw exception;
    }

    static kw a(kl kl1)
    {
        return kl1.h;
    }

    static Header a(long l1)
    {
        return b(l1);
    }

    private HttpResponse a(URI uri, String s, List list)
    {
        HttpPost httppost;
        String s1 = uri.toString();
        if (s1.indexOf('?') > 0)
        {
            s1 = (new StringBuilder(String.valueOf(s1))).append("&sid=").append(i).append("&cv=").append("1.0").append("&cflv=").append(ks.a()).toString();
        }
        httppost = new HttpPost(s1);
        if (list == null) goto _L2; else goto _L1
_L1:
        Iterator iterator = list.iterator();
_L5:
        if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
        httppost.addHeader(e);
        httppost.addHeader(f);
        httppost.setEntity(new ByteArrayEntity(lx.c(s)));
        la.a("CMSFrontRestService", (new StringBuilder("request uri:")).append(httppost.getURI()).append(",body:").append(s).append(",headers:").append(Arrays.asList(httppost.getAllHeaders())).toString());
        httppost.getParams().setParameter("http.socket.timeout", Integer.valueOf(20000));
        DefaultHttpClient defaulthttpclient = lu.a();
        HttpResponse httpresponse;
        try
        {
            httpresponse = defaulthttpclient.execute(httppost);
        }
        catch (IOException ioexception)
        {
            httppost.abort();
            throw ioexception;
        }
        return httpresponse;
_L3:
        httppost.addHeader((Header)iterator.next());
        if (true) goto _L5; else goto _L4
_L4:
    }

    private HttpResponse a(URI uri, List list, boolean flag)
    {
        HttpGet httpget;
        String s = uri.toString();
        if (s.indexOf('?') > 0)
        {
            s = (new StringBuilder(String.valueOf(s))).append("&sid=").append(i).append("&cv=").append("1.0").append("&cflv=").append(ks.a()).toString();
        }
        httpget = new HttpGet(s);
        if (list == null) goto _L2; else goto _L1
_L1:
        Iterator iterator = list.iterator();
_L5:
        if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
        if (flag)
        {
            httpget.addHeader(f);
        }
        la.a("CMSFrontRestService", (new StringBuilder("request uri: ")).append(httpget.getURI()).append(", headers: ").append(Arrays.asList(httpget.getAllHeaders())).toString());
        httpget.getParams().setParameter("http.socket.timeout", Integer.valueOf(20000));
        DefaultHttpClient defaulthttpclient = lu.a();
        HttpResponse httpresponse;
        try
        {
            httpresponse = defaulthttpclient.execute(httpget);
        }
        catch (IOException ioexception)
        {
            httpget.abort();
            throw ioexception;
        }
        return httpresponse;
_L3:
        httpget.addHeader((Header)iterator.next());
        if (true) goto _L5; else goto _L4
_L4:
    }

    private void a()
    {
        this;
        JVM INSTR monitorenter ;
        URI uri;
        JSONObject jsonobject;
        uri = URIUtils.createURI("http", a, b, (new StringBuilder(String.valueOf(c))).append("/rs").toString(), k, null);
        jsonobject = new JSONObject();
        jsonobject.put("ms", System.currentTimeMillis());
        jsonobject.put("tk", gx.a(j));
_L1:
        HttpResponse httpresponse = a(uri, new String(lq.c(lw.a(jsonobject.toString(), d), 0)), ((List) (null)));
        int i1 = httpresponse.getStatusLine().getStatusCode();
        if (i1 != 200)
        {
            break MISSING_BLOCK_LABEL_284;
        }
        JSONObject jsonobject1;
        JSONObject jsonobject2;
        int j1;
        jsonobject1 = c(httpresponse);
        jsonobject2 = jsonobject1.getJSONObject("responseHeader");
        j1 = jsonobject2.getInt("status");
        if (j1 != 200)
        {
            break MISSING_BLOCK_LABEL_231;
        }
        i = (new JSONObject(new String(lw.a(lq.a(jsonobject1.getJSONObject("response").getString("session"), 0), d)))).getString("sid");
        a(httpresponse);
        this;
        JVM INSTR monitorexit ;
        return;
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
          goto _L1
        Exception exception;
        exception;
        throw exception;
        throw new IOException((new StringBuilder("failed to get sid,status:")).append(j1).append(",msg:").append(jsonobject2.optString("msg")).toString());
        Exception exception1;
        exception1;
        a(httpresponse);
        throw exception1;
        throw new IOException((new StringBuilder("failed to get sid,status:")).append(i1).toString());
    }

    public static void a(String s)
    {
        if ("dev".equals(s))
        {
            a = "10.18.102.104";
            b = 3724;
            c = "cms/overseas";
            la.a = 2;
            return;
        }
        if ("test".equals(s))
        {
            a = "t1.tira.cn";
            b = 8125;
            c = "overseas";
            la.a = 2;
            return;
        }
        if ("prod".equals(s))
        {
            a = "overseas.jccjd.com";
            b = 80;
            c = "cf/";
            la.a = 5;
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("bad env:")).append(s).toString());
        }
    }

    private void a(HttpResponse httpresponse)
    {
        if (httpresponse == null || httpresponse.getEntity() == null)
        {
            return;
        }
        try
        {
            httpresponse.getEntity().consumeContent();
            return;
        }
        catch (Exception exception)
        {
            la.a("CMSFrontRestService", "failed to cosume entity", exception);
        }
    }

    private int b(URI uri, List list, kz kz1, kp kp1, int i1)
    {
        HttpResponse httpresponse;
        if (i1 > 2)
        {
            throw new IOException("Too much recursion:2");
        }
        httpresponse = a(uri, list, true);
        int j1 = httpresponse.getStatusLine().getStatusCode();
        if (j1 == 200 || j1 == 304) goto _L2; else goto _L1
_L1:
        kz1.a(j1, "NETWORK_FAIL");
_L4:
        a(httpresponse);
        return j1;
_L2:
        if (j1 != 200) goto _L4; else goto _L3
_L3:
        JSONObject jsonobject;
        JSONObject jsonobject1;
        jsonobject = c(httpresponse);
        jsonobject1 = jsonobject.getJSONObject("responseHeader");
        kp1.b = jsonobject1;
        j1 = jsonobject1.getInt("status");
        if (j1 != 200)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        kp1.a = jsonobject.getJSONObject("response");
        kp1.c = b(httpresponse);
          goto _L4
        Exception exception;
        exception;
        a(httpresponse);
        throw exception;
        if (j1 != 403)
        {
            break MISSING_BLOCK_LABEL_197;
        }
        a();
        i1 + 1;
        int k1 = b(uri, list, kz1, kp1, i1);
        a(httpresponse);
        return k1;
        kz1.a(j1, jsonobject1.optString("msg"));
          goto _L4
    }

    static int b(kl kl1, URI uri, List list, kz kz1, kp kp1, int i1)
    {
        return kl1.b(uri, list, kz1, kp1, i1);
    }

    private static long b(HttpResponse httpresponse)
    {
        Header header = httpresponse.getFirstHeader("Last-Modified");
        if (header != null)
        {
            return lx.b(header.getValue()).getTime();
        } else
        {
            return 0L;
        }
    }

    static String b(kl kl1)
    {
        return kl1.k;
    }

    private static Header b(long l1)
    {
        return new BasicHeader("If-Modified-Since", lx.a(new Date(l1)));
    }

    private int c(URI uri, List list, kz kz1, kp kp1, int i1)
    {
        HttpResponse httpresponse;
        if (i1 > 2)
        {
            throw new IOException("Too much recursion:2");
        }
        httpresponse = a(uri, list, true);
        int j1 = httpresponse.getStatusLine().getStatusCode();
        if (j1 == 200 || j1 == 304) goto _L2; else goto _L1
_L1:
        kz1.a(j1, "NETWORK_FAIL");
_L4:
        a(httpresponse);
        return j1;
_L2:
        if (j1 != 200) goto _L4; else goto _L3
_L3:
        JSONObject jsonobject;
        JSONObject jsonobject1;
        jsonobject = c(httpresponse);
        jsonobject1 = jsonobject.getJSONObject("responseHeader");
        kp1.b = jsonobject1;
        j1 = jsonobject1.getInt("status");
        if (j1 != 200)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        kp1.a = jsonobject.getJSONObject("response");
        kp1.c = b(httpresponse);
          goto _L4
        Exception exception;
        exception;
        a(httpresponse);
        throw exception;
        if (j1 != 403)
        {
            break MISSING_BLOCK_LABEL_197;
        }
        a();
        i1 + 1;
        int k1 = c(uri, list, kz1, kp1, i1);
        a(httpresponse);
        return k1;
        kz1.a(j1, jsonobject1.optString("msg"));
          goto _L4
    }

    static int c(kl kl1, URI uri, List list, kz kz1, kp kp1, int i1)
    {
        return kl1.c(uri, list, kz1, kp1, i1);
    }

    private static JSONObject c(HttpResponse httpresponse)
    {
        HttpEntity httpentity = httpresponse.getEntity();
        java.io.InputStream inputstream = httpentity.getContent();
        int i1 = (int)httpentity.getContentLength();
        if (i1 < 0)
        {
            i1 = 1024;
        }
        Header header = httpentity.getContentEncoding();
        Object obj;
        InputStreamReader inputstreamreader;
        CharArrayBuffer chararraybuffer;
        char ac[];
        if (header != null && header.getValue().indexOf("gzip") != -1)
        {
            obj = new GZIPInputStream(inputstream);
        } else
        {
            obj = inputstream;
        }
        inputstreamreader = new InputStreamReader(((java.io.InputStream) (obj)), "UTF-8");
        chararraybuffer = new CharArrayBuffer(i1);
        ac = new char[1024];
        do
        {
            int j1 = inputstreamreader.read(ac);
            if (j1 == -1)
            {
                return new JSONObject(chararraybuffer.toString());
            }
            chararraybuffer.append(ac, 0, j1);
        } while (true);
    }

    public void a(long l1, long l2, long l3, int i1, 
            int j1, kr kr, kz kz1)
    {
        kz1.a(l.submit(new ko(this, l1, l2, l3, i1, j1, kr, kz1)));
    }

    public void a(long l1, long l2, long al[], int i1, kz kz1)
    {
        kz1.a(l.submit(new kn(this, l1, l2, i1, al, kz1)));
    }

    public void a(long l1, long l2, long al[], kz kz1)
    {
        a(l1, l2, al, 0, kz1);
    }

    public void a(String s, kz kz1)
    {
        kz1.a(l.submit(new km(this, s, kz1)));
    }

    public void b(String s)
    {
        k = s;
    }

}
