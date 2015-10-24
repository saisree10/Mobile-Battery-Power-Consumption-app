// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class ko extends kq
{

    final kl a;
    private final long d;
    private final long e;
    private final long f;
    private final int g;
    private final int h;
    private final kr i;
    private final kz j;

    ko(kl kl1, long l, long l1, long l2, 
            int k, int i1, kr kr1, kz kz1)
    {
        a = kl1;
        d = l;
        e = l1;
        f = l2;
        g = k;
        h = i1;
        i = kr1;
        j = kz1;
        super(kl1);
    }

    public void run()
    {
        URI uri;
        String s;
        kv kv2;
        ArrayList arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("pid", String.valueOf(d)));
        arraylist.add(new BasicNameValuePair("tid", String.valueOf(e)));
        arraylist.add(new BasicNameValuePair("id", String.valueOf(f)));
        arraylist.add(new BasicNameValuePair("pn", String.valueOf(g)));
        arraylist.add(new BasicNameValuePair("ps", String.valueOf(h)));
        arraylist.add(new BasicNameValuePair("sort", i.toString()));
        uri = URIUtils.createURI("http", kl.a, kl.b, (new StringBuilder(String.valueOf(kl.c))).append("/materials").toString(), (new StringBuilder(String.valueOf(kl.b(a)))).append("&").append(URLEncodedUtils.format(arraylist, "UTF-8")).toString(), null);
        s = lx.a(uri.toString());
        kv2 = kl.a(a).a(s);
        kp kp1 = new kp(null);
        if (kv2 != null) goto _L2; else goto _L1
_L1:
        kv kv3 = new kv();
        int k = kl.c(a, uri, null, j, kp1, 1);
        if (200 != k)
        {
            break MISSING_BLOCK_LABEL_357;
        }
        JSONArray jsonarray = kp1.a.getJSONArray("datas");
        kv3.b = kp1.c;
        kv3.a = jsonarray.toString();
        kl.a(a).a(s, kv3);
        j.a(k, lb.a(jsonarray));
_L4:
        return;
_L2:
        int l;
        ArrayList arraylist1 = new ArrayList(1);
        arraylist1.add(kl.a(kv2.b));
        l = kl.c(a, uri, arraylist1, j, kp1, 1);
        Exception exception1;
        kv kv1;
        if (l != 200)
        {
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            JSONArray jsonarray1 = kp1.a.getJSONArray("datas");
            kv2.b = kp1.c;
            kv2.a = jsonarray1.toString();
            kl.a(a).a(s, kv2);
            j.a(l, lb.a(jsonarray1));
            return;
        }
        catch (Exception exception3)
        {
            exception1 = exception3;
            kv1 = kv2;
        }
_L6:
        if (kv1 == null)
        {
            break MISSING_BLOCK_LABEL_588;
        }
        List list1;
        if (kv1.a == null)
        {
            break MISSING_BLOCK_LABEL_588;
        }
        list1 = lb.a(new JSONArray(kv1.a));
        List list = list1;
_L5:
        j.a(exception1, list);
        la.b("CMSFrontRestService", "failed to get materials", exception1);
        return;
        if (l != 304) goto _L4; else goto _L3
_L3:
        j.a(l, lb.a(new JSONArray(kv2.a)));
        return;
        JSONException jsonexception;
        jsonexception;
        la.b("CMSFrontRestService", "failed to parse materials", jsonexception);
        list = null;
          goto _L5
        Exception exception;
        exception;
        exception1 = exception;
        kv1 = null;
          goto _L6
        Exception exception2;
        exception2;
        exception1 = exception2;
        kv1 = kv3;
          goto _L6
    }
}
