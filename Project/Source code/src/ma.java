// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;

public class ma
{

    public static int a(Context context)
    {
        return context.getSharedPreferences("_common_toolbox_coin_config", 0).getInt("limitation", 100);
    }

    public static void a(Context context, int i)
    {
        nz.b("CoinConfigDataHelper", (new StringBuilder()).append("update limitation: ").append(i).toString());
        context.getSharedPreferences("_common_toolbox_coin_config", 0).edit().putInt("limitation", i).commit();
    }

    public static void a(Context context, long l)
    {
        context.getSharedPreferences("_common_toolbox_coin_config", 0).edit().putLong("pull_time", l).commit();
    }

    public static long b(Context context)
    {
        return context.getSharedPreferences("_common_toolbox_coin_config", 0).getLong("pull_time", 0L);
    }
}
