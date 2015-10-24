// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;

public class in
{

    private static String a = "DXAP";

    public static void a(String s, String s1)
    {
        String s2 = (new StringBuilder()).append(s).append(" ").append(s1).toString();
        Log.e(a, s2);
    }

    private static boolean a()
    {
        return ij.a;
    }

    public static void b(String s, String s1)
    {
        String s2 = (new StringBuilder()).append(s).append(" ").append(s1).toString();
        if (a())
        {
            Log.d(a, s2);
        }
    }

    public static void c(String s, String s1)
    {
        String s2 = (new StringBuilder()).append(s).append(" ").append(s1).toString();
        if (a())
        {
            Log.i(a, s2);
        }
    }

    public static void d(String s, String s1)
    {
        String s2 = (new StringBuilder()).append(s).append(" ").append(s1).toString();
        if (a())
        {
            Log.w(a, s2);
        }
    }

}
