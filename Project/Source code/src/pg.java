// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class pg
{

    private static final ThreadFactory a = new ph();
    private static final BlockingQueue b = new LinkedBlockingQueue(200);
    private static pg c;
    private ThreadPoolExecutor d;

    private pg()
    {
        d = new ThreadPoolExecutor(5, 50, 1L, TimeUnit.SECONDS, b, a);
    }

    public static pg a()
    {
        pg;
        JVM INSTR monitorenter ;
        pg pg1;
        if (c == null)
        {
            c = new pg();
        }
        pg1 = c;
        pg;
        JVM INSTR monitorexit ;
        return pg1;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(Runnable runnable)
    {
        d.execute(runnable);
    }

}
