// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

class km extends kq
{

    final kl a;
    private final String d;
    private final kz e;

    km(kl kl1, String s, kz kz1)
    {
        a = kl1;
        d = s;
        e = kz1;
        super(kl1);
    }

    public void run()
    {
        URI uri;
        String s;
        kv kv2;
        ArrayList arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("child", d));
        uri = URIUtils.createURI("http", kl.a, kl.b, (new StringBuilder(String.valueOf(kl.c))).append("/project").toString(), (new StringBuilder(String.valueOf(kl.b(a)))).append("&").append(URLEncodedUtils.format(arraylist, "UTF-8")).toString(), null);
        s = lx.a(uri.toString());
        kv2 = kl.a(a).a(s);
        kp kp1 = new kp(null);
        if (kv2 != null) goto _L2; else goto _L1
_L1:
        kv kv3 = new kv();
        int i = kl.a(a, uri, null, e, kp1, 1);
        if (200 != i)
        {
            break MISSING_BLOCK_LABEL_237;
        }
        kv3.b = kp1.c;
        kv3.a = kp1.a.toString();
        kl.a(a).a(s, kv3);
        e.a(i, new lj(kp1.a));
_L4:
        return;
_L2:
        int j;
        ArrayList arraylist1 = new ArrayList(1);
        arraylist1.add(kl.a(kv2.b));
        j = kl.a(a, uri, arraylist1, e, kp1, 1);
        Exception exception1;
        kv kv1;
        if (j != 200)
        {
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            kv2.b = kp1.c;
            kv2.a = kp1.a.toString();
            kl.a(a).a(s, kv2);
            e.a(j, new lj(kp1.a));
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
            break MISSING_BLOCK_LABEL_470;
        }
        lj lj1;
        if (kv1.a == null)
        {
            break MISSING_BLOCK_LABEL_470;
        }
        lj1 = new lj(new JSONObject(kv1.a));
_L5:
        e.a(exception1, lj1);
        la.b("CMSFrontRestService", "failed to get project", exception1);
        return;
        if (j != 304) goto _L4; else goto _L3
_L3:
        e.a(j, new lj(new JSONObject(kv2.a)));
        return;
        JSONException jsonexception;
        jsonexception;
        la.b("CMSFrontRestService", "failed to parse project", jsonexception);
        lj1 = null;
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
