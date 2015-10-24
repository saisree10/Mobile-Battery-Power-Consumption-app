// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.SystemClock;
import com.dianxinos.common.coins.CoinManager;

class agu extends bat
{

    final agp a;

    private agu(agp agp1)
    {
        a = agp1;
        super();
    }

    agu(agp agp1, agq agq)
    {
        this(agp1);
    }

    protected transient agv a(Void avoid[])
    {
        Integer ainteger[] = new Integer[2];
        ainteger[0] = Integer.valueOf(10);
        ainteger[1] = Integer.valueOf(0);
        d(ainteger);
        com.dianxinos.common.coins.CoinManager.RequestResult requestresult = agp.a(a).a(a.b, a.d);
        agv agv1 = new agv(null);
        if (requestresult.c != 200)
        {
            int i1;
            if (requestresult.c == 404)
            {
                i1 = 31;
            } else
            {
                i1 = 30;
            }
            agv1.a = i1;
            return agv1;
        }
        int i = requestresult.a;
        int j = agp.a(a).a();
        agp.a(a).a(i);
        if (d())
        {
            agv1.a = 0;
            return agv1;
        }
        if (j != i)
        {
            me.c(a.a);
            CoinManager.a(a.a, requestresult, "__TOTAL__");
            Integer ainteger2[] = new Integer[2];
            ainteger2[0] = Integer.valueOf(11);
            ainteger2[1] = Integer.valueOf(i);
            d(ainteger2);
            SystemClock.sleep(1000L);
        }
        Integer ainteger1[] = new Integer[2];
        ainteger1[0] = Integer.valueOf(20);
        ainteger1[1] = Integer.valueOf(0);
        d(ainteger1);
        int k = requestresult.g;
        int l = a.c;
        a.c = k;
        if (d())
        {
            agv1.a = 0;
            return agv1;
        }
        if (k != l)
        {
            CoinManager.a(a.a, requestresult, a.d);
            me.d(a.a);
            agv1.a = 21;
            agv1.b = l;
            agv1.c = k;
            return agv1;
        } else
        {
            agv1.a = 22;
            return agv1;
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
        agp.a(agp1, 0x7f0a0026);
    }

    protected void a(agv agv1)
    {
        int i;
        if (d())
        {
            return;
        }
        i = agv1.a;
        if (i != 22) goto _L2; else goto _L1
_L1:
        a.b();
_L4:
        agp.a(a, null);
        return;
_L2:
        if (i == 21)
        {
            int j = agv1.b;
            int k = agv1.c;
            a.a(a.a, j, k);
            agp.b(a);
        } else
        if (i == 30)
        {
            agp.b(a);
            agp agp2 = a;
            ly.i;
            agp.b(agp2, 0x7f0a0029);
        } else
        if (i == 31)
        {
            agp agp1 = a;
            ly.i;
            agp.b(agp1, 0x7f0a0028);
            agp.b(a);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected volatile void a(Object obj)
    {
        a((agv)obj);
    }

    protected transient void a(Integer ainteger[])
    {
        int i = ainteger[0].intValue();
        int j = ainteger[1].intValue();
        agp agp1;
        switch (i)
        {
        default:
            return;

        case 10: // '\n'
            agp agp3 = a;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            agp.a(agp3, 0x7f0a0026);
            return;

        case 11: // '\013'
            agp agp2 = a;
            Context context = a.a;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(j);
            agp.a(agp2, context.getString(0x7f0a002a, aobj));
            return;

        case 20: // '\024'
            agp1 = a;
            break;
        }
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        agp.a(agp1, 0x7f0a0026);
    }

    protected void b(Object aobj[])
    {
        a((Integer[])aobj);
    }
}
