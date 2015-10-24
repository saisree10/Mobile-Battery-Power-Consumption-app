// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URI;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPInputStream;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicHeader;
import org.apache.http.params.HttpParams;
import org.apache.http.util.CharArrayBuffer;
import org.json.JSONArray;
import org.json.JSONObject;

public class lz
{

    public static final Header a = new BasicHeader("Content-Encoding", "gzip");
    public static final Header b = new BasicHeader("Accept-Encoding", "gzip");
    public static String c = "10.18.102.104";
    public static int d = 3724;
    public static String e = "cms";
    private static final PublicKey f = lw.a("91984037215497453715695537150101136180891052789697033543194092619618648264321686995125910645918307527361902207937849374278999247610081485346792920961341041235187112556183400885916498929543480156108595411929206248207390582439108464025592253754008974647620342386179132598251271296121068499378920392705867355039", "65537");
    private static byte i[] = {
        1
    };
    private Context g;
    private String h;

    public lz(Context context)
    {
        g = context;
        h = gt.a(context, Arrays.asList(new String[] {
            "op", "locale"
        }));
    }

    private static String a(byte abyte0[], byte abyte1[])
    {
        SecureRandom securerandom = new SecureRandom();
        DESKeySpec deskeyspec = new DESKeySpec(abyte0);
        javax.crypto.SecretKey secretkey = SecretKeyFactory.getInstance("DES").generateSecret(deskeyspec);
        Cipher cipher = Cipher.getInstance("DES");
        cipher.init(2, secretkey, securerandom);
        return new String(cipher.doFinal(abyte1));
    }

