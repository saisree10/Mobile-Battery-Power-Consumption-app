// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.io.IOException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class zf
{

    protected static String a;
    protected static Context b;
    protected String c;

    protected zf(Context context, String s)
    {
        b = context.getApplicationContext();
        c = s;
    }

    protected static String a(String s, int i)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(gt.a(b));
        stringbuilder.append("&net=").append(i);
        stringbuilder.append("&child=").append(s);
        stringbuilder.append("&rv=").append("1.1");
        return stringbuilder.toString();
    }

    public static void a(String s)
    {
        if (s.equals("prod"))
        {
            a = "http://rc.dxsvr.com/multi_get";
            return;
        }
        if (s.equals("test"))
        {
            a = "http://t1.tira.cn:8125/recommend/multi_get";
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("illegal env ").append(s).append(", only prod, test and dev is available").toString());
        }
    }

    protected abstract void a(JSONArray jsonarray);

    protected boolean b()
    {
        int i;
        String s;
        i = zv.a(b);
        s = null;
        azk azk1;
        JSONObject jsonobject;
        String s1 = a(c, i);
        s = azs.a(b, a, s1);
        azk1 = new azk();
        jsonobject = azk1.a(s);
        if (azk.b(new JSONObject(s)))
        {
            return true;
        }
        if (!azk1.a()) goto _L2; else goto _L1
_L1:
        a(jsonobject.getJSONArray("datas"));
_L3:
        return false;
        IOException ioexception;
        ioexception;
        zs.a("TapasMultiRecommendBase", "Unexpected excetpion", ioexception);
        return true;
        JSONException jsonexception;
        jsonexception;
        zs.a("TapasMultiRecommendBase", (new StringBuilder()).append("Bad response: ").append(s).toString(), jsonexception);
        if (true) goto _L3; else goto _L2
_L2:
        return true;
    }
}
