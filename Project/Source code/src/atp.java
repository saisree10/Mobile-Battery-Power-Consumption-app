// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class atp extends Thread
{

    final ato a;

    atp(ato ato1)
    {
        a = ato1;
        super();
    }

    public void run()
    {
        ato.a(a);
        synchronized (ato.b(a))
        {
            ato.a(a, false);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
