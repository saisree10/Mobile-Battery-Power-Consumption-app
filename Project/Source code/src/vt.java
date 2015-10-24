// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;

public class vt
{

    private static String a = "DXFB";

    public static void a(String s, Exception exception)
    {
        if (a())
        {
            Log.e(a, (new StringBuilder()).append(s).append(" exception track --------------------------------").toString());
            exception.printStackTrace();
        }
    }

    public static void a(String s, String s1)
    {
        if (a())
        {
            String s2 = (new StringBuilder()).append(s).append(" ").append(s1).toString();
            Log.e(a, s2);
        }
    }

    private static boolean a()
    {
        return "test".equals(un.a()) || "dev".equals(un.a());
    }

    public static void b(String s, String s1)
    {
        if (a())
        {
            String s2 = (new StringBuilder()).append(s).append(" ").append(s1).toString();
            Log.d(a, s2);
        }
    }

    public static void c(String s, String s1)
    {
        if (a())
        {
            String s2 = (new StringBuilder()).append(s).append(" ").append(s1).toString();
            Log.i(a, s2);
        }
    }

    public static void d(String s, String s1)
    {
        if (a())
        {
            String s2 = (new StringBuilder()).append(s).append(" ").append(s1).toString();
            Log.w(a, s2);
        }
    }

}
