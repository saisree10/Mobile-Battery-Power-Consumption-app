// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;

public class apg
{

    public static String a(Context context)
    {
        return context.getSharedPreferences("widget_config", 0).getString("buttons", null);
    }

    public static void a(Context context, boolean flag)
    {
        gm.a(context.getSharedPreferences("widget_config", 0).edit().putBoolean("status", flag));
    }

    public static void b(Context context, boolean flag)
    {
        gm.a(context.getSharedPreferences("widget_config", 0).edit().putBoolean("battery_widget_status", flag));
    }

    public static boolean b(Context context)
    {
        return context.getSharedPreferences("widget_config", 0).getBoolean("status", false);
    }

    public static void c(Context context, boolean flag)
    {
        gm.a(context.getSharedPreferences("widget_config", 0).edit().putBoolean("settings_status", flag));
    }

    public static boolean c(Context context)
    {
        return context.getSharedPreferences("widget_config", 0).getBoolean("battery_widget_status", false);
    }

    public static boolean d(Context context)
    {
        return context.getSharedPreferences("widget_config", 0).getBoolean("settings_status", false);
    }
}
