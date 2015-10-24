// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class wv
{

    public long a;
    public long b;
    public long c;
    public int d;
    public long e;
    public long f;
    public long g;
    public long h;

    public wv()
    {
    }

    public void a()
    {
        a = 0L;
        b = 0L;
        c = 0L;
        d = 0;
        e = 0L;
        f = 0L;
        g = 0L;
        h = 0L;
    }

    public void a(xq xq1)
    {
        b = xq1.b;
        c = xq1.c;
        d = xq1.d;
        e = xq1.e;
        f = xq1.f;
        g = xq1.g;
        h = xq1.h;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("PowerData[");
        stringbuilder.append("timeUsed=").append(a);
        stringbuilder.append(", cpuTime=").append(b);
        stringbuilder.append(", cpuWakelockTime=").append(c);
        stringbuilder.append(", cpuWakeupCount=").append(d);
        stringbuilder.append(", wifiRunningTime=").append(e);
        stringbuilder.append(", gpsRunningTime=").append(f);
        stringbuilder.append(", audioTime=").append(g);
        stringbuilder.append(", videoTime=").append(h);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