    public static void a(String s)
    {
        if ("dev".equals(s))
        {
            c = "10.18.102.104";
            d = 3724;
            e = "cms";
            la.a = 2;
            return;
        }
        if ("test".equals(s))
        {
            c = "t1.tira.cn";
            d = 8125;
            e = "overseas";
            la.a = 2;
            return;
        }
        if ("prod".equals(s))
        {
            c = "overseas.jccjd.com";
            d = 80;
            e = "cf/";
            la.a = 5;
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("bad env:").append(s).toString());
        }
    }

    public static void a(HttpResponse httpresponse)
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
            la.a("CmsHelper", "failed to cosume entity", exception);
        }
    }

    private static byte[] a(byte abyte0[], String s)
    {
        SecureRandom securerandom = new SecureRandom();
        DESKeySpec deskeyspec = new DESKeySpec(abyte0);
        javax.crypto.SecretKey secretkey = SecretKeyFactory.getInstance("DES").generateSecret(deskeyspec);
        Cipher cipher = Cipher.getInstance("DES");
        cipher.init(1, secretkey, securerandom);
        return cipher.doFinal(s.getBytes());
    }

    public static String b(String s)
    {
        String s1;
        try
        {
            s1 = lq.b(a(i, s), 2);
        }
        catch (Exception exception)
        {
            throw new IOException("Encode failed");
        }
        return s1;
    }

    public static String b(HttpResponse httpresponse)
    {
        int j = httpresponse.getStatusLine().getStatusCode();
        if (j == 200)
        {
            JSONObject jsonobject = d(httpresponse);
            JSONObject jsonobject1 = jsonobject.getJSONObject("responseHeader");
            int k = jsonobject1.getInt("status");
            if (k == 200)
            {
                String s = jsonobject.getJSONObject("response").getString("res");
                String s1 = new String(a(i, lq.a(s, 0)));
                nz.b("CmsHelper", (new StringBuilder()).append("result: ").append(s1).toString());
                return s1;
            } else
            {
                throw new IOException((new StringBuilder()).append("failed to get result, status:").append(k).append(",msg:").append(jsonobject1.optString("msg")).toString());
            }
        } else
        {
            throw new IOException((new StringBuilder()).append("failed to get result, status:").append(j).toString());
        }
    }

    public static ArrayList c(HttpResponse httpresponse)
    {
        int j = httpresponse.getStatusLine().getStatusCode();
        ArrayList arraylist;
        if (j == 200)
        {
            JSONObject jsonobject = d(httpresponse);
            JSONObject jsonobject1 = jsonobject.getJSONObject("responseHeader");
            int k = jsonobject1.getInt("status");
            if (k == 200)
            {
                JSONArray jsonarray = jsonobject.getJSONObject("response").getJSONArray("res");
                arraylist = new ArrayList();
                for (int l = 0; l < jsonarray.length(); l++)
                {
                    arraylist.add(jsonarray.getJSONObject(l));
                }

            } else
            {
                throw new IOException((new StringBuilder()).append("failed to get paid history, status:").append(k).append(",msg:").append(jsonobject1.optString("msg")).toString());
            }
        } else
        {
            throw new IOException((new StringBuilder()).append("failed to get paid history, status:").append(j).toString());
        }
        return arraylist;
    }

    public static JSONObject d(HttpResponse httpresponse)
    {
        HttpEntity httpentity = httpresponse.getEntity();
        java.io.InputStream inputstream = httpentity.getContent();
        int j = (int)httpentity.getContentLength();
        if (j < 0)
        {
            j = 1024;
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
        chararraybuffer = new CharArrayBuffer(j);
        ac = new char[1024];
        do
        {
            int k = inputstreamreader.read(ac);
            if (k != -1)
            {
                chararraybuffer.append(ac, 0, k);
            } else
            {
                return new JSONObject(chararraybuffer.toString());
            }
        } while (true);
    }

    public HttpResponse a(String s, List list)
    {
        return a(s, list, true);
    }

    public HttpResponse a(String s, List list, boolean flag)
    {
        StringBuilder stringbuilder = new StringBuilder(s);
        String s1;
        String s2;
        HttpGet httpget;
        if (s.indexOf('?') <= 0)
        {
            stringbuilder.append("?");
        } else
        {
            stringbuilder.append("&");
        }
        stringbuilder.append(h);
        stringbuilder.append("&cv=").append("1.0");
        stringbuilder.append("&cflv=").append(ks.a());
        s1 = gy.o(g);
        if (TextUtils.isEmpty(s1))
        {
            stringbuilder.append("&op=").append(s1);
        }
        s2 = gy.s(g);
        stringbuilder.append("&locale=").append(s2);
        httpget = new HttpGet(stringbuilder.toString());
        if (list != null)
        {
            for (Iterator iterator = list.iterator(); iterator.hasNext(); httpget.addHeader((Header)iterator.next())) { }
        }
        if (flag)
        {
            httpget.addHeader(b);
        }
        if (nz.a())
        {
            nz.b("CmsHelper", (new StringBuilder()).append("request uri: ").append(httpget.getURI()).append(", headers: ").append(Arrays.asList(httpget.getAllHeaders())).toString());
        }
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
    }

    public HttpResponse a(URI uri, String s, List list)
    {
        String s1 = uri.toString();
        StringBuilder stringbuilder = new StringBuilder(s1);
        String s2;
        String s3;
        HttpPost httppost;
        if (s1.indexOf('?') <= 0)
        {
            stringbuilder.append("?");
        } else
        {
            stringbuilder.append("&");
        }
        stringbuilder.append(h);
        stringbuilder.append("&cv=").append("1.0");
        stringbuilder.append("&cflv=").append(ks.a());
        s2 = gy.o(g);
        if (TextUtils.isEmpty(s2))
        {
            stringbuilder.append("&op=").append(s2);
        }
        s3 = gy.s(g);
        stringbuilder.append("&locale=").append(s3);
        httppost = new HttpPost(stringbuilder.toString());
        if (list != null)
        {
            for (Iterator iterator = list.iterator(); iterator.hasNext(); httppost.addHeader((Header)iterator.next())) { }
        }
        httppost.addHeader(a);
        httppost.addHeader(b);
        String s4 = b(s);
        nz.b("CmsHelper", s4);
        httppost.setEntity(new ByteArrayEntity(lx.c(s4)));
        if (nz.a())
        {
            nz.b("CmsHelper", (new StringBuilder()).append("request uri:").append(httppost.getURI()).append(",body:").append(s).append(",headers:").append(Arrays.asList(httppost.getAllHeaders())).toString());
        }
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
    }

    public HttpResponse a(URI uri, List list, boolean flag)
    {
        return a(uri.toString(), list, flag);
    }

    static 
    {
        try
        {
            i = bez.a("43b0cb89310b7037".toCharArray());
        }
        catch (bew bew1)
        {
            bew1.printStackTrace();
        }
    }
}
