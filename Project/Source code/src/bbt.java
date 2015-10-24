// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;

public final class bbt
{

    final bbq a;
    private final bbv b;
    private final boolean c[];
    private boolean d;
    private boolean e;

    private bbt(bbq bbq1, bbv bbv1)
    {
        a = bbq1;
        super();
        b = bbv1;
        boolean aflag[];
        if (bbv.d(bbv1))
        {
            aflag = null;
        } else
        {
            aflag = new boolean[bbq.e(bbq1)];
        }
        c = aflag;
    }

    bbt(bbq bbq1, bbv bbv1, bbr bbr)
    {
        this(bbq1, bbv1);
    }

    static bbv a(bbt bbt1)
    {
        return bbt1.b;
    }

    static boolean a(bbt bbt1, boolean flag)
    {
        bbt1.d = flag;
        return flag;
    }

    static boolean[] b(bbt bbt1)
    {
        return bbt1.c;
    }

    public OutputStream a(int i)
    {
        bbq bbq1 = a;
        bbq1;
        JVM INSTR monitorenter ;
        if (bbv.a(b) != this)
        {
            throw new IllegalStateException();
        }
        break MISSING_BLOCK_LABEL_31;
        Exception exception;
        exception;
        bbq1;
        JVM INSTR monitorexit ;
        throw exception;
        File file;
        if (!bbv.d(b))
        {
            c[i] = true;
        }
        file = b.b(i);
        FileOutputStream fileoutputstream = new FileOutputStream(file);
        FileOutputStream fileoutputstream1 = fileoutputstream;
_L1:
        bbu bbu1 = new bbu(this, fileoutputstream1, null);
        bbq1;
        JVM INSTR monitorexit ;
        return bbu1;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        bbq.f(a).mkdirs();
        FileOutputStream fileoutputstream2 = new FileOutputStream(file);
        fileoutputstream1 = fileoutputstream2;
          goto _L1
        FileNotFoundException filenotfoundexception1;
        filenotfoundexception1;
        OutputStream outputstream = bbq.d();
        bbq1;
        JVM INSTR monitorexit ;
        return outputstream;
    }

    public void a()
    {
        if (d)
        {
            bbq.a(a, this, false);
            a.c(bbv.c(b));
        } else
        {
            bbq.a(a, this, true);
        }
        e = true;
    }

    public void b()
    {
        bbq.a(a, this, false);
    }
}
