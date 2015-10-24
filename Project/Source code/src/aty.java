// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.SystemClock;

public class aty
    implements adc
{

    private static aty g;
    private Context a;
    private auc b;
    private boolean c;
    private boolean d;
    private int e;
    private long f;

    private aty(Context context)
    {
        c = false;
        d = false;
        e = -1;
        a = context.getApplicationContext();
        b = auc.a(context);
    }

    public static aty a(Context context)
    {
        if (g != null) goto _L2; else goto _L1
_L1:
        aty;
        JVM INSTR monitorenter ;
        if (g == null)
        {
            g = new aty(context);
        }
        aty;
        JVM INSTR monitorexit ;
_L2:
        return g;
        Exception exception;
        exception;
        aty;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a()
    {
        azt.a("BatteryStatsSimpleAnalyzer", "Start to work");
        acz.a(a).a(this);
    }

    public void a(add add1)
    {
        boolean flag;
        if (add1.a == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            d = false;
            c = false;
            e = add1.j;
            return;
        }
        if (!c)
        {
            if (add1.j >= e)
            {
                e = add1.j;
                return;
            }
            c = true;
        }
        if (!d)
        {
            d = true;
            e = add1.j;
            f = SystemClock.elapsedRealtime() / 1000L;
            return;
        } else
        {
            int i = add1.j;
            int j = e - i;
            long l = SystemClock.elapsedRealtime() / 1000L;
            long l1 = l - f;
            b.a(j, l1);
            e = i;
            f = l;
            return;
        }
    }

    public void b()
    {
        azt.a("BatteryStatsSimpleAnalyzer", "Stop to work");
        acz.a(a).b(this);
    }
}
