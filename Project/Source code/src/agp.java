// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.widget.Toast;
import com.dianxinos.common.coins.CoinManager;

public abstract class agp
{

    protected Context a;
    protected String b;
    protected int c;
    protected String d;
    private CoinManager e;
    private bat f;
    private bat g;
    private avc h;
    private Toast i;

    protected agp(Context context)
    {
        a = context;
        e = CoinManager.a(context);
    }

    static bat a(agp agp1, bat bat)
    {
        agp1.f = bat;
        return bat;
    }

    static CoinManager a(agp agp1)
    {
        return agp1.e;
    }

    static void a(agp agp1, int j)
    {
        agp1.c(j);
    }

    static void a(agp agp1, Context context, int j, int k)
    {
        agp1.b(context, j, k);
    }

    static void a(agp agp1, String s)
    {
        agp1.a(s);
    }

    private void a(String s)
    {
        if (((Activity)a).isFinishing())
        {
            return;
        }
        if (h == null)
        {
            Context context = a;
            com.dianxinos.dxbs.R.style _tmp = ly.j;
            h = new avc(context, 0x7f0b001a);
            h.setOnCancelListener(new ags(this));
        }
        h.a(s);
        h.show();
    }

    static bat b(agp agp1, bat bat)
    {
        agp1.g = bat;
        return bat;
    }

    private void b(int j)
    {
        if (i == null)
        {
            i = Toast.makeText(a, j, 1);
        }
        i.setText(j);
        i.show();
    }

    static void b(agp agp1)
    {
        agp1.d();
    }

    static void b(agp agp1, int j)
    {
        agp1.b(j);
    }

    private void b(Context context, int j, int k)
    {
        if (((Activity)a).isFinishing())
        {
            return;
        } else
        {
            (new agx(a, j, k)).show();
            return;
        }
    }

    static bat c(agp agp1)
    {
        return agp1.f;
    }

    private void c(int j)
    {
        a(a.getString(j));
    }

    static bat d(agp agp1)
    {
        return agp1.g;
    }

    private void d()
    {
        while (((Activity)a).isFinishing() || h == null) 
        {
            return;
        }
        h.dismiss();
    }

    protected void a()
    {
        f = (new agu(this, null)).c(new Void[0]);
    }

    public void a(int j)
    {
        if (azx.a(a) == -1)
        {
            me.e(a, b);
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            b(0x7f0a001a);
            return;
        } else
        {
            bal.a(a, "ndpcc", 0, j);
            (new awe(a, j, c(), new agq(this, j))).show();
            return;
        }
    }

    protected void a(Context context, int j, int k)
    {
        if (((Activity)a).isFinishing())
        {
            return;
        } else
        {
            auu auu1 = new auu(a);
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            auu1.setTitle(0x7f0a02d4);
            auu1.e();
            Context context1 = a;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(j);
            aobj[1] = Integer.valueOf(k);
            auu1.c(context1.getString(0x7f0a02d5, aobj));
            com.dianxinos.dxbs.R.color _tmp2 = ly.c;
            auu1.f(0x7f0900be);
            Resources resources = context.getResources();
            com.dianxinos.dxbs.R.dimen _tmp3 = ly.d;
            auu1.g(resources.getDimensionPixelSize(0x7f0802a8));
            com.dianxinos.dxbs.R.string _tmp4 = ly.i;
            auu1.a(0x7f0a0027, new agr(this));
            auu1.d();
            com.dianxinos.dxbs.R.string _tmp5 = ly.i;
            auu1.b(0x7f0a0115, null);
            auu1.show();
            return;
        }
    }

    protected void a(String s, int j)
    {
        if (b.equals(s))
        {
            c = j;
        }
    }

    protected void b()
    {
        g = (new agt(this, null)).c(new Void[0]);
    }

    public String c()
    {
        return Integer.toString(c);
    }
}
