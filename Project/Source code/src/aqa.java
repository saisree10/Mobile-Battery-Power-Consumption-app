// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.skinshop.OperationConfigActivity;

public class aqa extends ajz
{

    final OperationConfigActivity a;

    public aqa(OperationConfigActivity operationconfigactivity)
    {
        a = operationconfigactivity;
        super();
    }

    public void a(String s)
    {
        a.a(s, 0);
    }

    public void a(String s, int i, long l)
    {
        OperationConfigActivity.a(a).b(-1L);
        OperationConfigActivity.a(a).c(null);
        a.a(s, 2);
        if (i == 0x30d42)
        {
            OperationConfigActivity operationconfigactivity3 = a;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            operationconfigactivity3.a(0x7f0a0222);
            return;
        }
        if (i == 0x30d4a)
        {
            OperationConfigActivity operationconfigactivity2 = a;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            operationconfigactivity2.a(0x7f0a0209);
            return;
        }
        if (i == 0x30d41)
        {
            OperationConfigActivity operationconfigactivity1 = a;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            operationconfigactivity1.a(0x7f0a0221);
            return;
        } else
        {
            OperationConfigActivity operationconfigactivity = a;
            com.dianxinos.dxbs.R.string _tmp3 = ly.i;
            operationconfigactivity.a(0x7f0a011f);
            return;
        }
    }

    public void a(String s, int i, long l, long l1)
    {
    }

    public void a(String s, long l)
    {
        aev aev1 = aoj.b().a(aze.a(s), a.b.b());
        if (aev1 == null)
        {
            return;
        }
        bal.a(a, "ssds", aev1);
        if (s.equals(OperationConfigActivity.a(a).n()))
        {
            aev1.h = aew.e;
            a.b(aev1);
            OperationConfigActivity.a(a).b(-1L);
            OperationConfigActivity.a(a).c(null);
        }
        a.a(s, 1);
    }

    public void b(String s, long l)
    {
        a.a(s, 3);
    }
}
