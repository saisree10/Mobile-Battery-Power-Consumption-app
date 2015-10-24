// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

public class auc
{

    private static auc f;
    private double a;
    private long b;
    private long c;
    private int d;
    private azr e;

    private auc(Context context)
    {
        e = azr.a(context);
        long al[] = e.e();
        b = al[0];
        c = al[1];
        if (c > 0L)
        {
            a = (double)b / (double)c;
        }
    }

    public static auc a(Context context)
    {
        if (f != null) goto _L2; else goto _L1
_L1:
        auc;
        JVM INSTR monitorenter ;
        if (f == null)
        {
            f = new auc(context.getApplicationContext());
        }
        auc;
        JVM INSTR monitorexit ;
_L2:
        return f;
        Exception exception;
        exception;
        auc;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(int i, long l)
    {
        b = b + (long)i;
        c = l + c;
        a = (double)b / (double)c;
        d = i + d;
        if (d > 10 || b < 20L)
        {
            d = 0;
            e.a(b, c);
        }
    }

    public boolean a()
    {
        return b >= 4L;
    }

    public double b()
    {
        return a;
    }
}
