// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Timer;

public class amh
    implements ahq
{

    private static amh j;
    public ahd a;
    private ArrayList b;
    private Context c;
    private int d;
    private ArrayList e;
    private ArrayList f;
    private ArrayList g;
    private ArrayList h;
    private amk i;
    private amp k;
    private boolean l;
    private Timer m;
    private acc n;
    private Timer o;
    private boolean p;
    private boolean q;
    private boolean r;
    private arr s;
    private int t;
    private aif u;
    private List v;

    private amh(Context context, amp amp1)
    {
        v = new LinkedList();
        c = context;
        k = amp1;
        n = acc.a(c);
        m();
        a = new ahd(c);
        e = new ArrayList();
        f = new ArrayList();
        g = new ArrayList();
        h = new ArrayList();
        g();
        j();
        s = arr.a(context);
    }

    public static amh a(Context context, amp amp1)
    {
        if (j != null) goto _L2; else goto _L1
_L1:
        amh;
        JVM INSTR monitorenter ;
        if (j == null)
        {
            j = new amh(context, amp1);
        }
        amh;
        JVM INSTR monitorexit ;
_L2:
        return j;
        Exception exception;
        exception;
        amh;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(ArrayList arraylist)
    {
    }

    static boolean a(amh amh1)
    {
        return amh1.p;
    }

    static boolean a(amh amh1, boolean flag)
    {
        amh1.l = flag;
        return flag;
    }

    private void b(ahp ahp1, int i1, int j1)
    {
        int k1 = 0;
_L7:
        if (k1 >= d) goto _L2; else goto _L1
_L1:
        if (ahp1 != b.get(k1))
        {
            break MISSING_BLOCK_LABEL_174;
        }
        t = k1;
        if (ahp1.h())
        {
            f.set(k1, Integer.valueOf(i1));
        }
        g.set(k1, Integer.valueOf(j1));
        if (!e.isEmpty()) goto _L3; else goto _L2
_L2:
        return;
_L3:
        if (((Integer)e.get(k1)).equals(Integer.valueOf(i1)))
        {
            break; /* Loop/switch isn't completed */
        }
        n();
        if (ahp1.equals(b.get(2)))
        {
            n.b();
            return;
        }
        if (true) goto _L2; else goto _L4
_L4:
        if (k.b() == amq.d(2) && ahp1.equals(b.get(2)))
        {
            n.a();
        }
        if (!h()) goto _L2; else goto _L5
_L5:
        o();
        return;
        k1++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    static boolean b(amh amh1)
    {
        return amh1.q;
    }

    static boolean c(amh amh1)
    {
        return amh1.r;
    }

    private void e(int i1)
    {
        if (k.b() == amq.d(2))
        {
            if (i1 == 0)
            {
                n();
                n.b();
                return;
            } else
            {
                o();
                n.a();
                return;
            }
        }
        if (i1 == 1)
        {
            n();
            return;
        } else
        {
            o();
            return;
        }
    }

    private void m()
    {
        b = new ArrayList();
        b.add(new ahl(c));
        b.add(new aid(c));
        b.add(new aih(c));
        b.add(new ahj(c));
        b.add(new ahv(c));
        b.add(new ahf(c));
        u = new aif(c);
        b.add(u);
        b.add(new aht(c));
        b.add(new ahn(c));
        b.add(new ahr(c));
        b.add(new ahi(c));
        b.add(new ahz(c));
        b.add(new aib(c));
        d = b.size();
    }

    private void n()
    {
        if (i != null)
        {
            i.b();
        }
    }

    private void o()
    {
        if (i != null)
        {
            i.c();
        }
    }

    public ahp a(int i1)
    {
        return (ahp)b.get(i1);
    }

    public ArrayList a()
    {
        return b;
    }

    public void a(ahp ahp1, int i1, int j1)
    {
        if (ahp1.equals(a))
        {
            e(j1);
            t = 13;
        } else
        {
            b(ahp1, i1, j1);
        }
        if (!l || p || q || r)
        {
            k.f(t);
        }
    }

    public void a(amk amk1)
    {
        i = amk1;
    }

    public void a(boolean flag)
    {
        h.clear();
        int i1 = 0;
        while (i1 < d) 
        {
            if (flag)
            {
                h.add(f.get(i1));
            } else
            {
                h.add(e.get(i1));
            }
            i1++;
        }
    }

    public boolean a(int i1, int j1)
    {
        int k1 = 0;
        if (m != null)
        {
            m.cancel();
        }
        l = true;
        m = new Timer();
        m.schedule(new ami(this), 10000L);
        p = false;
        q = false;
        r = false;
        boolean flag = a.a();
        boolean flag1;
        boolean flag2;
        if (i1 != amq.d(2) && flag)
        {
            a.a(false);
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (azf.n())
        {
            b(4);
        }
        flag2 = false;
        while (k1 < d) 
        {
            if (i().get(k1) != e().get(k1))
            {
                b(k1);
                if (k1 == 0)
                {
                    flag2 = true;
                }
            } else
            if (flag1)
            {
                if (k1 == 2)
                {
                    p = true;
                } else
                if (k1 == 3)
                {
                    q = true;
                } else
                if (k1 == 4)
                {
                    r = true;
                }
            }
            k1++;
        }
        if (flag1)
        {
            o = new Timer();
            o.schedule(new amj(this), 2000L);
        }
        if (i1 == amq.d(2) && !flag)
        {
            a.a(true);
        }
        k.e(i1);
        k.i(j1);
        if (j1 == 0 && bap.a(c) && amb.a(c).j())
        {
            bae.a(c);
        }
        if (i1 == amq.d(2))
        {
            n.a();
        } else
        {
            n.b();
        }
        s.a(r, p);
        return flag2;
    }

    public int b(int i1, int j1)
    {
        g();
        if (j1 != 13)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        if (a.h()) goto _L2; else goto _L1
_L1:
        return 0;
_L2:
        if (i1 == amq.d(2) && !a.a())
        {
            return -1;
        }
        if (i1 == amq.d(2) || !a.a()) goto _L1; else goto _L3
_L3:
        return 1;
        Integer integer = k.f().a(i1, j1);
        Integer integer1 = (Integer)f.get(j1);
        if (!integer1.equals(integer));
        int k1;
        if (integer1.equals(Integer.valueOf(0)) && integer.equals(Integer.valueOf(1)))
        {
            k1 = 1;
        } else
        {
            k1 = 0;
        }
        if (integer1.equals(Integer.valueOf(1)) && integer.equals(Integer.valueOf(0)))
        {
            return -1;
        } else
        {
            return k1;
        }
    }

    public void b()
    {
        k.f().a(k.b());
    }

    public void b(int i1)
    {
        ahp ahp1 = (ahp)b.get(i1);
        if (ahp1.h())
        {
            int j1 = ((Integer)e.get(i1)).intValue();
            ahp1.a(j1);
            f.set(i1, Integer.valueOf(j1));
            g.set(i1, Integer.valueOf(ahp1.e(j1)));
        }
    }

    public int c()
    {
        return d;
    }

    public void c(int i1)
    {
        if (e.size() == 0)
        {
            e.addAll(k.f().a(i1));
        } else
        {
            ArrayList arraylist = k.f().a(i1);
            int j1 = 0;
            while (j1 < d) 
            {
                e.set(j1, arraylist.get(j1));
                j1++;
            }
        }
    }

    public int d()
    {
        Iterator iterator = b.iterator();
        int i1 = 0;
        while (iterator.hasNext()) 
        {
            int j1;
            if (((ahp)iterator.next()).h())
            {
                j1 = i1 + 1;
            } else
            {
                j1 = i1;
            }
            i1 = j1;
        }
        return i1;
    }

    public ArrayList d(int i1)
    {
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = k.f().a(i1);
        g();
        int j1 = 0;
        while (j1 < d) 
        {
            if (!a(j1).h() || ((Integer)f.get(j1)).equals(arraylist1.get(j1)))
            {
                arraylist.add(Integer.valueOf(-1));
            } else
            {
                arraylist.add(arraylist1.get(j1));
            }
            j1++;
        }
        return arraylist;
    }

    public ArrayList e()
    {
        return e;
    }

    public ArrayList f()
    {
        return g;
    }

    public void g()
    {
        boolean flag = f.isEmpty();
        int i1 = 0;
        if (flag)
        {
            for (; i1 < d; i1++)
            {
                int j1 = a(i1).f();
                f.add(Integer.valueOf(j1));
                int k1 = a(i1).g();
                g.add(Integer.valueOf(k1));
            }

        } else
        {
            for (; i1 < d; i1++)
            {
                f.set(i1, Integer.valueOf(a(i1).f()));
                g.set(i1, Integer.valueOf(a(i1).g()));
            }

        }
        a(f);
    }

    public boolean h()
    {
        if (!e.isEmpty()) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i1 = 0;
_L4:
        if (i1 >= d)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (a(i1).h() && !((Integer)f.get(i1)).equals(e.get(i1))) goto _L1; else goto _L3
_L3:
        i1++;
          goto _L4
        if (k.b() == amq.d(2) && a.h() && !a.a() || k.b() != amq.d(2) && a.h() && a.a()) goto _L1; else goto _L5
_L5:
        return true;
    }

    public ArrayList i()
    {
        return h;
    }

    public void j()
    {
        for (int i1 = 0; i1 < d; i1++)
        {
            ((ahp)b.get(i1)).a(this);
        }

        a.a(this);
    }

    public void k()
    {
        ((ahp)b.get(11)).a(this);
    }

    public ahd l()
    {
        return a;
    }
}
