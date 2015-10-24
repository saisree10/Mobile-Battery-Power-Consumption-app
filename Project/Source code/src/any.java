// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class any extends ng
{

    private static final String a[] = {
        "cn.opda.a.phonoalbumshoushou", "com.baidu.browser.inter", "cn.jingling.motu.photowonder", "com.dianxinos"
    };
    private static SharedPreferences b;
    private static any c;

    private any(Context context, String s)
    {
        super(context, s);
    }

    public static any a(Context context)
    {
        if (c == null)
        {
            c = new any(context, "cloud_pkg_list");
            b = context.getSharedPreferences("cpl", 0);
        }
        return c;
    }

    private void a(String as[])
    {
    }

    private void d(String s)
    {
    }

    protected void b(String s)
    {
        int j;
        JSONArray jsonarray;
        StringBuilder stringbuilder;
        int i;
        try
        {
            jsonarray = c(s).getJSONArray("cpl");
            stringbuilder = new StringBuilder();
            i = jsonarray.length();
        }
        catch (JSONException jsonexception)
        {
            return;
        }
        j = 0;
_L2:
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        stringbuilder.append(jsonarray.get(j));
        if (j >= i - 1)
        {
            break MISSING_BLOCK_LABEL_109;
        }
        stringbuilder.append(",");
        break MISSING_BLOCK_LABEL_109;
        b.edit().putString("cpl", new String(bex.a(stringbuilder.toString().getBytes()))).commit();
        return;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void d()
    {
        b.edit().putString("cpl", "").commit();
        d("onRecommendDisabled");
    }

    protected long e()
    {
        return 0x5265c00L;
    }

    public String[] f()
    {
        String s = b.getString("cpl", null);
        if (s == null)
        {
            d("default pkgs");
            a(a);
            return a;
        } else
        {
            String as[] = (new String(bex.b(s.getBytes()))).split(",");
            d("cloud pkgs");
            a(as);
            return as;
        }
    }

}
