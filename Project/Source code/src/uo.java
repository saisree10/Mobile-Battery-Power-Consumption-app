// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

class uo
    implements RejectedExecutionHandler
{

    final un a;

    uo(un un)
    {
        a = un;
        super();
    }

    public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadpoolexecutor)
    {
        try
        {
            threadpoolexecutor.getQueue().put(runnable);
            return;
        }
        catch (Exception exception)
        {
            vt.a("", exception);
        }
    }
}
