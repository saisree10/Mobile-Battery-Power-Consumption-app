// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import com.dianxinos.common.coins.CoinManager;

final class pu
    implements Runnable
{

    final Context a;

    pu(Context context)
    {
        a = context;
        super();
    }

    public void run()
    {
        boolean flag = true;
        long l = om.f(a);
        boolean flag1 = om.g(a);
        long l1 = System.currentTimeMillis();
        long l2 = System.currentTimeMillis() - l;
        long l3;
        boolean flag2;
        com.dianxinos.common.coins.CoinManager.RequestResult requestresult;
        if (flag1)
        {
            l3 = 0x1b7740L;
        } else
        {
            l3 = 0x6ddd00L;
        }
        if (l2 > 0L)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        if (l2 >= l3)
        {
            flag = false;
        }
        if (flag & flag2)
        {
            nz.b("RefreshBalanceBackgroundPuller", (new StringBuilder()).append("Pull time limit, skip this request. tapjoy = ").append(flag1).toString());
            synchronized (pt.a())
            {
                pt.a(false);
            }
            return;
        }
        break MISSING_BLOCK_LABEL_116;
        exception1;
        obj1;
        JVM INSTR monitorexit ;
        throw exception1;
        om.b(a, l1);
        om.a(a, false);
        pf.a(a);
        requestresult = CoinManager.a(a).a(null, null);
        if (200 == requestresult.c)
        {
            CoinManager.a(a).a(requestresult.a);
            CoinManager.a(a, requestresult, "__TOTAL__");
            pf.c(a);
        }
        nz.b("RefreshBalanceBackgroundPuller", "Refresh DU Coins in background end");
        synchronized (pt.a())
        {
            pt.a(false);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
