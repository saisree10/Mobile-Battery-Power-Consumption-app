// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;

public class amp
{

    private static int c = 3;
    private static int d;
    private static ArrayList e;
    private static amp h;
    private int a;
    private Context b;
    private amx f;
    private arr g;
    private amh i;
    private anb j;
    private boolean k;
    private anh l;

    private amp(Context context)
    {
        b = context;
        i = amh.a(context, this);
        j = anb.a(b, this, i);
        f = new amx(context);
        f.c(i.d(), i.c());
        f.f();
        k = f.d();
        l = anh.a(b);
        m();
        c = f.a();
        d = f.b();
        if (d >= c)
        {
            d = -1 + c;
        }
        e = new ArrayList();
        l();
        g = arr.a(context);
        a = g.p();
        i.b();
    }

    public static amp a(Context context)
    {
        if (h != null) goto _L2; else goto _L1
_L1:
        amp;
        JVM INSTR monitorenter ;
        if (h == null)
        {
            h = new amp(context.getApplicationContext());
        }
        amp;
        JVM INSTR monitorexit ;
_L2:
        return h;
        Exception exception;
        exception;
        amp;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void l()
    {
        int i1 = 3;
        for (int j1 = 0; j1 < i1; j1++)
        {
            e.add(b.getString(amq.b(j1)));
        }

        for (; i1 < c; i1++)
        {
            String s = f.c(i1);
            e.add(s);
        }

    }

    private void m()
    {
        if (f.c() == 3 && f.a(-1) == -1)
        {
            Context context = b;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            String s = context.getString(0x7f0a00b0);
            f.a(3, s, j.a(), true, true);
            a(3);
            k = true;
            f.a(k);
            f.b(true);
        }
    }

    public int a()
    {
        return c;
    }

    public void a(int i1)
    {
        d = i1;
        f.b(i1);
    }

    public void a(int i1, String s)
    {
        e.set(i1, s);
    }

    public void a(String s)
    {
        e.add(s);
        c = 1 + c;
    }

    public int b()
    {
        return d;
    }

    public void b(int i1)
    {
        e.remove(i1);
        c = -1 + c;
        f.a(i1, c);
    }

    public int c()
    {
        return f.e(d);
    }

    public String c(int i1)
    {
        if (i1 == -1)
        {
            return (String)e.get(0);
        }
        if (i1 < c)
        {
            return (String)e.get(i1);
        } else
        {
            return null;
        }
    }

    public String d(int i1)
    {
        if (i1 < 3)
        {
            return b.getString(amq.c(i1));
        } else
        {
            return null;
        }
    }

    public ArrayList d()
    {
        return e;
    }

    public String e()
    {
        if (d >= e.size())
        {
            d = 1;
        }
        return (String)e.get(d);
    }

    public void e(int i1)
    {
        Intent intent = new Intent("com.dianxinos.dxbs.MODECHANGE");
        intent.putExtra("ModeName", c(i1));
        b.sendBroadcast(intent);
    }

    public anb f()
    {
        return j;
    }

    public void f(int i1)
    {
        Intent intent = new Intent("com.dianxinos.dxbs.MODEMODIFIED");
        intent.putExtra("command", i1);
        b.sendBroadcast(intent);
    }

    public int g(int i1)
    {
        return f.d(i1);
    }

    public amh g()
    {
        return i;
    }

    public int h(int i1)
    {
        return f.e(i1);
    }

    public void h()
    {
        e.clear();
        l();
    }

    public void i(int i1)
    {
        a = i1;
        g.j(i1);
        if (a == 0)
        {
            g.a(System.currentTimeMillis());
        }
    }

    public boolean i()
    {
        i.g();
        i.c(d);
        return !i.h();
    }

    public boolean j()
    {
        return k;
    }

    public void k()
    {
        k = false;
        f.a(k);
    }

}
