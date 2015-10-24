// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.PowerMgrTabActivity;

public class abv
    implements adc
{

    final PowerMgrTabActivity a;

    private abv(PowerMgrTabActivity powermgrtabactivity)
    {
        a = powermgrtabactivity;
        super();
    }

    public abv(PowerMgrTabActivity powermgrtabactivity, abm abm)
    {
        this(powermgrtabactivity);
    }

    public void a(add add1)
    {
        if (!PowerMgrTabActivity.d(a))
        {
            PowerMgrTabActivity.a(a, add1.l);
            PowerMgrTabActivity.b(a, true);
            return;
        }
        if (add1.l)
        {
            azt.a("PowerMgrTabActivity", "charging status");
            azt.a("PowerMgrTabActivity", (new StringBuilder()).append("mNewUser : + ").append(PowerMgrTabActivity.e(a)).append(" mFromSleepTips : ").append(PowerMgrTabActivity.f(a)).toString());
            if (!PowerMgrTabActivity.g(a) && !PowerMgrTabActivity.e(a) && !PowerMgrTabActivity.f(a))
            {
                PowerMgrTabActivity.c(a, false);
            }
            PowerMgrTabActivity.a(a, true);
        } else
        {
            PowerMgrTabActivity.a(a, false);
        }
        PowerMgrTabActivity.d(a, false);
        PowerMgrTabActivity.e(a, false);
    }
}
