// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.List;

public final class aoe extends Enum
{

    public static final aoe a;
    public static final aoe b;
    public static final aoe c;
    public static final aoe d;
    public static final aoe e;
    public static final aoe f;
    public static final aoe g;
    public static final aoe h;
    private static final List i;
    private static final aoe p[];
    private int j;
    private String k;
    private int l;
    private int m;
    private int n;
    private int o;

    private aoe(String s, int i1, String s1, int j1, int k1, int l1, int i2)
    {
        super(s, i1);
        o = -1;
        k = s1;
        j = j1;
        n = k1;
        m = l1;
        l = i2;
    }

    public static aoe a(String s)
    {
        if (s != null)
        {
            aoe aaoe[] = values();
            int i1 = aaoe.length;
            for (int j1 = 0; j1 < i1; j1++)
            {
                aoe aoe1 = aaoe[j1];
                if (s.equalsIgnoreCase(aoe1.b()))
                {
                    return aoe1;
                }
            }

        }
        return h;
    }

    public static List a()
    {
        return i;
    }

    public static aoe valueOf(String s)
    {
        return (aoe)Enum.valueOf(aoe, s);
    }

    public static aoe[] values()
    {
        return (aoe[])p.clone();
    }

    public void a(int i1)
    {
        o = i1;
    }

    public String b()
    {
        return k;
    }

    public int c()
    {
        return o;
    }

    public int d()
    {
        return j;
    }

    public int e()
    {
        return n;
    }

    public int f()
    {
        return m;
    }

    public int g()
    {
        return l;
    }

    static 
    {
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        a = new aoe("TOTAL", 0, "totalfunc", 1900, 0x7f0a02c6, 0x7f0a02c8, 0);
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
        b = new aoe("AUTOCPU", 1, "autocpu", 400, 0x7f0a018b, 0x7f0a018c, 0x7f0203c1);
        com.dianxinos.dxbs.R.string _tmp5 = ly.i;
        com.dianxinos.dxbs.R.string _tmp6 = ly.i;
        com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
        c = new aoe("LOCK_CLEAR", 2, "lockclear", 380, 0x7f0a0294, 0x7f0a0295, 0x7f0203c2);
        com.dianxinos.dxbs.R.string _tmp8 = ly.i;
        com.dianxinos.dxbs.R.string _tmp9 = ly.i;
        com.dianxinos.dxbs.R.drawable _tmp10 = ly.e;
        d = new aoe("AUTO_NET", 3, "autonet", 300, 0x7f0a0292, 0x7f0a0293, 0x7f0203c3);
        com.dianxinos.dxbs.R.string _tmp11 = ly.i;
        com.dianxinos.dxbs.R.string _tmp12 = ly.i;
        com.dianxinos.dxbs.R.drawable _tmp13 = ly.e;
        e = new aoe("AUTO_POWER", 4, "autopower", 320, 0x7f0a0145, 0x7f0a0149, 0x7f0203c4);
        com.dianxinos.dxbs.R.string _tmp14 = ly.i;
        com.dianxinos.dxbs.R.string _tmp15 = ly.i;
        com.dianxinos.dxbs.R.drawable _tmp16 = ly.e;
        f = new aoe("AUTO_TIME", 5, "autotime", 340, 0x7f0a014d, 0x7f0a014e, 0x7f0203c5);
        com.dianxinos.dxbs.R.string _tmp17 = ly.i;
        com.dianxinos.dxbs.R.string _tmp18 = ly.i;
        com.dianxinos.dxbs.R.drawable _tmp19 = ly.e;
        g = new aoe("AUTO_CLEAR", 6, "autoclear", 360, 0x7f0a016a, 0x7f0a016b, 0x7f0203c0);
        com.dianxinos.dxbs.R.string _tmp20 = ly.i;
        com.dianxinos.dxbs.R.string _tmp21 = ly.i;
        h = new aoe("NONE_SENSE", 7, "nonesense", 0, 0x7f0a02c5, 0x7f0a02c7, 0);
        aoe aaoe[] = new aoe[8];
        aaoe[0] = a;
        aaoe[1] = b;
        aaoe[2] = c;
        aaoe[3] = d;
        aaoe[4] = e;
        aaoe[5] = f;
        aaoe[6] = g;
        aaoe[7] = h;
        p = aaoe;
        i = new ArrayList();
        i.add(b);
        i.add(c);
        i.add(d);
        i.add(e);
        i.add(f);
        i.add(g);
    }
}
