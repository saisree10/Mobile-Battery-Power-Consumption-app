// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;

public class ajj
{

    public static int a;
    public static boolean b;
    private static SharedPreferences c = null;

    public static int a()
    {
        return a;
    }

    public static int a(int i)
    {
        if (i >= a)
        {
            a = i;
        }
        return a;
    }

    public static int a(int i, boolean flag)
    {
        b = flag;
        int j;
        if (!b)
        {
            j = 2;
            if (i == 35)
            {
                j = 4;
            }
        } else
        if (i < 25)
        {
            j = 1;
        } else
        {
            j = 3;
        }
        if (j >= a)
        {
            a = j;
            return j;
        } else
        {
            return a;
        }
    }

    public static int a(Context context)
    {
        a = 1;
        if (!d(context))
        {
            return 1;
        } else
        {
            return c(context).getInt("last_state", 3);
        }
    }

    public static void a(Context context, int i)
    {
        SharedPreferences sharedpreferences = c(context);
        gm.a(sharedpreferences.edit().putLong("last_time", System.currentTimeMillis()));
        gm.a(sharedpreferences.edit().putInt("last_state", i));
    }

    public static int b(int i)
    {
        if (i <= 35)
        {
            return a(i, b);
        }
        int j;
        if (i < 80)
        {
            j = 2;
        } else
        if (i < 90)
        {
            j = 3;
        } else
        {
            j = 4;
        }
        if (j >= a)
        {
            a = j;
        }
        return a;
    }

    public static void b(Context context)
    {
        SharedPreferences sharedpreferences = c(context);
        gm.a(sharedpreferences.edit().putLong("diag_time", System.currentTimeMillis()));
        gm.a(sharedpreferences.edit().putLong("last_time", System.currentTimeMillis()));
    }

    private static SharedPreferences c(Context context)
    {
        if (c == null)
        {
            c = context.getSharedPreferences("diagnostic_config", 0);
        }
        return c;
    }

    private static boolean d(Context context)
    {
        for (long l = c(context).getLong("last_time", -1L); l == -1L || Math.abs(System.currentTimeMillis() - l) / 60000L > 5L;)
        {
            return false;
        }

        return true;
    }

}
