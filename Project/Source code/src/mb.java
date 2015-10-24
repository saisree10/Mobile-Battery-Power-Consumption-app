// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.common.coins.CoinManager;

public class mb
    implements Runnable
{

    final CoinManager a;

    public mb(CoinManager coinmanager)
    {
        a = coinmanager;
        super();
    }

    public void run()
    {
        com.dianxinos.common.coins.CoinManager.RequestResult requestresult = a.a(null, null);
        if (requestresult.a >= 0)
        {
            a.a(requestresult.a);
            CoinManager.a(CoinManager.a(a), requestresult, "__TOTAL__");
        }
    }
}
