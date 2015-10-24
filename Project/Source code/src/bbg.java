// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.FileOutputStream;
import java.io.OutputStream;

public final class bbg
{

    final bbe a;
    private final bbi b;
    private boolean c;

    private bbg(bbe bbe1, bbi bbi1)
    {
        a = bbe1;
        super();
        b = bbi1;
    }

    bbg(bbe bbe1, bbi bbi1, bbf bbf)
    {
        this(bbe1, bbi1);
    }

    static bbi a(bbg bbg1)
    {
        return bbg1.b;
    }

    static boolean a(bbg bbg1, boolean flag)
    {
        bbg1.c = flag;
        return flag;
    }

    public OutputStream a(int i)
    {
        bbe bbe1 = a;
        bbe1;
        JVM INSTR monitorenter ;
        if (bbi.a(b) != this)
        {
            throw new IllegalStateException();
        }
        break MISSING_BLOCK_LABEL_31;
        Exception exception;
        exception;
        bbe1;
        JVM INSTR monitorexit ;
        throw exception;
        bbh bbh1 = new bbh(this, new FileOutputStream(b.b(i)), null);
        bbe1;
        JVM INSTR monitorexit ;
        return bbh1;
    }

    public void a()
    {
        if (c)
        {
            bbe.a(a, this, false);
            a.c(bbi.c(b));
            return;
        } else
        {
            bbe.a(a, this, true);
            return;
        }
    }

    public void b()
    {
        bbe.a(a, this, false);
    }
}
