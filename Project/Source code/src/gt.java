// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

public final class gt
{

    private static Map a;
    private static String b[] = {
        "pkg", "ie", "lc", "model", "tk", "v", "vn"
    };

    public gt()
    {
    }

    public static String a(Context context)
    {
        return b(context, new ArrayList());
    }

    public static String a(Context context, List list)
    {
        return b(context, list);
    }

    private static List a(List list)
    {
        String as[] = b;
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            String s = as[j];
            if (!list.contains(s))
            {
                continue;
            }
            if (gz.d)
            {
                Log.w("base.DXStatService", "Your excepts is illeage because you want remove the neededParams of UrlSuffix!");
            }
            list.remove(s);
        }

        return list;
    }

    private static Map a(String s, String s1, Map map)
    {
        if (!TextUtils.isEmpty(s1))
        {
            map.put(s, s1);
        }
        return map;
    }

    private static void a(String s, String s1, List list)
    {
        if (!TextUtils.isEmpty(s1))
        {
            list.add(new BasicNameValuePair(s, s1));
        }
    }

    private static String b(Context context, List list)
    {
        gt;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        HashMap hashmap;
        List list1 = a(list);
        arraylist = new ArrayList();
        b(context);
        hashmap = new HashMap(a);
        a("ntt", gy.t(context), hashmap);
        for (Iterator iterator = list1.iterator(); iterator.hasNext(); hashmap.remove((String)iterator.next())) { }
        break MISSING_BLOCK_LABEL_90;
        Exception exception;
        exception;
        gt;
        JVM INSTR monitorexit ;
        throw exception;
        String s1;
        for (Iterator iterator1 = hashmap.keySet().iterator(); iterator1.hasNext(); a(s1, (String)hashmap.get(s1), arraylist))
        {
            s1 = (String)iterator1.next();
        }

        String s = URLEncodedUtils.format(arraylist, "UTF-8");
        gt;
        JVM INSTR monitorexit ;
        return s;
    }

    private static void b(Context context)
    {
        if (a == null)
        {
            a = new HashMap();
            a("pkg", gy.a(context), a);
            a("h", gy.g(context), a);
            a("w", gy.h(context), a);
            a("v", String.valueOf(gy.j(context)), a);
            a("vn", gy.i(context), a);
            a("model", gy.l(context), a);
            a("vendor", gy.k(context), a);
            a("ie", gy.m(context), a);
            a("sdk", gy.q(context), a);
            a("dpi", gy.r(context), a);
            a("tk", gx.a(context), a);
            a("locale", gy.s(context), a);
            a("signmd5", gy.u(context), a);
        }
        String s = gy.n(context);
        if (!a.containsKey("is"))
        {
            a("is", s, a);
        }
        if (!TextUtils.isEmpty(s) && !a.containsKey("op"))
        {
            a("op", gy.o(context), a);
        }
        if (!a.containsKey("lc"))
        {
            a("lc", gw.a(context), a);
        }
    }

}
