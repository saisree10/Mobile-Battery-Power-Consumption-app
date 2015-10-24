// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URI;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpRequestRetryHandler;
import org.apache.http.message.BasicHeader;
import org.apache.http.params.HttpConnectionParams;

public class hq
{

    private static String a = "http://rc.dxsvr.com/get?";
    private static String b = "prod";
    private static final Header c = new BasicHeader("Accept-Encoding", "gzip");
    private static hq d;
    private Context e;

    public hq(Context context)
    {
        e = context;
    }

    public static hq a(Context context)
    {
        if (d != null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        hq;
        JVM INSTR monitorenter ;
        if (d == null)
        {
            d = new hq(context);
        }
        hq;
        JVM INSTR monitorexit ;
        d = new hq(context);
        return d;
        Exception exception;
        exception;
        hq;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static String a()
    {
        return b;
    }

    public String a(String s)
    {
        HttpGet httpget;
        hr hr1;
        httpget = new HttpGet(s);
        if (ij.a)
        {
            in.b("ADServerConnector", (new StringBuilder()).append("mms pim check request , ").append(httpget.getURI().toString()).toString());
        }
        hr1 = new hr(e);
        HttpResponse httpresponse;
        httpget.addHeader(c);
        HttpConnectionParams.setConnectionTimeout(hr1.getParams(), 5000);
        hr1.setHttpRequestRetryHandler(new DefaultHttpRequestRetryHandler(3, true));
        httpresponse = hr1.execute(httpget);
        if (httpresponse.getStatusLine() == null || httpresponse.getStatusLine().getStatusCode() != 200) goto _L2; else goto _L1
_L1:
        HttpEntity httpentity;
        InputStream inputstream;
        httpentity = httpresponse.getEntity();
        inputstream = httpentity.getContent();
        Header header = httpentity.getContentEncoding();
        if (header == null) goto _L4; else goto _L3
_L3:
        if (header.getValue().indexOf("gzip") == -1) goto _L4; else goto _L5
_L5:
        Object obj = new GZIPInputStream(inputstream);
_L20:
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(((InputStream) (obj))));
        StringBuffer stringbuffer = new StringBuffer("");
_L8:
        String s2 = bufferedreader.readLine();
        if (s2 == null) goto _L7; else goto _L6
_L6:
        stringbuffer.append(s2);
          goto _L8
        ClientProtocolException clientprotocolexception;
        clientprotocolexception;
_L18:
        in.a("ADServerConnector", clientprotocolexception.toString());
        String s1;
        IOException ioexception5;
        String s3;
        IOException ioexception6;
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception1)
            {
                in.d("ADServerConnector", ioexception1.toString());
                return null;
            }
        }
        s1 = null;
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_268;
        }
        ((InputStream) (obj)).close();
_L10:
        return s1;
_L7:
        in.b("ADServerConnector", (new StringBuilder()).append(" respon from get : ").append(stringbuffer).toString());
        hr1.getConnectionManager().shutdown();
        s3 = stringbuffer.toString();
        s1 = s3;
        if (bufferedreader == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            bufferedreader.close();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception6)
        {
            in.d("ADServerConnector", ioexception6.toString());
            return s1;
        }
        if (obj == null) goto _L10; else goto _L9
_L9:
        ((InputStream) (obj)).close();
        return s1;
_L2:
        in.a("ADServerConnector", (new StringBuilder()).append(" get status Code not ok ").append(httpresponse.getStatusLine().getStatusCode()).toString());
        if (false)
        {
            try
            {
                null.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception5)
            {
                in.d("ADServerConnector", ioexception5.toString());
                return null;
            }
        }
        s1 = null;
        if (true) goto _L10; else goto _L11
_L11:
        null.close();
        return null;
        IOException ioexception3;
        ioexception3;
        bufferedreader = null;
        obj = null;
_L17:
        in.a("ADServerConnector", ioexception3.toString());
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception4)
            {
                in.d("ADServerConnector", ioexception4.toString());
                return null;
            }
        }
        s1 = null;
        if (obj == null) goto _L10; else goto _L12
_L12:
        ((InputStream) (obj)).close();
        return null;
        Exception exception2;
        exception2;
        bufferedreader = null;
        obj = null;
