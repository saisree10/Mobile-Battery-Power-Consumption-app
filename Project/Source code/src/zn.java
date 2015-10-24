// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class zn
{

    public long a;
    public long b;
    public long c;
    public long d;

    public zn()
    {
    }

    public int a(zn zn1)
    {
        long l = zn1.a();
        long l1 = a();
        if (l1 == l)
        {
            return 0;
        } else
        {
            return 1000 - (int)((1000L * (d - zn1.d)) / (l1 - l));
        }
    }

    public long a()
    {
        return a + b + c + d;
    }

    public String toString()
    {
        return (new StringBuilder()).append("CpuStat [utime=").append(a).append(", ntime=").append(b).append(", stime=").append(c).append(", itime=").append(d).append("]").toString();
    }
}
