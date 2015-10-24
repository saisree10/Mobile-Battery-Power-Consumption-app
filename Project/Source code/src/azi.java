// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.HandlerThread;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class azi
{

    private static azi a;
    private ThreadPoolExecutor b;
    private HandlerThread c;
    private Handler d;

    private azi()
    {
        b = new ThreadPoolExecutor(2, 10, 60L, TimeUnit.SECONDS, new ArrayBlockingQueue(50));
        c = new HandlerThread("DXThreadPool");
        c.start();
        d = new Handler(c.getLooper());
    }

    public static azi a()
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        azi;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new azi();
        }
        azi;
        JVM INSTR monitorexit ;
_L2:
        return a;
        Exception exception;
        exception;
        azi;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(Runnable runnable)
    {
        this;
        JVM INSTR monitorenter ;
        Exception exception;
        if (runnable != null)
        {
            try
            {
                b.execute(runnable);
            }
            catch (RejectedExecutionException rejectedexecutionexception) { }
            finally
            {
                this;
            }
        }
        return;
        throw exception;
    }

    public void b(Runnable runnable)
    {
        d.post(runnable);
    }
}
