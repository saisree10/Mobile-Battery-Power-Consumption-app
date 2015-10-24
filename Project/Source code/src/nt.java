// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONObject;

public class nt extends nq
{

    static final Random c = new Random(System.currentTimeMillis());
    private kl d;

    public nt(Context context, oq oq)
    {
        super(context, oq);
        d = kl.a(context);
    }

    static String a(Context context)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("locale", gy.s(context)));
        String s = gy.o(context);
        if (!TextUtils.isEmpty(s))
        {
            arraylist.add(new BasicNameValuePair("op", s));
        }
        String s1;
        String s2;
        String s3;
        if (pi.a(context, "com.android.vending"))
        {
            s1 = "1";
        } else
        {
            s1 = "0";
        }
        arraylist.add(new BasicNameValuePair("play", s1));
        if (pa.a())
        {
            s2 = "0";
        } else
        {
            s2 = "1";
        }
        arraylist.add(new BasicNameValuePair("china", s2));
        s3 = gt.a(context, Arrays.asList(new String[] {
            "locale", "op"
        }));
        return (new StringBuilder()).append(s3).append("&").append(URLEncodedUtils.format(arraylist, "UTF-8")).toString();
    }

    private static String a(JSONArray jsonarray)
    {
        int i;
        int j;
        if (jsonarray == null || jsonarray.length() < 1)
        {
            return "";
        }
        i = 0;
        j = jsonarray.length();
_L2:
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        if (!jsonarray.isNull(i))
        {
            break; /* Loop/switch isn't completed */
        }
_L4:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject;
        int k;
        jsonobject = jsonarray.getJSONObject(i);
        k = jsonobject.optInt("type");
        if (k != 1 && k != 22) goto _L4; else goto _L3
_L3:
        return jsonobject.getString("url");
        return "";
    }

    static ou a(String s, int i, JSONObject jsonobject)
    {
        ou ou1 = new ou();
        ou1.i = i;
        ou1.q = s;
        ou1.d = jsonobject.optLong("id");
        ou1.e = jsonobject.getString("title");
        ou1.f = jsonobject.getString("pkg");
        ou1.h = jsonobject.optString("shortdesc");
        ou1.g = jsonobject.optString("description");
        ou1.j = jsonobject.optInt("opentype");
        ou1.k = jsonobject.optString("url_source");
        ou1.m = jsonobject.optString("play_url");
        ou1.n = jsonobject.optString("directdl_url");
        ou1.l = a(jsonobject.optJSONArray("images"));
        ou1.o = jsonobject.optInt("pts");
        ou1.p = jsonobject.optInt("integral");
        ou1.s = jsonobject.optLong("downloadCount");
        ou1.r = jsonobject.optBoolean("hot");
        if (ou1.s <= 0L)
        {
            ou1.s = 10000 + c.nextInt(0x186a0);
        }
        return ou1;
    }

    static ou a(lk lk1, long l, int i, JSONObject jsonobject)
    {
        ou ou1 = a(lk1.h, i, jsonobject);
        ou1.a = lk1.g;
        ou1.b = lk1.a;
        ou1.c = l;
        return ou1;
    }

    static void a(String s, String s1, String s2)
    {
        nz.b("CmsDataPuller", (new StringBuilder()).append("[").append(s).append("]").append(s1).append(s2).toString());
    }

    static void a(nt nt1, od od1)
    {
        nt1.c(od1);
    }

    static void a(nt nt1, od od1, lk lk1)
    {
        nt1.a(od1, lk1);
    }

    private void a(od od1, lk lk1)
    {
        od1.a(lk1);
        String s = lk1.h;
        a(s, "[Material]", (new StringBuilder()).append(" tid = ").append(lk1.a).toString());
        long al[] = lk1.a(102);
        a(s, "[Material]", (new StringBuilder()).append("gids = ").append(Arrays.toString(al)).toString());
        if (al != null && al.length > 0)
        {
            long l = al[0];
            int i = d(s);
            od1.a(l);
            String s1 = a(b);
            d.b(s1);
            d.a(lk1.g, lk1.a, l, 1, i, kr.a, new nw(this, od1, null));
            return;
        } else
        {
            a(s, "[Material]", " Pull failed: empty ids.");
            a(od1, 404);
            return;
        }
    }

    private void c(od od1)
    {
        a(od1.a, "[Project]", " Pull start");
        String s = a(b);
        d.b(s);
        d.a("dxtoolbox", new nx(this, od1));
    }

    public void a(od od1)
    {
        pg.a().a(new nu(this, od1));
    }

    protected void a(od od1, int i)
    {
        a(new oe(od1, i));
    }

}
