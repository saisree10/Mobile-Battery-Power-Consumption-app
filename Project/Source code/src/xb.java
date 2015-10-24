// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class xb
{

    public long a;
    public xl b;
    public xl c;

    public xb()
    {
        b = new xl(-1);
        c = new xl(-1);
    }

    public void a(long l)
    {
        a = l;
        b.a(-1);
        c.a(-1);
    }

    public boolean a()
    {
        return b.d > 0 && c.d > 0;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("SystemStateItem[");
        stringbuilder.append("twoHour=").append(a);
        stringbuilder.append(", cpuLow=").append(b.a);
        stringbuilder.append(", cpuHigh=").append(b.b);
        stringbuilder.append(", cpuAverage=").append(b.c);
        stringbuilder.append(", cpuCount=").append(b.d);
        stringbuilder.append(", ramLow=").append(c.a);
        stringbuilder.append(", ramHigh=").append(c.b);
        stringbuilder.append(", ramAverage=").append(c.c);
        stringbuilder.append(", ramCount=").append(c.d);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
