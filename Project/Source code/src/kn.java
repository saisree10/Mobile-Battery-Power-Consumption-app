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

class kn extends kq
{

    final kl a;
    private final long d;
    private final long e;
    private final int f;
    private final long g[];
    private final kz h;

    kn(kl kl1, long l, long l1, int i, long al[], 
            kz kz1)
    {
        a = kl1;
        d = l;
        e = l1;
        f = i;
        g = al;
        h = kz1;
        super(kl1);
    }

    public void run()
    {
        ArrayList arraylist;
        arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("pid", String.valueOf(d)));
        arraylist.add(new BasicNameValuePair("tid", String.valueOf(e)));
        arraylist.add(new BasicNameValuePair("top", String.valueOf(f)));
        int i = 0;
_L5:
        if (i < g.length) goto _L2; else goto _L1
_L1:
        URI uri;
        String s;
        kv kv2;
        uri = URIUtils.createURI("http", kl.a, kl.b, (new StringBuilder(String.valueOf(kl.c))).append("/materialGroup").toString(), (new StringBuilder(String.valueOf(kl.b(a)))).append("&").append(URLEncodedUtils.format(arraylist, "UTF-8")).toString(), null);
        s = lx.a(uri.toString());
        kv2 = kl.a(a).a(s);
        kp kp1 = new kp(null);
        if (kv2 != null) goto _L4; else goto _L3
_L3:
        kv kv3 = new kv();
        int j = kl.b(a, uri, null, h, kp1, 1);
        if (200 != j)
        {
            break MISSING_BLOCK_LABEL_309;
        }
        JSONArray jsonarray = kp1.a.getJSONArray("datas");
        kv3.b = kp1.c;
        kv3.a = jsonarray.toString();
        kl.a(a).a(s, kv3);
        h.a(j, lb.a(jsonarray, d, e));
_L7:
        return;
_L2:
        arraylist.add(new BasicNameValuePair("ids", String.valueOf(g[i])));
        i++;
          goto _L5
_L4:
        int k;
        ArrayList arraylist1 = new ArrayList(1);
        arraylist1.add(kl.a(kv2.b));
        k = kl.b(a, uri, arraylist1, h, kp1, 1);
        Exception exception1;
        kv kv1;
        if (k != 200)
        {
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            JSONArray jsonarray1 = kp1.a.getJSONArray("datas");
            kv2.b = kp1.c;
            kv2.a = jsonarray1.toString();
            kl.a(a).a(s, kv2);
            h.a(k, lb.a(jsonarray1, d, e));
            return;
        }
        catch (Exception exception3)
        {
            exception1 = exception3;
            kv1 = kv2;
        }
_L9:
        if (kv1 == null)
        {
            break MISSING_BLOCK_LABEL_596;
        }
        List list1;
        if (kv1.a == null)
        {
            break MISSING_BLOCK_LABEL_596;
        }
        list1 = lb.a(new JSONArray(kv1.a), d, e);
        List list = list1;
_L8:
        h.a(exception1, list);
        la.b("CMSFrontRestService", "failed to get material group", exception1);
        return;
        if (k != 304) goto _L7; else goto _L6
_L6:
        h.a(k, lb.a(new JSONArray(kv2.a), d, e));
        return;
        JSONException jsonexception;
        jsonexception;
        la.b("CMSFrontRestService", "failed to parse material groups", jsonexception);
        list = null;
          goto _L8
        Exception exception;
        exception;
        exception1 = exception;
        kv1 = null;
          goto _L9
        Exception exception2;
        exception2;
        exception1 = exception2;
        kv1 = kv3;
          goto _L9
    }
}
