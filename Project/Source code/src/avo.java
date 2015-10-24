// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Handler;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;

public class avo
{

    private avq a;
    private Scroller b;
    private int c;
    private boolean d;
    private final int e = 0;
    private final int f = 1;
    private Handler g;

    public avo(Context context, avq avq1)
    {
        g = new avp(this);
        b = new Scroller(context, new DecelerateInterpolator());
        a = avq1;
    }

    static int a(avo avo1, int i)
    {
        avo1.c = i;
        return i;
    }

    static Scroller a(avo avo1)
    {
        return avo1.b;
    }

    private void a(int i)
    {
        c();
        g.sendEmptyMessage(i);
    }

    static int b(avo avo1)
    {
        return avo1.c;
    }

    static avq c(avo avo1)
    {
        return avo1.a;
    }

    private void c()
    {
        g.removeMessages(0);
        g.removeMessages(1);
    }

    static Handler d(avo avo1)
    {
        return avo1.g;
    }

    private void d()
    {
        a.c();
        a(1);
    }

    private void e()
    {
        if (!d)
        {
            d = true;
            a.a();
        }
    }

    static void e(avo avo1)
    {
        avo1.d();
    }

    public void a()
    {
        b.forceFinished(true);
    }

    public void a(int i, int j)
    {
        b.forceFinished(true);
        c = 0;
        Scroller scroller = b;
        int k;
        if (j != 0)
        {
            k = j;
        } else
        {
            k = 400;
        }
        scroller.startScroll(0, 0, 0, i, k);
        a(0);
        e();
    }

    void b()
    {
        if (d)
        {
            a.b();
            d = false;
        }
    }
}
