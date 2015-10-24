// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Message;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class bat
{

    private static final ThreadFactory a;
    public static final Executor b;
    public static final Executor c;
    public static final Executor d;
    private static final BlockingQueue e;
    private static final baz f = new baz(null);
    private static volatile Executor g;
    private final bbd h = new bav(this);
    private final FutureTask i;
    private volatile bbc j;
    private final AtomicBoolean k = new AtomicBoolean();
    private final AtomicBoolean l = new AtomicBoolean();

    public bat()
    {
        j = bbc.a;
        i = new baw(this, h);
    }

    static Object a(bat bat1, Object obj)
    {
        return bat1.d(obj);
    }

    static AtomicBoolean a(bat bat1)
    {
        return bat1.l;
    }

    static void b(bat bat1, Object obj)
    {
        bat1.c(obj);
    }

    static void c(bat bat1, Object obj)
    {
        bat1.e(obj);
    }

    private void c(Object obj)
    {
        if (!l.get())
        {
            d(obj);
        }
    }

    private Object d(Object obj)
    {
        f.obtainMessage(1, new bay(this, new Object[] {
            obj
        })).sendToTarget();
        return obj;
    }

    private void e(Object obj)
    {
        if (d())
        {
            b(obj);
        } else
        {
            a(obj);
        }
        j = bbc.c;
    }

    public final transient bat a(Executor executor, Object aobj[])
    {
        if (j == bbc.a) goto _L2; else goto _L1
_L1:
        bax.a[j.ordinal()];
        JVM INSTR tableswitch 1 2: default 44
    //                   1 75
    //                   2 85;
           goto _L2 _L3 _L4
_L2:
        j = bbc.b;
        a();
        h.b = aobj;
        executor.execute(i);
        return this;
_L3:
        throw new IllegalStateException("Cannot execute task: the task is already running.");
_L4:
        throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
    }

    protected transient abstract Object a(Object aobj[]);

    protected void a()
    {
    }

    protected void a(Object obj)
    {
    }

    public final boolean a(boolean flag)
    {
        k.set(true);
        return i.cancel(flag);
    }

    public final bbc b()
    {
        return j;
    }

    protected void b(Object obj)
    {
        c();
    }

    protected transient void b(Object aobj[])
    {
    }

    public final transient bat c(Object aobj[])
    {
        return a(g, aobj);
    }

    protected void c()
    {
    }

    protected final transient void d(Object aobj[])
    {
        if (!d())
        {
            f.obtainMessage(2, new bay(this, aobj)).sendToTarget();
        }
    }

    public final boolean d()
    {
        return k.get();
    }

    static 
    {
        a = new bau();
        e = new LinkedBlockingQueue(10);
        b = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, e, a, new java.util.concurrent.ThreadPoolExecutor.DiscardOldestPolicy());
        Object obj;
        if (bbp.a())
        {
            obj = new bba(null);
        } else
        {
            obj = Executors.newSingleThreadExecutor(a);
        }
        c = ((Executor) (obj));
        d = Executors.newFixedThreadPool(2, a);
        g = c;
    }
}
