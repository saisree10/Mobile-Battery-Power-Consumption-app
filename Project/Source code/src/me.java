// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

public class me
{

    private static boolean a;

    public static void a(Context context)
    {
        a(context, "_toolbox_coin", "g_s", ((Number) (Integer.valueOf(1))));
    }

    public static void a(Context context, String s)
    {
        a(context, "_toolbox_coin", (new StringBuilder()).append("f_c_").append(s).toString(), ((Number) (Integer.valueOf(1))));
    }

    private static void a(Context context, String s, String s1, Number number)
    {
        if (a)
        {
            nz.b("CoinReportHelper", (new StringBuilder()).append("Ignore key: ").append(s).append(", value: ").append(s1).append(" caused by IJUE").toString());
            return;
        } else
        {
            nz.b("CoinReportHelper", (new StringBuilder()).append("key: ").append(s).append(", value: ").append(s1).toString());
            sb.a(context).a(s, s1, number);
            return;
        }
    }

    public static void b(Context context)
    {
        a(context, "_toolbox_coin", "g_f", Integer.valueOf(1));
    }

    public static void b(Context context, String s)
    {
        a(context, "_toolbox_coin", (new StringBuilder()).append("f_d_").append(s).toString(), Integer.valueOf(1));
    }

    public static void c(Context context)
    {
        a(context, "_toolbox_coin", "c_c_t", Integer.valueOf(1));
    }

    public static void c(Context context, String s)
    {
        a(context, "_toolbox_coin", (new StringBuilder()).append("f_d_c_").append(s).toString(), Integer.valueOf(1));
    }

    public static void d(Context context)
    {
        a(context, "_toolbox_coin", "c_c_p", Integer.valueOf(1));
    }

    public static void d(Context context, String s)
    {
        a(context, "_toolbox_coin", (new StringBuilder()).append("f_s_").append(s).toString(), Integer.valueOf(1));
    }

    public static void e(Context context)
    {
        a(context, "_toolbox_coin", "r_c", Integer.valueOf(1));
    }

    public static void e(Context context, String s)
    {
        a(context, "_toolbox_coin", (new StringBuilder()).append("n_n_").append(s).toString(), Integer.valueOf(1));
    }

    public static void f(Context context)
    {
        a(context, "_toolbox_coin", "r_n_n", Integer.valueOf(1));
    }

    public static void f(Context context, String s)
    {
        a(context, "_toolbox_coin", (new StringBuilder()).append("n_e_").append(s).toString(), Integer.valueOf(1));
    }

    public static void g(Context context)
    {
        a(context, "_toolbox_coin", "r_s", Integer.valueOf(1));
    }

    public static void g(Context context, String s)
    {
        a(context, "_toolbox_coin", (new StringBuilder()).append("o_e_").append(s).toString(), Integer.valueOf(1));
    }

    public static void h(Context context)
    {
        a(context, "_toolbox_coin", "r_f", Integer.valueOf(1));
    }

    public static void i(Context context)
    {
        a(context, "_toolbox_coin", "f_i", Integer.valueOf(1));
    }
}
