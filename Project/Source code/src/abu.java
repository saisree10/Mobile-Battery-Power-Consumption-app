// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.PowerMgrTabActivity;

public class abu
    implements Runnable
{

    final PowerMgrTabActivity a;

    public abu(PowerMgrTabActivity powermgrtabactivity)
    {
        a = powermgrtabactivity;
        super();
    }

    public void run()
    {
        PowerMgrTabActivity.a(a, pa.a(a));
        PowerMgrTabActivity.q(a).e();
        PowerMgrTabActivity.r(a).sendEmptyMessage(PowerMgrTabActivity.d());
    }
}
