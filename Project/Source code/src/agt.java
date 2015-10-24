// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.common.coins.CoinManager;

class agt extends bat
{

    final agp a;

    private agt(agp agp1)
    {
        a = agp1;
        super();
    }

    agt(agp agp1, agq agq)
    {
        this(agp1);
    }

    protected transient Integer a(Void avoid[])
    {
        int i = agp.a(a).a();
        if (a.c > i)
        {
            return Integer.valueOf(1);
        }
        com.dianxinos.common.coins.CoinManager.RequestResult requestresult = agp.a(a).b(a.b, a.d);
        if (requestresult.b())
        {
            int j = requestresult.a;
            agp.a(a).a(j);
            CoinManager.a(a.a, requestresult, "__TOTAL__");
        }
        CoinManager.a(a.a, requestresult);
        if (requestresult.a())
        {
            me.d(a.a, a.b);
            return Integer.valueOf(2);
        }
        if (requestresult.c == 420)
        {
            return Integer.valueOf(1);
        } else
        {
            me.g(a.a, a.b);
            return Integer.valueOf(3);
        }
    }

    protected volatile Object a(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void a()
    {
        agp agp1 = a;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        agp.a(agp1, 0x7f0a02da);
    }

    protected void a(Integer integer)
    {
        if (d())
        {
            return;
        }
        if (integer.intValue() != 1) goto _L2; else goto _L1
_L1:
        int i = agp.a(a).a();
        me.f(a.a, a.b);
        agp.a(a, a.a, a.c - i, i);
_L4:
        agp.b(a);
        agp.b(a, null);
        return;
_L2:
        if (integer.intValue() == 2)
        {
            agp agp2 = a;
            ly.i;
            agp.b(agp2, 0x7f0a02db);
        } else
        if (integer.intValue() == 3)
        {
            agp agp1 = a;
            ly.i;
            agp.b(agp1, 0x7f0a02dc);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected volatile void a(Object obj)
    {
        a((Integer)obj);
    }
}
