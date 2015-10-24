// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;

public class om
{

    private static final Object a = new Object();

    public static int a(Context context)
    {
        return context.getSharedPreferences("_toolbox_prefs", 0).getInt("local_coin", 50);
    }

    static int a(Context context, String s)
    {
        return context.getSharedPreferences("_toolbox_prefs", 0).getInt((new StringBuilder()).append("toolbox_fileversion_").append(s).toString(), 0);
    }

    public static void a(Context context, int i)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        editor.putInt("local_coin", i);
        editor.commit();
    }

    public static void a(Context context, long l)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        editor.putLong("recenty_viewed", l);
        if (android.os.Build.VERSION.SDK_INT >= 9)
        {
            editor.apply();
            return;
        } else
        {
            editor.commit();
            return;
        }
    }

    static void a(Context context, String s, int i)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        editor.putInt((new StringBuilder()).append("toolbox_fileversion_").append(s).toString(), i);
        editor.commit();
    }

    static void a(Context context, String s, long l)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        editor.putLong((new StringBuilder()).append("last_pull_").append(s).toString(), l);
        editor.commit();
    }

    public static void a(Context context, String s, boolean flag)
    {
        if (flag && "tctb".equals(s))
        {
            b(context, -1);
        }
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        editor.putBoolean((new StringBuilder()).append("toolbox_has_new_").append(s).toString(), flag);
        editor.commit();
    }

    public static void a(Context context, oo oo1, long l)
    {
        on.a[oo1.ordinal()];
        JVM INSTR tableswitch 1 4: default 40
    //                   1 41
    //                   2 79
    //                   3 86
    //                   4 93;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return;
_L2:
        String s = "key_last_query_time";
_L7:
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        editor.putLong(s, l);
        editor.commit();
        return;
_L3:
        s = "key_last_increase_time";
        continue; /* Loop/switch isn't completed */
_L4:
        s = "key_last_by_coin_time";
        continue; /* Loop/switch isn't completed */
_L5:
        s = "key_last_by_play_time";
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static void a(Context context, oo oo1, boolean flag)
    {
        on.a[oo1.ordinal()];
        JVM INSTR tableswitch 1 4: default 40
    //                   1 41
    //                   2 77
    //                   3 83
    //                   4 89;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return;
_L2:
        String s = "key_query_succ";
_L7:
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        editor.putBoolean(s, flag);
        editor.commit();
        return;
_L3:
        s = "key_increase_succ";
        continue; /* Loop/switch isn't completed */
_L4:
        s = "key_by_coin_succ";
        continue; /* Loop/switch isn't completed */
_L5:
        s = "key_by_play_succ";
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static void a(Context context, boolean flag)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        editor.putBoolean("tapjoy_entered", flag);
        editor.commit();
    }

    public static boolean a(Context context, oo oo1)
    {
        on.a[oo1.ordinal()];
        JVM INSTR tableswitch 1 4: default 40
    //                   1 42
    //                   2 60
    //                   3 66
    //                   4 72;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return true;
_L2:
        String s = "key_query_succ";
_L7:
        return context.getSharedPreferences("_toolbox_prefs", 0).getBoolean(s, true);
_L3:
        s = "key_increase_succ";
        continue; /* Loop/switch isn't completed */
_L4:
        s = "key_by_coin_succ";
        continue; /* Loop/switch isn't completed */
_L5:
        s = "key_by_play_succ";
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static void b(Context context, int i)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        editor.putInt("key_last_tctb", i);
        editor.commit();
    }

    public static void b(Context context, long l)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        editor.putLong("last_refresh_coin", l);
        editor.commit();
    }

    public static void b(Context context, String s, long l)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        editor.putLong((new StringBuilder()).append("last_modified_").append(s).toString(), l);
        editor.commit();
    }

    public static void b(Context context, oo oo1, boolean flag)
    {
        on.a[oo1.ordinal()];
        JVM INSTR tableswitch 1 4: default 40
    //                   1 41
    //                   2 77
    //                   3 83
    //                   4 89;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return;
_L2:
        String s = "key_query_failed_again";
_L7:
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        editor.putBoolean(s, flag);
        editor.commit();
        return;
_L3:
        s = "key_increase_failed_again";
        continue; /* Loop/switch isn't completed */
_L4:
        s = "key_by_coin_failed_again";
        continue; /* Loop/switch isn't completed */
_L5:
        s = "key_by_play_failed_again";
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static boolean b(Context context)
    {
        return context.getSharedPreferences("_toolbox_prefs", 0).getBoolean("toolbox_need_show", true);
    }

    public static boolean b(Context context, String s)
    {
        return context.getSharedPreferences("_toolbox_prefs", 0).getBoolean((new StringBuilder()).append("toolbox_has_new_").append(s).toString(), false);
    }

    public static boolean b(Context context, oo oo1)
    {
        on.a[oo1.ordinal()];
        JVM INSTR tableswitch 1 4: default 40
    //                   1 42
    //                   2 60
    //                   3 66
    //                   4 72;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return false;
_L2:
        String s = "key_query_failed_again";
_L7:
        return context.getSharedPreferences("_toolbox_prefs", 0).getBoolean(s, false);
_L3:
        s = "key_increase_failed_again";
        continue; /* Loop/switch isn't completed */
_L4:
        s = "key_by_coin_failed_again";
        continue; /* Loop/switch isn't completed */
_L5:
        s = "key_by_play_failed_again";
        if (true) goto _L7; else goto _L6
_L6:
    }

    static long c(Context context, String s)
    {
        return context.getSharedPreferences("_toolbox_prefs", 0).getLong((new StringBuilder()).append("last_pull_").append(s).toString(), 0L);
    }

    public static long c(Context context, oo oo1)
    {
        on.a[oo1.ordinal()];
        JVM INSTR tableswitch 1 4: default 40
    //                   1 42
    //                   2 60
    //                   3 66
    //                   4 72;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return 0L;
_L2:
        String s = "key_last_query_time";
_L7:
        return context.getSharedPreferences("_toolbox_prefs", 0).getLong(s, 0L);
_L3:
        s = "key_last_increase_time";
        continue; /* Loop/switch isn't completed */
_L4:
        s = "key_last_by_coin_time";
        continue; /* Loop/switch isn't completed */
_L5:
        s = "key_last_by_play_time";
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static String c(Context context)
    {
        String s = context.getSharedPreferences("_toolbox_prefs", 0).getString("atocken", null);
        byte abyte0[];
        if (s == null)
        {
            abyte0 = new byte[0];
        } else
        {
            abyte0 = lq.a(s.getBytes(), 0);
        }
        return new String(abyte0);
    }

    public static long d(Context context)
    {
        return context.getSharedPreferences("_toolbox_prefs", 0).getLong("recenty_viewed", 0L);
    }

    static void d(Context context, String s)
    {
        a(context, s, System.currentTimeMillis());
    }

    public static int e(Context context)
    {
        return context.getSharedPreferences("_toolbox_prefs", 0).getInt("key_last_tctb", -1);
    }

    public static void e(Context context, String s)
    {
        String s1;
        android.content.SharedPreferences.Editor editor;
        if (TextUtils.isEmpty(s))
        {
            s1 = lq.b(new byte[0], 0);
        } else
        {
            s1 = lq.b(s.getBytes(), 0);
        }
        editor = context.getSharedPreferences("_toolbox_prefs", 0).edit();
        editor.putString("atocken", s1);
        editor.commit();
    }

    public static int f(Context context, String s)
    {
        int i;
        synchronized (a)
        {
            String s1 = (new StringBuilder()).append("net_").append(s).toString();
            SharedPreferences sharedpreferences = context.getSharedPreferences("_toolbox_prefs", 0);
            i = sharedpreferences.getInt(s1, 1);
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putInt(s1, i + 1);
            editor.commit();
        }
        return i;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static long f(Context context)
    {
        return context.getSharedPreferences("_toolbox_prefs", 0).getLong("last_refresh_coin", 0L);
    }

    public static void g(Context context, String s)
    {
        synchronized (a)
        {
            String s1 = (new StringBuilder()).append("net_").append(s).toString();
            android.content.SharedPreferences.Editor editor = context.getSharedPreferences("_toolbox_prefs", 0).edit();
            editor.putInt(s1, 1);
            editor.commit();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static boolean g(Context context)
    {
        return context.getSharedPreferences("_toolbox_prefs", 0).getBoolean("tapjoy_entered", false);
    }

    public static long h(Context context, String s)
    {
        return context.getSharedPreferences("_toolbox_prefs", 0).getLong((new StringBuilder()).append("last_modified_").append(s).toString(), 0L);
    }

}
