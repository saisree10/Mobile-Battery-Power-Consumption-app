// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.common.coins.CoinManager;
import com.dianxinos.powermanager.PowerMgrTabActivity;

public class abo
    implements Runnable
{

    final PowerMgrTabActivity a;

    public abo(PowerMgrTabActivity powermgrtabactivity)
    {
        a = powermgrtabactivity;
        super();
    }

    public void run()
    {
        CoinManager coinmanager = CoinManager.a(a);
        com.dianxinos.common.coins.CoinManager.RequestResult requestresult = coinmanager.c(PowerMgrTabActivity.l(a), "11");
        if (requestresult.c())
        {
            coinmanager.a(requestresult.a);
        }
        CoinManager.b(a, requestresult);
    }
}
