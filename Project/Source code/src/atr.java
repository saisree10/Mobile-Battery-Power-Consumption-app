// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.android.internal.os.BatteryStatsImpl;

public class atr
{

    public long a;
    public long b;
    public ats c;
    public atl d;
    public agi e;
    private BatteryStatsImpl f;
    private long g;
    private long h;
    private long i;
    private long j;
    private long k;
    private long l;
    private double m;
    private double n;
    private long o;
    private double p;
    private long q;
    private double r;
    private long s;

    public atr()
    {
        c = new ats();
        d = new atc();
        e = new agi();
    }

    static double a(atr atr1, double d1)
    {
        double d2 = d1 + atr1.m;
        atr1.m = d2;
        return d2;
    }

    static long a(atr atr1, long l1)
    {
        long l2 = l1 + atr1.k;
        atr1.k = l2;
        return l2;
    }

    static BatteryStatsImpl a(atr atr1)
    {
        return atr1.f;
    }

    static BatteryStatsImpl a(atr atr1, BatteryStatsImpl batterystatsimpl)
    {
        atr1.f = batterystatsimpl;
        return batterystatsimpl;
    }

    static double b(atr atr1)
    {
        return atr1.m;
    }

    static double b(atr atr1, double d1)
    {
        atr1.n = d1;
        return d1;
    }

    static long b(atr atr1, long l1)
    {
        long l2 = l1 + atr1.l;
        atr1.l = l2;
        return l2;
    }

    static double c(atr atr1)
    {
        return atr1.n;
    }

    static double c(atr atr1, double d1)
    {
        atr1.p = d1;
        return d1;
    }

    static long c(atr atr1, long l1)
    {
        long l2 = l1 + atr1.h;
        atr1.h = l2;
        return l2;
    }

    static double d(atr atr1, double d1)
    {
        atr1.r = d1;
        return d1;
    }

    static long d(atr atr1)
    {
        return atr1.o;
    }

    static long d(atr atr1, long l1)
    {
        long l2 = l1 + atr1.i;
        atr1.i = l2;
        return l2;
    }

    static double e(atr atr1)
    {
        return atr1.p;
    }

    static long e(atr atr1, long l1)
    {
        long l2 = l1 + atr1.j;
        atr1.j = l2;
        return l2;
    }

    static double f(atr atr1)
    {
        return atr1.r;
    }

    static long f(atr atr1, long l1)
    {
        long l2 = l1 + atr1.g;
        atr1.g = l2;
        return l2;
    }

    static long g(atr atr1)
    {
        return atr1.s;
    }

    static long g(atr atr1, long l1)
    {
        atr1.o = l1;
        return l1;
    }

    static long h(atr atr1)
    {
        return atr1.h;
    }

    static long h(atr atr1, long l1)
    {
        atr1.q = l1;
        return l1;
    }

    static long i(atr atr1)
    {
        return atr1.g;
    }

    static long i(atr atr1, long l1)
    {
        atr1.s = l1;
        return l1;
    }

    static long j(atr atr1)
    {
        return atr1.i;
    }
}
