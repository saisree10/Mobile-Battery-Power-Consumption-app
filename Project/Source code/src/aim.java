// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

public class aim
{

    private static aim a;
    private Context b;

    private aim(Context context)
    {
        b = context;
    }

    public static aim a(Context context)
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        aim;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new aim(context);
        }
        aim;
        JVM INSTR monitorexit ;
_L2:
        return a;
        Exception exception;
        exception;
        aim;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ain a(long l, int i)
    {
        ain ain1 = new ain(this);
        int j = bap.a(l);
        StringBuffer stringbuffer = new StringBuffer();
        StringBuffer stringbuffer1 = new StringBuffer();
        aip aip1 = new aip(b);
        int ai[] = aip1.a();
        int ai1[] = aip1.b();
        int k = 0;
        int i1;
        do
        {
            i1 = 0;
            if (k > 24)
            {
                break;
            }
            if (k == j)
            {
                stringbuffer.append((new StringBuilder()).append("#").append(i).toString());
            } else
            if (ai == null)
            {
                stringbuffer.append("#0");
            } else
            {
                stringbuffer.append((new StringBuilder()).append("#").append(ai[k]).toString());
            }
            k++;
        } while (true);
        while (i1 <= 24) 
        {
            if (ai1 == null)
            {
                stringbuffer1.append("#0");
            } else
            {
                stringbuffer1.append((new StringBuilder()).append("#").append(ai1[i1]).toString());
            }
            i1++;
        }
        ain1.a = l;
        ain1.c = stringbuffer.toString();
        ain1.b = stringbuffer1.toString();
        return ain1;
    }

    public void a(ain ain1, int i, int j)
    {
        int k = 0;
        String as[] = ain1.c.substring(1).split("#");
        int l = 0;
        StringBuffer stringbuffer;
label0:
        do
        {
label1:
            {
                if (l <= 24)
                {
                    if (l != i)
                    {
                        break label1;
                    }
                    as[l] = String.valueOf(j);
                }
                stringbuffer = new StringBuffer();
                for (; k <= 24; k++)
                {
                    stringbuffer.append((new StringBuilder()).append("#").append(as[k]).toString());
                }

                break label0;
            }
            l++;
        } while (true);
        ain1.c = stringbuffer.toString();
    }

    public void a(ain ain1, long l, int i)
    {
        if (bap.b(ain1.a, l) == 1L)
        {
            ain1.b = (new StringBuilder()).append(ain1.c.substring(0, 1 + ain1.c.lastIndexOf("#"))).append(i).toString();
            ain1.c = (new StringBuilder()).append("#").append(i).append("#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0".substring(2)).toString();
            a(ain1, bap.a(l), i);
        }
        ain1.a = l;
    }

    public boolean a(ain ain1, int i, long l)
    {
        int j;
        if (bap.a(ain1.a, l))
        {
            if (Integer.valueOf(ain1.c.substring(1).split("#")[j = bap.a(l)]).intValue() == i)
            {
                return true;
            }
        }
        return false;
    }

    public double[] a(ain ain1)
    {
        String as[] = ain1.c.substring(1).split("#");
        double ad[] = new double[25];
        for (int i = 0; i <= 24; i++)
        {
            ad[i] = Integer.valueOf(as[i]).intValue();
        }

        return ad;
    }

    public double[] b(ain ain1)
    {
        String as[] = ain1.b.substring(1).split("#");
        double ad[] = new double[25];
        for (int i = 0; i <= 24; i++)
        {
            ad[i] = Integer.valueOf(as[i]).intValue();
        }

        return ad;
    }
}
