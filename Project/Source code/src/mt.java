// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;

public class mt
{

    private static SharedPreferences a;

    public mt()
    {
    }

    public static long a(Context context, long l)
    {
        mt;
        JVM INSTR monitorenter ;
        long l1 = a(context).getLong("splash_time", l);
        mt;
        JVM INSTR monitorexit ;
        return l1;
        Exception exception;
        exception;
        throw exception;
    }

    private static SharedPreferences a(Context context)
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        mt;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = context.getSharedPreferences("splash_nettimes", 0);
        }
        mt;
        JVM INSTR monitorexit ;
_L2:
        return a;
        Exception exception;
        exception;
        mt;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void a(Context context, String s)
    {
        mt;
        JVM INSTR monitorenter ;
        a(context).edit().putString("splash_content", s).commit();
        mt;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static String b(Context context, String s)
    {
        mt;
        JVM INSTR monitorenter ;
        String s1 = a(context).getString("splash_content", s);
        mt;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public static void b(Context context, long l)
    {
        mt;
        JVM INSTR monitorenter ;
        a(context).edit().putLong("splash_time", l).commit();
        mt;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
