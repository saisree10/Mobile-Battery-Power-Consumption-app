// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;

public class xz
{

    private static String a(Throwable throwable)
    {
        StringWriter stringwriter = new StringWriter(1024);
        PrintWriter printwriter = new PrintWriter(stringwriter);
        throwable.printStackTrace(printwriter);
        printwriter.close();
        return stringwriter.toString();
    }

    public static void a(String s, String s1)
    {
        Log.d("CommonTools", c(s, s1));
    }

    public static void a(String s, String s1, Throwable throwable)
    {
        Log.w("CommonTools", c(s, (new StringBuilder()).append(s1).append(" Exception: ").append(a(throwable)).toString()));
    }

    public static void b(String s, String s1)
    {
        Log.w("CommonTools", c(s, s1));
    }

    private static String c(String s, String s1)
    {
        return (new StringBuilder()).append("[").append(s).append("] ").append(s1).toString();
    }
}
