// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.concurrent.Callable;

class bbr
    implements Callable
{

    final bbq a;

    bbr(bbq bbq1)
    {
        a = bbq1;
        super();
    }

    public Void a()
    {
label0:
        {
            synchronized (a)
            {
                if (bbq.a(a) != null)
                {
                    break label0;
                }
            }
            return null;
        }
        bbq.b(a);
        if (bbq.c(a))
        {
            bbq.d(a);
            bbq.a(a, 0);
        }
        bbq1;
        JVM INSTR monitorexit ;
        return null;
        exception;
        bbq1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Object call()
    {
        return a();
    }
}
