// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.concurrent.Callable;

class bbf
    implements Callable
{

    final bbe a;

    bbf(bbe bbe1)
    {
        a = bbe1;
        super();
    }

    public Void a()
    {
label0:
        {
            synchronized (a)
            {
                if (bbe.a(a) != null)
                {
                    break label0;
                }
            }
            return null;
        }
        bbe.b(a);
        if (bbe.c(a))
        {
            bbe.d(a);
            bbe.a(a, 0);
        }
        bbe1;
        JVM INSTR monitorexit ;
        return null;
        exception;
        bbe1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Object call()
    {
        return a();
    }
}
