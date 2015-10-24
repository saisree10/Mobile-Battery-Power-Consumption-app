// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class kt extends ThreadPoolExecutor
{

    public kt(int i, int j, long l, TimeUnit timeunit, PriorityBlockingQueue priorityblockingqueue, RejectedExecutionHandler rejectedexecutionhandler)
    {
        super(i, j, l, timeunit, priorityblockingqueue, rejectedexecutionhandler);
    }

    public Future submit(Runnable runnable)
    {
        if (runnable == null)
        {
            throw new NullPointerException();
        } else
        {
            ku ku1 = new ku(this, runnable, null);
            execute(ku1);
            return ku1;
        }
    }

    public Future submit(Runnable runnable, Object obj)
    {
        if (runnable == null)
        {
            throw new NullPointerException();
        } else
        {
            ku ku1 = new ku(this, runnable, obj);
            execute(ku1);
            return ku1;
        }
    }

    public Future submit(Callable callable)
    {
        if (callable == null)
        {
            throw new NullPointerException();
        } else
        {
            ku ku1 = new ku(this, callable);
            execute(ku1);
            return ku1;
        }
    }
}
