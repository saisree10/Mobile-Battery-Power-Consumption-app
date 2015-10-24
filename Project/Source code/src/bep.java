// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class bep extends ben
{

    private List c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;

    public bep(bdr bdr)
    {
        super(bdr);
        c = new ArrayList();
        d = false;
        e = false;
        f = true;
    }

    private double a(double ad[])
    {
        return Math.abs(ad[1] - ad[0]) / Math.abs(ad[3] - ad[2]);
    }

    private void b()
    {
        this;
        JVM INSTR monitorenter ;
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((beq)iterator.next()).a()) { }
        break MISSING_BLOCK_LABEL_43;
        Exception exception;
        exception;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

    public void a(float f1, float f2, float f3, float f4)
    {
        boolean flag;
        boolean flag1;
        double ad[];
        boolean flag2;
        bdz bdz1;
        int j;
        double ad1[];
        flag = true;
        flag1 = true;
        f = true;
        g = true;
        if (!(a instanceof bdz))
        {
            break MISSING_BLOCK_LABEL_556;
        }
        int i = b.ak();
        ad = b.W();
        double ad2[];
        if (ad != null && ad.length == 4)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        bdz1 = (bdz)a;
        j = 0;
_L3:
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_596;
        }
        ad1 = a(j);
        ad2 = bdz1.b(j);
        if (d && e && (ad1[0] == ad1[1] && ad2[0] == ad2[1] || ad1[2] == ad1[3] && ad2[2] == ad2[3]))
        {
            return;
        }
        a(ad1, j);
        double ad3[] = bdz1.a(f1, f2, j);
        double ad4[] = bdz1.a(f3, f4, j);
        double d1 = ad3[0] - ad4[0];
        double d2 = ad3[1] - ad4[1];
        double d3 = a(ad1);
        bdw bdw1;
        double d4;
        double d5;
        boolean flag3;
        boolean flag4;
        if (bdz1.a(b))
        {
            double d6 = d3 * -d2;
            d5 = d1 / d3;
            d4 = d6;
        } else
        {
            d4 = d1;
            d5 = d2;
        }
        if (b.Q())
        {
            if (ad != null)
            {
                if (f)
                {
                    boolean flag8;
                    if (ad[0] <= d4 + ad1[0])
                    {
                        flag8 = true;
                    } else
                    {
                        flag8 = false;
                    }
                    f = flag8;
                }
                if (g)
                {
                    boolean flag7;
                    if (ad[1] >= d4 + ad1[1])
                    {
                        flag7 = true;
                    } else
                    {
                        flag7 = false;
                    }
                    g = flag7;
                }
            }
            if (!flag2 || f && g)
            {
                a(d4 + ad1[0], d4 + ad1[1], j);
                d = false;
            } else
            {
                d = true;
            }
        }
        if (!b.R())
        {
            break MISSING_BLOCK_LABEL_545;
        }
        if (ad != null)
        {
            if (flag1)
            {
                boolean flag6;
                if (ad[2] <= d5 + ad1[2])
                {
                    flag6 = true;
                } else
                {
                    flag6 = false;
                }
                flag1 = flag6;
            }
            if (flag)
            {
                boolean flag5;
                if (ad[3] >= d5 + ad1[3])
                {
                    flag5 = true;
                } else
                {
                    flag5 = false;
                }
                flag = flag5;
            }
        }
        if (flag2 && (!flag1 || !flag)) goto _L2; else goto _L1
_L1:
        b(d5 + ad1[2], d5 + ad1[3], j);
        e = false;
        flag3 = flag1;
        flag4 = flag;
_L4:
        j++;
        flag1 = flag3;
        flag = flag4;
          goto _L3
_L2:
        e = true;
        flag3 = flag1;
        flag4 = flag;
          goto _L4
        bdw1 = (bdw)a;
        bdw1.b(bdw1.b() + (int)(f3 - f1));
        bdw1.c(bdw1.c() + (int)(f4 - f2));
        b();
        return;
    }

    public boolean a()
    {
        return !f;
    }
}
