// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

class ra
{

    private static final ThreadFactory a = new rb();
    private static final BlockingQueue b = new LinkedBlockingQueue(64);
    private static ra c;
    private ThreadPoolExecutor d;

    private ra()
    {
        d = new ThreadPoolExecutor(5, 32, 1L, TimeUnit.SECONDS, b, a);
    }

    public static ra a()
    {
        ra;
        JVM INSTR monitorenter ;
        ra ra1;
        if (c == null)
        {
            c = new ra();
        }
        ra1 = c;
        ra;
        JVM INSTR monitorexit ;
        return ra1;
        Exception exception;
        exception;
        throw exception;
    }

    public static void b(Runnable runnable)
    {
        a().a(runnable);
    }

    public void a(Runnable runnable)
    {
        d.execute(runnable);
    }

}
