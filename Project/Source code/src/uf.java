// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

public class uf
{

    private static final uf c = new uf();
    private HandlerThread a;
    private Handler b;

    private uf()
    {
        a = new HandlerThread("Handler01", 10);
        a.start();
        b = new Handler(a.getLooper());
    }

    public static Looper a()
    {
        return c.b.getLooper();
    }

    public static boolean a(Runnable runnable)
    {
        uf;
        JVM INSTR monitorenter ;
        boolean flag = c.b.post(runnable);
        uf;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public static boolean a(Runnable runnable, long l)
    {
        uf;
        JVM INSTR monitorenter ;
        boolean flag = c.b.postDelayed(runnable, l);
        uf;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

}
