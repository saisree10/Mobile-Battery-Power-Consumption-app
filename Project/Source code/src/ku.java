// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

public class ku extends FutureTask
    implements Comparable
{

    final kt a;
    private Object b;

    public ku(kt kt, Runnable runnable, Object obj)
    {
        a = kt;
        super(runnable, obj);
        b = runnable;
    }

    public ku(kt kt, Callable callable)
    {
        a = kt;
        super(callable);
        b = callable;
    }

    public int a(ku ku1)
    {
        if (this != ku1)
        {
            if (ku1 == null)
            {
                return -1;
            }
            if (b != null && ku1.b != null && b.getClass().equals(ku1.b.getClass()) && (b instanceof Comparable))
            {
                return ((Comparable)b).compareTo(ku1.b);
            }
        }
        return 0;
    }

    public int compareTo(Object obj)
    {
        return a((ku)obj);
    }
}
