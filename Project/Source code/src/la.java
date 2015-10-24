// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;

public class la
{

    public static int a = 5;

    public static void a(String s, String s1)
    {
        if (a <= 2)
        {
            Log.v(s, s1);
        }
    }

    public static void a(String s, String s1, Throwable throwable)
    {
        if (a <= 2)
        {
            Log.v(s, s1, throwable);
        }
    }

    public static void b(String s, String s1)
    {
        if (a <= 3)
        {
            Log.d(s, s1);
        }
    }

    public static void b(String s, String s1, Throwable throwable)
    {
        if (a <= 3)
        {
            Log.d(s, s1, throwable);
        }
    }

    public static void c(String s, String s1)
    {
        if (a <= 4)
        {
            Log.i(s, s1);
        }
    }

}
