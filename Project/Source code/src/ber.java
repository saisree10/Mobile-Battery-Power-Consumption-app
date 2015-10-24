// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ber extends ben
{

    private boolean c;
    private float d;
    private List e;
    private boolean f;
    private boolean g;

    public ber(bdr bdr, boolean flag, float f1)
    {
        super(bdr);
        e = new ArrayList();
        f = false;
        g = false;
        c = flag;
        a(f1);
    }

    private void a(bes bes1)
    {
        this;
        JVM INSTR monitorenter ;
        for (Iterator iterator = e.iterator(); iterator.hasNext(); ((bet)iterator.next()).a(bes1)) { }
        break MISSING_BLOCK_LABEL_44;
        Exception exception;
        exception;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

    public void a()
    {
        this;
        JVM INSTR monitorenter ;
        for (Iterator iterator = e.iterator(); iterator.hasNext(); ((bet)iterator.next()).a()) { }
        break MISSING_BLOCK_LABEL_43;
        Exception exception;
        exception;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

    public void a(float f1)
    {
        d = f1;
    }

    public void b(int i)
    {
        if (a instanceof bdz)
        {
            int j = b.ak();
            int k = 0;
            while (k < j) 
            {
                double ad[] = a(k);
                a(ad, k);
                double ad1[] = b.X();
                double d1 = (ad[0] + ad[1]) / 2D;
                double d2 = (ad[2] + ad[3]) / 2D;
                double d3 = ad[1] - ad[0];
                double d4 = ad[3] - ad[2];
                double d5 = d1 - d3 / 2D;
                double d6 = d1 + d3 / 2D;
                double d7 = d2 - d4 / 2D;
                double d8 = d2 + d4 / 2D;
                if (k == 0)
                {
                    double d13;
                    double d14;
                    boolean flag;
                    boolean flag1;
                    if (ad1 != null && (d5 <= ad1[0] || d6 >= ad1[1]))
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    f = flag;
                    if (ad1 != null && (d7 <= ad1[2] || d8 >= ad1[3]))
                    {
                        flag1 = true;
                    } else
                    {
                        flag1 = false;
                    }
                    g = flag1;
                }
                if (c)
                {
                    bef bef1;
                    double d9;
                    double d10;
                    double d11;
                    double d12;
                    double d15;
                    if (b.S() && (i == 1 || i == 0))
                    {
                        if (f && d < 1.0F)
                        {
                            d15 = d3;
                        } else
                        {
                            d15 = d3 / (double)d;
                        }
                    } else
                    {
                        d15 = d3;
                    }
                    if (b.T() && (i == 2 || i == 0))
                    {
                        if (g && d < 1.0F)
                        {
                            d9 = d4;
                            d10 = d15;
                        } else
                        {
                            d9 = d4 / (double)d;
                            d10 = d15;
                        }
                    } else
                    {
                        d9 = d4;
                        d10 = d15;
                    }
                } else
                {
                    if (b.S() && !f && (i == 1 || i == 0))
                    {
                        d3 *= d;
                    }
                    if (b.T() && !g && (i == 2 || i == 0))
                    {
                        d9 = d4 * (double)d;
                        d10 = d3;
                    } else
                    {
                        d9 = d4;
                        d10 = d3;
                    }
                }
                if (ad1 != null)
                {
                    d11 = Math.min(b.ai(), ad1[1] - ad1[0]);
                    d12 = Math.min(b.aj(), ad1[3] - ad1[2]);
                } else
                {
                    d11 = b.ai();
                    d12 = b.aj();
                }
                d13 = Math.max(d10, d11);
                d14 = Math.max(d9, d12);
                if (b.S() && (i == 1 || i == 0))
                {
                    a(d1 - d13 / 2D, d1 + d13 / 2D, k);
                }
                if (b.T() && (i == 2 || i == 0))
                {
                    b(d2 - d14 / 2D, d2 + d14 / 2D, k);
                }
                k++;
            }
        } else
        {
            bef1 = ((bdw)a).a();
            if (c)
            {
                bef1.b(bef1.v() * d);
            } else
            {
                bef1.b(bef1.v() / d);
            }
        }
        a(new bes(c, d));
    }
}