_L16:
        in.b("ADServerConnector", " unexpected exception : ");
        in.a("ADServerConnector", exception2.toString());
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception2)
            {
                in.d("ADServerConnector", ioexception2.toString());
                return null;
            }
        }
        s1 = null;
        if (obj == null) goto _L10; else goto _L13
_L13:
        ((InputStream) (obj)).close();
        return null;
        Exception exception1;
        exception1;
        Exception exception;
        bufferedreader = null;
        obj = null;
        exception = exception1;
_L15:
        if (bufferedreader == null)
        {
            break MISSING_BLOCK_LABEL_581;
        }
        bufferedreader.close();
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            catch (IOException ioexception)
            {
                in.d("ADServerConnector", ioexception.toString());
            }
        }
        throw exception;
        Exception exception3;
        exception3;
        obj = inputstream;
        exception = exception3;
        bufferedreader = null;
        continue; /* Loop/switch isn't completed */
        Exception exception4;
        exception4;
        exception = exception4;
        bufferedreader = null;
        continue; /* Loop/switch isn't completed */
        exception;
        if (true) goto _L15; else goto _L14
_L14:
        exception2;
        obj = inputstream;
        bufferedreader = null;
          goto _L16
        exception2;
        bufferedreader = null;
          goto _L16
        exception2;
          goto _L16
        ioexception3;
        obj = inputstream;
        bufferedreader = null;
          goto _L17
        ioexception3;
        bufferedreader = null;
          goto _L17
        ioexception3;
          goto _L17
        clientprotocolexception;
        bufferedreader = null;
        obj = null;
        continue; /* Loop/switch isn't completed */
        clientprotocolexception;
        obj = inputstream;
        bufferedreader = null;
        continue; /* Loop/switch isn't completed */
        clientprotocolexception;
        bufferedreader = null;
        if (true) goto _L18; else goto _L4
_L4:
        obj = inputstream;
        if (true) goto _L20; else goto _L19
_L19:
    }

    public String a(HashMap hashmap)
    {
        if (hashmap == null)
        {
            return null;
        }
        StringBuilder stringbuilder = new StringBuilder("");
        java.util.Map.Entry entry;
        for (Iterator iterator = hashmap.entrySet().iterator(); iterator.hasNext(); stringbuilder.append((new StringBuilder()).append("&").append(entry.getKey()).append("=").append(entry.getValue()).toString()))
        {
            entry = (java.util.Map.Entry)iterator.next();
            in.b("ADServerConnector", (new StringBuilder()).append("  add parameter to get ad;   ").append(entry.getKey()).append(" :  ").append(entry.getValue()).toString());
        }

        stringbuilder.deleteCharAt(0);
        String s = (new StringBuilder()).append(a).append(Uri.encode(stringbuilder.toString(), "&=")).toString();
        in.b("ADServerConnector", (new StringBuilder()).append(" show add:  ").append(s).toString());
        return a(s);
    }

    public void a(Context context, Intent intent)
    {
        in.c("ADServerConnector", " OnReceive ~");
        if (intent == null)
        {
            in.a("ADServerConnector", " onReceivce get intent null");
        } else
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()))
        {
            if (iq.b(context))
            {
                int i = ip.a(context, "show_notification_flag", -1);
                in.b("ADServerConnector", (new StringBuilder()).append(" show Notification flag ").append(i).toString());
                if (i > 0)
                {
                    hn.c(context).a(context, true, false);
                    return;
                }
            } else
            {
                hj.a(context).a();
                return;
            }
        }
    }

    public void b(String s)
    {
        if (s == null)
        {
            return;
        }
        if (!s.equals("dev")) goto _L2; else goto _L1
_L1:
        a = "http://t1.tira.cn:8125/recommend/get?";
        ij.a = true;
        ij.b = true;
_L4:
        b = s;
        Intent intent = new Intent();
        intent.setAction("com.dianxinos.acomponent.CHECK_");
        e.sendBroadcast(intent);
        in.a("ADServerConnector", (new StringBuilder()).append(" setEnvironment sCurrentEnvironment ").append(b).toString());
        return;
_L2:
        if (s.equals("test"))
        {
            a = "http://t1.tira.cn:8125/recommend/get?";
            ij.a = true;
            ij.b = false;
        } else
        if (s.equals("prod"))
        {
            a = "http://rc.dxsvr.com/get?";
            ij.a = false;
            ij.b = false;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

}
