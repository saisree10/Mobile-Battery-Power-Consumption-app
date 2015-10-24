// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;

public class acu
{

    private acw a;
    private Context b;
    private int c;
    private int d;
    private volatile int e;
    private adh f;
    private b g;

    public acu(Context context, b b1)
    {
        d = 0x927c0;
        e = 102;
        b = context;
        f = adh.a(b);
        g = b1;
    }

    static b a(acu acu1)
    {
        return acu1.g;
    }

    private void a(int i)
    {
        c = 60000 * (i / 60000);
        f.b(c);
        b(c);
        Intent intent = new Intent("com.dianxinos.dxbs.HEALTHCHARGING");
        b.sendBroadcast(intent);
    }

    static void a(acu acu1, int i)
    {
        acu1.a(i);
    }

    private void b(int i)
    {
        if (i < 0x927c0)
        {
            e = 102;
            d = 0x927c0 - i;
            return;
        } else
        {
            e = 103;
            d = 0;
            return;
        }
    }

    static void b(acu acu1)
    {
        acu1.e();
    }

    private void e()
    {
        if (a != null)
        {
            a.b();
        }
        a = null;
        c = 0;
        f.b(c);
    }

    public void a()
    {
        if (a == null)
        {
            a = new acw(this, null);
        }
        if (a.a())
        {
            break MISSING_BLOCK_LABEL_58;
        }
        int i = f.b();
        b(i);
        a.a(i);
        a.start();
        return;
        Exception exception;
        exception;
        azt.a("BatteryChargingHelper", "ChargingTimer error", exception);
        return;
    }

    public void b()
    {
        e();
        if (a != null)
        {
            a.b();
        }
    }

    public int c()
    {
        return e;
    }

    public int d()
    {
        return d / 1000;
    }
}
