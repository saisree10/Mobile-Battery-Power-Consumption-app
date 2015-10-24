// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;

class wl
{

    public static long a(Context context, long l)
    {
        return zw.a(context.getSharedPreferences("app_analysis", 0), "last_day_time", l);
    }

    public static void a(Context context, boolean flag)
    {
        gm.a(context.getSharedPreferences("app_analysis", 0).edit().putBoolean("setshowunusedapps_alarm", flag));
    }

    public static boolean a(Context context)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("app_analysis", 0);
        if (!sharedpreferences.contains("monitor_on"))
        {
            b(context);
        }
        return zw.a(sharedpreferences, "monitor_on", true);
    }

    public static void b(Context context)
    {
        gm.a(context.getSharedPreferences("app_analysis", 0).edit().putLong("monitor_time", System.currentTimeMillis()));
    }

    public static void b(Context context, long l)
    {
        gm.a(context.getSharedPreferences("app_analysis", 0).edit().putLong("last_day_time", l));
    }

    public static long c(Context context, long l)
    {
        return zw.a(context.getSharedPreferences("app_analysis", 0), "last_week_time", l);
    }

    public static boolean c(Context context)
    {
        return zw.a(context.getSharedPreferences("app_analysis", 0), "setshowunusedapps_alarm", false);
    }

    public static void d(Context context, long l)
    {
        gm.a(context.getSharedPreferences("app_analysis", 0).edit().putLong("last_week_time", l));
    }
}
