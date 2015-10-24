// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.ui.Integratelottery.WheelView;

public class avr
    implements avq
{

    final WheelView a;

    public avr(WheelView wheelview)
    {
        a = wheelview;
        super();
    }

    public void a()
    {
        WheelView.a(a, true);
        a.a();
    }

    public void a(int i)
    {
        WheelView.a(a, i);
        int j = a.getHeight();
        if (WheelView.a(a) > j)
        {
            WheelView.b(a, j);
            WheelView.b(a).a();
        } else
        if (WheelView.a(a) < -j)
        {
            WheelView.b(a, -j);
            WheelView.b(a).a();
            return;
        }
    }

    public void b()
    {
        if (WheelView.c(a))
        {
            a.b();
            WheelView.a(a, false);
        }
        WheelView.b(a, 0);
        a.invalidate();
    }

    public void c()
    {
        if (Math.abs(WheelView.a(a)) > 1)
        {
            WheelView.b(a).a(WheelView.a(a), 0);
        }
    }
}
