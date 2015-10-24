// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class hs
{

    protected static final Set a;
    private static final Header b = new BasicHeader("Content-Encoding", "gzip");
    private static final Header c = new BasicHeader("Accept-Encoding", "gzip");
    private static hs e;
    private ConcurrentLinkedQueue d;
    private Context f;
    private Thread g;

    private hs(Context context)
    {
        f = context;
        d = new ConcurrentLinkedQueue();
    }

    public static hs a(Context context)
    {
        if (e != null) goto _L2; else goto _L1
_L1:
        hs;
        JVM INSTR monitorenter ;
        if (e == null)
        {
            e = new hs(context);
        }
        hs;
        JVM INSTR monitorexit ;
_L2:
        return e;
        Exception exception;
        exception;
        hs;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(String s)
    {
        boolean flag;
        HttpResponse httpresponse;
        int i = 0;
        hq.a(f);
        String s1;
        PackageManager packagemanager;
        int j;
        ArrayList arraylist;
        String s2;
        hr hr1;
        HttpPost httppost;
        IOException ioexception;
        int k;
        if ("prod".equals(hq.a()))
        {
            s1 = "http://rts.dxsvr.com/rp";
        } else
        {
            s1 = "http://10.18.102.103:8080/rts/rp";
        }
        packagemanager = f.getPackageManager();
        try
        {
            j = packagemanager.getPackageInfo(f.getPackageName(), 0).versionCode;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            in.b("EventReporter", "fail to get packageInfo");
            j = 0;
        }
        arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("tk", gx.a(f)));
        arraylist.add(new BasicNameValuePair("pkg", f.getPackageName()));
        arraylist.add(new BasicNameValuePair("mdu", "DXAD"));
        arraylist.add(new BasicNameValuePair("lc", gy.p(f)));
        arraylist.add(new BasicNameValuePair("v", String.valueOf(j)));
        arraylist.add(new BasicNameValuePair("rv", "1.0"));
        s2 = (new StringBuilder()).append(s1).append("?").append(URLEncodedUtils.format(arraylist, "UTF-8")).toString();
        hr1 = new hr(f);
        httppost = new HttpPost(s2);
        httppost.addHeader(b);
        httppost.addHeader(c);
        httppost.setEntity(new ByteArrayEntity(ik.a(s)));
        flag = false;
_L5:
        if (flag || i >= 3) goto _L2; else goto _L1
_L1:
        i++;
        httpresponse = hr1.execute(httppost);
        k = httpresponse.getStatusLine().getStatusCode();
        if (k == 200) goto _L4; else goto _L3
_L3:
        in.b("EventReporter", (new StringBuilder()).append("Fail to report event:").append(s).append(", statuscode=").append(k).toString());
          goto _L5
        ioexception;
        in.a("EventReporter", "Failed to execute report request");
_L9:
        return;
_L4:
        int l;
        JSONObject jsonobject = new JSONObject(ik.a(ik.a(httpresponse.getEntity())));
        in.b("EventReporter", (new StringBuilder()).append("got response for event:").append(s).append(", response=").append(jsonobject.toString()).toString());
        l = jsonobject.getJSONObject("responseHeader").getInt("status");
        if (l == 200)
        {
            flag = true;
        }
_L7:
        if (flag) goto _L5; else goto _L6
_L6:
        Thread.sleep(5000L);
          goto _L5
        InterruptedException interruptedexception;
        interruptedexception;
        in.a("EventReporter", "Interrupted during retry report request");
        return;
        Exception exception;
        exception;
        in.b("EventReporter", exception.toString());
          goto _L7
        NullPointerException nullpointerexception;
        nullpointerexception;
        in.a("EventReporter", "Failed to execute report request caused by npe");
        return;
_L2:
        if (!flag) goto _L9; else goto _L8
_L8:
        in.c("EventReporter", (new StringBuilder()).append("Report event success:").append(s).toString());
        return;
          goto _L5
    }

    private boolean a()
    {
        JSONArray jsonarray = new JSONArray();
        for (; !d.isEmpty(); jsonarray.put((JSONObject)d.poll())) { }
        if (jsonarray.length() == 0)
        {
            return false;
        } else
        {
            a(jsonarray.toString());
            return true;
        }
    }

    static boolean a(hs hs1)
    {
        return hs1.a();
    }

    public void a(String s, Map map)
    {
        JSONObject jsonobject;
        if (!a.contains(s))
        {
            break MISSING_BLOCK_LABEL_168;
        }
        jsonobject = new JSONObject();
        jsonobject.put("k", s);
        if (map != null)
        {
            try
            {
                if (!map.isEmpty())
                {
                    java.util.Map.Entry entry;
                    for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); jsonobject.put((String)entry.getKey(), entry.getValue()))
                    {
                        entry = (java.util.Map.Entry)iterator.next();
                    }

                }
            }
            catch (JSONException jsonexception)
            {
                in.a("EventReporter", (new StringBuilder()).append("Failed to put to json of ").append(s).toString());
            }
        }
        d.add(jsonobject);
        if (!iq.a(g))
        {
            g = new hu(this, null);
            g.start();
        }
    }

    static 
    {
        a = new HashSet();
        a.add("pn");
        a.add("la");
    }
}
