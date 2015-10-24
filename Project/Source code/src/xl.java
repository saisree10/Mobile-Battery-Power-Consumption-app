// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class xl
{

    public int a;
    public int b;
    public int c;
    public int d;

    public xl(int i)
    {
        a(i);
    }

    public xl(int i, int j, int k, int l)
    {
        a = i;
        b = j;
        c = k;
        d = l;
    }

    public void a(int i)
    {
        a = i;
        b = i;
        c = i;
        d = 0;
    }

    public void a(int i, int j)
    {
        if (a == j || a > i)
        {
            a = i;
        }
        if (b == j || b < i)
        {
            b = i;
        }
        if (c == j)
        {
            c = i;
            d = 1;
            return;
        } else
        {
            long l = (long)c * (long)d + (long)i;
            d = 1 + d;
            c = (int)(l / (long)d);
            return;
        }
    }

    public void a(xl xl1)
    {
        if (d == 0)
        {
            a = xl1.a;
            b = xl1.b;
            c = xl1.c;
            d = xl1.d;
        } else
        if (xl1.d > 0)
        {
            if (xl1.a < a)
            {
                a = xl1.a;
            }
            if (xl1.b > b)
            {
                b = xl1.b;
            }
            long l = (long)c * (long)d + (long)xl1.c * (long)xl1.d;
            d = d + xl1.d;
            c = (int)(l / (long)d);
            return;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("AverageIntStat[");
        stringbuilder.append("low=").append(a);
        stringbuilder.append(", high=").append(b);
        stringbuilder.append(", average=").append(c);
        stringbuilder.append(", count=").append(d);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
