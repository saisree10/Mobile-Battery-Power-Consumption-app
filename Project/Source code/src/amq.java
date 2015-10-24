// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.PowerMangerApplication;

public class amq
{

    public static final int a[] = {
        0, 1, 2
    };
    public static final int b[];
    public static final int c[];

    public static int a(int i)
    {
        if (i >= 0 && i < 3)
        {
            return a[i];
        } else
        {
            return -1;
        }
    }

    public static int b(int i)
    {
        if (i < 3)
        {
            return b[i];
        } else
        {
            return -1;
        }
    }

    public static int c(int i)
    {
        if (i < 3)
        {
            if (i == 0 && !azf.d())
            {
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                return 0x7f0a00b2;
            }
            if (i == 1 && !azf.d())
            {
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                return 0x7f0a00b5;
            }
            if (i == 2 && azf.n())
            {
                com.dianxinos.dxbs.R.string _tmp2 = ly.i;
                return 0x7f0a0287;
            } else
            {
                return c[i];
            }
        } else
        {
            return -1;
        }
    }

    public static int d(int i)
    {
        if (i >= 3)
        {
            i = amp.a(PowerMangerApplication.a()).g(i);
        }
        return i;
    }

    static 
    {
        int ai[] = new int[3];
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        ai[0] = 0x7f0a0056;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        ai[1] = 0x7f0a00b3;
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        ai[2] = 0x7f0a00b6;
        b = ai;
        int ai1[] = new int[3];
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        ai1[0] = 0x7f0a00b1;
        com.dianxinos.dxbs.R.string _tmp4 = ly.i;
        ai1[1] = 0x7f0a00b4;
        com.dianxinos.dxbs.R.string _tmp5 = ly.i;
        ai1[2] = 0x7f0a00b7;
        c = ai1;
    }
}
