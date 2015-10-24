// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;

public class aog
{

    private static SharedPreferences a = null;

    public static void a(Context context)
    {
        gm.a(e(context).edit().remove("stime2"));
    }

    public static void a(Context context, int i)
    {
        gm.a(e(context).edit().putInt("vip", i));
    }

    public static void a(Context context, long l)
    {
        gm.a(e(context).edit().putLong("ad_platform_time", l));
    }

    public static void a(Context context, String s)
    {
        gm.a(e(context).edit().putString("special_date_1", s));
    }

    public static long b(Context context, long l)
    {
        return e(context).getLong("special_check_time", l);
    }

    public static void b(Context context)
    {
        gm.a(e(context).edit().remove("platformtime1"));
    }

    public static int c(Context context)
    {
        return e(context).getInt("vip", 0);
    }

    public static void c(Context context, long l)
    {
        gm.a(e(context).edit().putLong("special_check_time", l));
    }

    public static long d(Context context)
    {
        return e(context).getLong("skin_pull_time", 0L);
    }

    public static long d(Context context, long l)
    {
        return e(context).getLong("switch_time", l);
    }

    private static SharedPreferences e(Context context)
    {
        if (a == null)
        {
            a = context.getSharedPreferences("nettimes", 0);
        }
        return a;
    }

    public static void e(Context context, long l)
    {
        gm.a(e(context).edit().putLong("switch_time", l));
    }

    public static void f(Context context, long l)
    {
        gm.a(e(context).edit().putLong("skin_pull_time", l));
    }

}
