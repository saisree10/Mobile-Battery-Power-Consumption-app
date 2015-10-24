// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.text.TextUtils;
import java.util.Hashtable;
import java.util.Map;

public final class uh
{

    public static Map a(Context context)
    {
        Hashtable hashtable = new Hashtable();
        String s = gy.d(context);
        String s1 = gy.c(context);
        String s2 = gy.m(context);
        String s3 = gy.b(context);
        String s4 = gy.c();
        String s5 = gy.n(context);
        String s6 = gy.q(context);
        String s7 = gy.o(context);
        String s8 = gy.e(context);
        String s9 = gy.r(context);
        String s10 = gy.f(context);
        String s11 = gy.k(context);
        String s12 = gy.a();
        a(((Map) (hashtable)), s, "a");
        a(((Map) (hashtable)), s1, "b");
        a(((Map) (hashtable)), s2, "c");
        a(((Map) (hashtable)), s3, "d");
        a(((Map) (hashtable)), s4, "e");
        a(((Map) (hashtable)), s5, "f");
        a(((Map) (hashtable)), s6, "k");
        a(((Map) (hashtable)), s7, "m");
        a(((Map) (hashtable)), s8, "g");
        a(((Map) (hashtable)), s9, "h");
        a(((Map) (hashtable)), s10, "i");
        a(((Map) (hashtable)), s11, "j");
        a(((Map) (hashtable)), s12, "mmcid");
        a(((Map) (hashtable)), gx.b(context), "etcunid");
        a(((Map) (hashtable)), "NewToken", "etcunname");
        a(((Map) (hashtable)), String.valueOf(gx.c(context)), "dt");
        return hashtable;
    }

    private static void a(Map map, String s, String s1)
    {
        if (!TextUtils.isEmpty(s))
        {
            map.put(s1, s);
        }
    }
}
