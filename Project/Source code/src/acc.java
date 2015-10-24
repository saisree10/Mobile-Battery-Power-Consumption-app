// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.WindowManager;

public class acc
    implements ame
{

    private static acc k;
    private WindowManager a;
    private android.view.WindowManager.LayoutParams b;
    private Context c;
    private awu d;
    private awr e;
    private boolean f;
    private boolean g;
    private int h;
    private boolean i;
    private amb j;
    private int l;
    private int m;

    private acc(Context context)
    {
        a = null;
        b = null;
        c = context;
        j = amb.a(c);
        j.a(this);
        g = j.f();
    }

    public static acc a(Context context)
    {
        if (k != null) goto _L2; else goto _L1
_L1:
        acc;
        JVM INSTR monitorenter ;
        if (k == null)
        {
            k = new acc(context);
        }
        acc;
        JVM INSTR monitorexit ;
_L2:
        return k;
        Exception exception;
        exception;
        acc;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static amb a(acc acc1)
    {
        return acc1.j;
    }

    static awr b(acc acc1)
    {
        return acc1.e;
    }

    static WindowManager c(acc acc1)
    {
        return acc1.a;
    }

    private void e()
    {
        if (d != null)
        {
            return;
        } else
        {
            a = (WindowManager)c.getApplicationContext().getSystemService("window");
            LayoutInflater layoutinflater = (LayoutInflater)c.getSystemService("layout_inflater");
            d = new awu(c, layoutinflater);
            d.setMoveListener(new acd(this));
            return;
        }
    }

    private void f()
    {
        if (e != null)
        {
            return;
        } else
        {
            LayoutInflater layoutinflater = (LayoutInflater)c.getSystemService("layout_inflater");
            e = new awr(c, layoutinflater);
            e.setCloseListener(new ace(this));
            return;
        }
    }

    private void g()
    {
        if (b != null)
        {
            return;
        }
        b = new android.view.WindowManager.LayoutParams();
        b.type = 2002;
        b.format = 1;
        android.view.WindowManager.LayoutParams layoutparams = b;
        layoutparams.flags = 8 | layoutparams.flags;
        b.width = -2;
        b.height = -2;
        b.gravity = 51;
        int i1 = axb.a(c);
        if (i1 == -1)
        {
            Resources resources1 = c.getResources();
            com.dianxinos.dxbs.R.dimen _tmp = ly.d;
            i1 = (int)resources1.getDimension(0x7f08007c);
        }
        Resources resources = c.getResources();
        com.dianxinos.dxbs.R.dimen _tmp1 = ly.d;
        h = i1 - (int)resources.getDimension(0x7f08007b);
        l = h;
        m = 10;
    }

    public void a()
    {
        g = true;
        j.e(g);
        if (!j.e() || azf.n())
        {
            return;
        }
        e();
        g();
        if (j.g())
        {
            f();
            Resources resources = c.getResources();
            com.dianxinos.dxbs.R.dimen _tmp = ly.d;
            int i1 = (int)resources.getDimension(0x7f08007d);
            b.x = h - i1;
            b.y = 0;
            if (!i)
            {
                try
                {
                    a.addView(e, b);
                }
                catch (Exception exception1)
                {
                    azt.d("SleepModeWarningTipsShower", (new StringBuilder()).append("aleady added guide view : ").append(exception1.toString()).toString());
                }
            }
            i = true;
        }
        b.x = l;
        b.y = m;
        if (!f)
        {
            try
            {
                a.addView(d, b);
            }
            catch (Exception exception)
            {
                azt.d("SleepModeWarningTipsShower", (new StringBuilder()).append("aleady added view : ").append(exception.toString()).toString());
            }
        }
        f = true;
        j.d(f);
    }

    public void a(int i1, int j1)
    {
        try
        {
            if (i)
            {
                i = false;
                j.f(false);
                a.removeView(e);
            }
        }
        catch (Exception exception)
        {
            azt.a("SleepModeWarningTipsShower", " WindowManager remove view  Exception ...");
        }
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        l = i1;
        m = j1;
        b.x = l;
        b.y = m;
        a.updateViewLayout(d, b);
        return;
        Exception exception1;
        exception1;
        azt.c("SleepModeWarningTipsShower", exception1.toString());
        return;
    }

    public void a(boolean flag)
    {
        boolean flag1;
        if (!flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1 & f)
        {
            b();
            g = true;
            j.e(g);
        } else
        if (flag && g)
        {
            a();
            return;
        }
    }

    public void b()
    {
        g = false;
        j.e(g);
        if (!f)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        f = false;
        j.d(f);
        a.removeView(d);
        if (i)
        {
            i = false;
            a.removeView(e);
        }
        return;
        Exception exception;
        exception;
        azt.a("SleepModeWarningTipsShower", " WindowManager remove view  Exception ...");
        return;
    }

    public boolean c()
    {
        azt.a("SleepModeWarningTipsShower", (new StringBuilder()).append("getShowStatus  : ").append(f).toString());
        return f;
    }

    public void d()
    {
        if (!f)
        {
            return;
        }
        LayoutInflater layoutinflater;
        try
        {
            a.removeView(d);
        }
        catch (Exception exception)
        {
            azt.a("SleepModeWarningTipsShower", " WindowManager remove view  Exception ...");
        }
        layoutinflater = (LayoutInflater)c.getSystemService("layout_inflater");
        d = new awu(c, layoutinflater);
        d.setMoveListener(new acf(this));
        try
        {
            a.addView(d, b);
            return;
        }
        catch (Exception exception1)
        {
            azt.a("SleepModeWarningTipsShower", (new StringBuilder()).append("aleady added view : ").append(exception1.toString()).toString());
        }
    }
}
