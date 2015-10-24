// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.ui.Integratelottery.WheelView;

public class avt
{

    final WheelView a;
    private int b;
    private int c;

    public avt(WheelView wheelview)
    {
        this(wheelview, 0, 0);
    }

    public avt(WheelView wheelview, int i, int j)
    {
        a = wheelview;
        super();
        b = i;
        c = j;
    }

    public int a()
    {
        return b;
    }

    public boolean a(int i)
    {
        return i >= a() && i <= b();
    }

    public int b()
    {
        return -1 + (a() + c());
    }

    public int c()
    {
        return c;
    }
}
