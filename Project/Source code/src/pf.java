// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

public class pf
{

    public static void a(Context context)
    {
        a(context, "coins_query");
    }

    private static void a(Context context, String s)
    {
        nz.b("ToolboxStatsReport", (new StringBuilder()).append("key = ").append(s).toString());
        sb.a(context).a("toolbox_stats", s, Integer.valueOf(1));
    }

    public static void b(Context context)
    {
        a(context, "coins_query_user");
        a(context, "coins_query");
    }

    public static void c(Context context)
    {
        a(context, "coins_query_sc");
    }

    public static void d(Context context)
    {
        a(context, "more_coins");
    }

    public static void e(Context context)
    {
        a(context, "more_coins_valid");
    }

    public static void f(Context context)
    {
        a(context, "show_no_net_tip");
    }

    public static void g(Context context)
    {
        a(context, "click_no_net_tip");
    }

    public static void h(Context context)
    {
        a(context, "close_no_net_tip");
    }

    public static void i(Context context)
    {
        a(context, "show_open_net_dia");
    }

    public static void j(Context context)
    {
        a(context, "click_open_net_dia");
    }

    public static void k(Context context)
    {
        a(context, "show_no_net_dia");
    }

    public static void l(Context context)
    {
        a(context, "click_no_net_dia_setting");
    }

    public static void m(Context context)
    {
        a(context, "close_recently");
    }
}
