// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.IntentFilter;
import java.util.ArrayList;
import java.util.Iterator;

class afp extends afh
{

    private static volatile afp b = null;
    private ArrayList c;
    private Context d;
    private acu e;
    private aub f;
    private int g;
    private volatile boolean h;
    private aff i;
    private int j;
    private adh k;
    private b l;
    private IntentFilter m;
    private afq n;

    private afp(Context context, b b1)
    {
        c = new ArrayList();
        g = 0;
        j = 107;
        d = context;
        ArrayList arraylist = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
        arraylist.add(new afg(0x7f0a0179, 0, 0x7f0a01ef, 0x7f0a01f0, 0x7f0203bc, 0x7f0203bb));
        ArrayList arraylist1 = c;
        com.dianxinos.dxbs.R.string _tmp5 = ly.i;
        com.dianxinos.dxbs.R.string _tmp6 = ly.i;
        com.dianxinos.dxbs.R.string _tmp7 = ly.i;
        com.dianxinos.dxbs.R.drawable _tmp8 = ly.e;
        com.dianxinos.dxbs.R.drawable _tmp9 = ly.e;
        arraylist1.add(new afg(0x7f0a017a, 1, 0x7f0a01f1, 0x7f0a01f2, 0x7f0201ba, 0x7f0201b9));
        ArrayList arraylist2 = c;
        com.dianxinos.dxbs.R.string _tmp10 = ly.i;
        com.dianxinos.dxbs.R.string _tmp11 = ly.i;
        com.dianxinos.dxbs.R.string _tmp12 = ly.i;
        com.dianxinos.dxbs.R.drawable _tmp13 = ly.e;
        com.dianxinos.dxbs.R.drawable _tmp14 = ly.e;
        arraylist2.add(new afg(0x7f0a017b, 2, 0x7f0a01f3, 0x7f0a01f4, 0x7f020478, 0x7f020477));
        e = new acu(d, b1);
        f = aub.a(d);
        i = aff.a(d);
        k = adh.a(d);
        j = k.f();
        m = new IntentFilter();
        m.addAction("com.dianxinos.dxbs.HEALTHCHARGING");
        n = new afq(this);
        l = b1;
        a = (afg)c.get(0);
    }

    static int a(afp afp1)
    {
        return afp1.j;
    }

    static int a(afp afp1, int i1)
    {
        afp1.j = i1;
        return i1;
    }

    public static afp a(Context context)
    {
        afp afp1 = new afp(context, new c());
        b = afp1;
        return afp1;
    }

    static int b(afp afp1, int i1)
    {
        afp1.g = i1;
        return i1;
    }

    static acu b(afp afp1)
    {
        return afp1.e;
    }

    private void b(int i1)
    {
        int j1 = 0;
        while (j1 < c.size()) 
        {
            if (j1 < i1)
            {
                ((afg)c.get(j1)).b();
            } else
            if (j1 == i1)
            {
                ((afg)c.get(j1)).a();
            } else
            {
                ((afg)c.get(j1)).c();
            }
            j1++;
        }
    }

    private void b(add add1)
    {
        if (add1.a == 2 || add1.e != 0)
        {
            f.a(add1.e, add1.c, add1.d, l.a(), false);
            g = 600 + (int)(f.b() / 1000L);
        }
    }

    static adh c(afp afp1)
    {
        return afp1.k;
    }

    static void c(afp afp1, int i1)
    {
        afp1.b(i1);
    }

    static ArrayList d(afp afp1)
    {
        return afp1.c;
    }

    static afq e(afp afp1)
    {
        return afp1.n;
    }

    static Context f(afp afp1)
    {
        return afp1.d;
    }

    public void a(int i1)
    {
        g = i1;
    }

    public void a(add add1)
    {
        if (!h)
        {
            b(add1);
            h = true;
        }
        if (add1.e == 0)
        {
            i.a(add1);
            return;
        }
        if (add1.a == 2)
        {
            e.b();
            if (add1.c <= 80)
            {
                j = 105;
                k.d(j);
            } else
            {
                j = 101;
                k.d(j);
            }
        } else
        if (add1.a == 5)
        {
            if (j != 103)
            {
                j = 102;
                k.d(j);
                e.a();
                d.registerReceiver(n, m);
            }
        } else
        if (add1.a == 4 || add1.a != 1);
        switch (j)
        {
        case 104: // 'h'
        default:
            return;

        case 101: // 'e'
            a = (afg)c.get(1);
            b(1);
            b(add1);
            return;

        case 105: // 'i'
            a = (afg)c.get(0);
            b(0);
            b(add1);
            return;

        case 102: // 'f'
            a = (afg)c.get(2);
            b(2);
            g = e.d();
            return;

        case 103: // 'g'
            a = (afg)c.get(2);
            b(3);
            g = 0;
            return;
        }
    }

    public ArrayList b()
    {
        return c;
    }

    public int c()
    {
        return g;
    }

    public void d()
    {
        f.a();
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((afg)iterator.next()).c()) { }
        h = false;
        g = 0;
    }

}
