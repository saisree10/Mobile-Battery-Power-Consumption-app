// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;

public class jo
{

    public static int a(Context context, String s, int i)
    {
        return context.getSharedPreferences("app-update-prefs", 0).getInt(s, i);
    }

    public static long a(Context context, String s, long l)
    {
        return context.getSharedPreferences("app-update-prefs", 0).getLong(s, l);
    }

    public static String a(Context context, String s)
    {
        return a(context, s, ((String) (null)));
    }

    public static String a(Context context, String s, String s1)
    {
        return context.getSharedPreferences("app-update-prefs", 0).getString(s, s1);
    }

    public static boolean a(Context context, String s, boolean flag)
    {
        return context.getSharedPreferences("app-update-prefs", 0).getBoolean(s, flag);
    }

    public static void b(Context context, String s, int i)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("app-update-prefs", 0).edit();
        editor.putInt(s, i);
        editor.commit();
    }

    public static void b(Context context, String s, long l)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("app-update-prefs", 0).edit();
        editor.putLong(s, l);
        editor.commit();
    }

    public static void b(Context context, String s, String s1)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("app-update-prefs", 0).edit();
        editor.putString(s, s1);
        editor.commit();
    }

    public static void b(Context context, String s, boolean flag)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("app-update-prefs", 0).edit();
        editor.putBoolean(s, flag);
        editor.commit();
    }
}
