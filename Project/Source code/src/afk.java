// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.IntentFilter;
import java.util.ArrayList;
import java.util.Iterator;

class afk extends afh
{

    private static volatile afk b = null;
    private ArrayList c;
    private Context d;
    private acu e;
    private aub f;
    private int g;
    private volatile boolean h;
    private aff i;
    private int j;
    private IntentFilter k;
    private afl l;
    private adh m;
    private b n;
    private afs o;

    private afk(Context context, b b1)
    {
        c = new ArrayList();
        g = 0;
        j = 107;
        o = null;
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
        d = context;
        e = new acu(d, b1);
        f = aub.a(d);
        i = aff.a(d);
        m = adh.a(d);
        j = m.f();
        k = new IntentFilter();
        k.addAction("com.dianxinos.dxbs.HEALTHCHARGING");
        l = new afl(this);
        n = b1;
        a = (afg)c.get(0);
        o = afs.a(context);
    }

    static int a(afk afk1)
    {
        return afk1.j;
    }

    static int a(afk afk1, int i1)
    {
        afk1.j = i1;
        return i1;
    }

    public static afk a(Context context)
    {
        return a(context, ((b) (new c())));
    }

    public static afk a(Context context, b b1)
    {
        if (b != null) goto _L2; else goto _L1
_L1:
        afk;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new afk(context, b1);
        }
        afk;
        JVM INSTR monitorexit ;
_L2:
        return b;
        Exception exception;
        exception;
        afk;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static void a(String s)
    {
        b(s);
    }

    static int b(afk afk1, int i1)
    {
        afk1.g = i1;
        return i1;
    }

    static acu b(afk afk1)
    {
        return afk1.e;
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
        if (add1.a == 2)
        {
            f.a(add1.e, add1.c, add1.d, n.a(), false);
            g = 600 + (int)(f.b() / 1000L);
        }
    }

    private static void b(String s)
    {
    }

    static adh c(afk afk1)
    {
        return afk1.m;
    }

    static void c(afk afk1, int i1)
    {
        afk1.b(i1);
    }

    static int d(afk afk1)
    {
        return afk1.g;
    }

    static ArrayList e(afk afk1)
    {
        return afk1.c;
    }

    static afs f(afk afk1)
    {
        return afk1.o;
    }

    static afl g(afk afk1)
    {
        return afk1.l;
    }

    static Context h(afk afk1)
    {
        return afk1.d;
    }

    static aff i(afk afk1)
    {
        return afk1.i;
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
                m.d(j);
            } else
            {
                j = 101;
                m.d(j);
            }
        } else
        if (add1.a == 5)
        {
            if (j != 103)
            {
                j = 102;
                m.d(j);
                e.a();
                d.registerReceiver(l, k);
            }
        } else
        if (add1.a == 4 || add1.a != 1);
        b((new StringBuilder()).append("status:").append(j).toString());
        switch (j)
        {
        case 104: // 'h'
        default:
            b((new StringBuilder()).append("Error state: ").append(j).toString());
            return;

        case 105: // 'i'
            a = (afg)c.get(0);
            b(0);
            b(add1);
            return;

        case 101: // 'e'
            a = (afg)c.get(1);
            b(1);
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
