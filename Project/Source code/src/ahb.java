// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Context;
import com.dianxinos.common.coins.CoinManager;
import java.util.Iterator;
import java.util.List;

public class ahb extends agp
{

    private aoe e;
    private aut f;

    public ahb(Context context, String s)
    {
        super(context);
        e = aoe.a(s);
        b = e.b();
        c = aod.a(context, e);
        d = "10";
    }

    static void a(ahb ahb1)
    {
        ahb1.f();
    }

    private void a(aoe aoe1, android.view.View.OnClickListener onclicklistener)
    {
        if (((Activity)a).isFinishing())
        {
            return;
        } else
        {
            f = new aut(a);
            f.setTitle(aoe1.e());
            f.b(aoe1.f());
            f.a(aoe1.g());
            f.a(Integer.toString(c));
            f.a(onclicklistener);
            f.show();
            return;
        }
    }

    public static boolean a(Context context, aoe aoe1)
    {
        String s = aoe.a.b();
        CoinManager coinmanager = CoinManager.a(context);
        if (coinmanager.d("10", s))
        {
            return true;
        }
        if (aoe1 == aoe.a)
        {
            for (Iterator iterator = aoe.a().iterator(); iterator.hasNext();)
            {
                if (!coinmanager.d("10", ((aoe)iterator.next()).b()))
                {
                    return false;
                }
            }

            return true;
        } else
        {
            return coinmanager.d("10", aoe1.b());
        }
    }

    private void f()
    {
        while (((Activity)a).isFinishing() || f == null) 
        {
            return;
        }
        f.dismiss();
    }

    protected void a(Context context, int i, int j)
    {
        aod.a(a, e, j);
        a(e.b(), j);
        super.a(context, i, j);
    }

    public boolean d()
    {
        if (akx.a(a).b())
        {
            return true;
        } else
        {
            return a(a, e);
        }
    }

    public void e()
    {
        me.b(a, b);
        a(e, new ahc(this));
    }
}
