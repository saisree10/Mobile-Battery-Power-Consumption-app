// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

public class aap
    implements ade
{

    private static volatile aap a;
    private add b;
    private int c;
    private arr d;
    private Context e;

    private aap(Context context)
    {
        c = -1;
        e = context;
        d = arr.a(e);
    }

    public static aap a(Context context)
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        aap;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new aap(context);
        }
        aap;
        JVM INSTR monitorexit ;
_L2:
        return a;
        Exception exception;
        exception;
        aap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void c(int i)
    {
        c = d.a(i);
    }

    public void a(add add1)
    {
        if (b != null)
        {
            c = b.j;
            d.b(c);
        }
        b = add1;
    }

    public boolean a(int i)
    {
        if (c == -1)
        {
            c(b.c);
        }
        return b.j <= i && c > i;
    }

    public boolean b(int i)
    {
        if (c != -1) goto _L2; else goto _L1
_L1:
        if (b != null) goto _L4; else goto _L3
_L3:
        azt.c("LowBatteryMgr", "LAST_BATTERY_PERCENT_DEFAULT not initialized.");
_L6:
        return false;
_L4:
        c(b.c);
_L2:
        if (b.j > i && c <= i)
        {
            return true;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
