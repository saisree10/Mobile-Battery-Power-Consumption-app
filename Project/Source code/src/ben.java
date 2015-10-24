// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public abstract class ben
{

    protected bdr a;
    protected bei b;

    public ben(bdr bdr)
    {
        a = bdr;
        if (bdr instanceof bdz)
        {
            b = ((bdz)bdr).c();
        }
    }

    protected void a(double d, double d1, int i)
    {
        b.a(d, i);
        b.b(d1, i);
    }

    public void a(double ad[], int i)
    {
        if (a instanceof bdz)
        {
            double ad1[] = ((bdz)a).b(i);
            if (ad1 != null)
            {
                if (!b.h(i))
                {
                    ad[0] = ad1[0];
                    b.a(ad[0], i);
                }
                if (!b.j(i))
                {
                    ad[1] = ad1[1];
                    b.b(ad[1], i);
                }
                if (!b.l(i))
                {
                    ad[2] = ad1[2];
                    b.c(ad[2], i);
                }
                if (!b.n(i))
                {
                    ad[3] = ad1[3];
                    b.d(ad[3], i);
                }
            }
        }
    }

    public double[] a(int i)
    {
        return (new double[] {
            b.g(i), b.i(i), b.k(i), b.m(i)
        });
    }

    protected void b(double d, double d1, int i)
    {
        b.c(d, i);
        b.d(d1, i);
    }
}
