// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;

public class nz
{

    private static boolean a = false;

    public static void a(String s, String s1)
    {
        if (a)
        {
            Log.w("DX-Toolbox", d(s, s1));
        }
    }

    public static void a(String s, String s1, Throwable throwable)
    {
        if (a)
        {
            Log.d("DX-Toolbox", d(s, s1), throwable);
        }
    }

    public static void a(boolean flag)
    {
        a = flag;
    }

    public static boolean a()
    {
        return a;
    }

    public static void b(String s, String s1)
    {
        if (a)
        {
            Log.d("DX-Toolbox", d(s, s1));
        }
    }

    public static void b(String s, String s1, Throwable throwable)
    {
        Log.e("DX-Toolbox", d(s, s1), throwable);
    }

    public static void c(String s, String s1)
    {
        Log.e("DX-Toolbox", d(s, s1));
    }

    private static String d(String s, String s1)
    {
        return "{" + Thread.currentThread().getName() + "}" + "[" + s + "] " + s1;
    }

}
