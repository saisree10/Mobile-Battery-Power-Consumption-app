// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.SystemClock;
import com.dianxinos.common.coins.CoinManager;
import java.util.Iterator;
import java.util.List;

final class pb
    implements Runnable
{

    final ns a;
    final Context b;

    pb(ns ns1, Context context)
    {
        a = ns1;
        b = context;
        super();
    }

    public void a(Context context, ns ns1)
    {
        String s = Long.toString(ns1.d);
        mf mf1 = mf.a(context);
        oq oq1 = oq.a(context);
        boolean flag = mf1.a(s, "22");
        nz.b("ToolboxManager", (new StringBuilder()).append("Try Gain coin pkg=").append(ns1.f).append(";id=").append(s).append(";points=").append(ns1.e).append(";isGained=").append(flag).toString());
        if (!flag)
        {
            CoinManager coinmanager = CoinManager.a(context);
            com.dianxinos.common.coins.CoinManager.RequestResult requestresult = coinmanager.c(s, "22");
            if (requestresult.c())
            {
                coinmanager.a(requestresult.a);
            }
            if (requestresult.c == 412 || requestresult.c == 200)
            {
                mf1.b(s, "22");
                oq1.h(ns1.f);
            }
            CoinManager.b(context, requestresult);
            return;
        } else
        {
            oq1.h(ns1.f);
            return;
        }
    }

    public void run()
    {
        if (a != null)
        {
            a(b, a);
            SystemClock.sleep(pa.f());
        }
        Object obj = pa.g();
        obj;
        JVM INSTR monitorenter ;
        for (Iterator iterator = oq.a(b).c().iterator(); iterator.hasNext(); SystemClock.sleep(pa.f()))
        {
            ns ns1 = (ns)iterator.next();
            a(b, ns1);
        }

        break MISSING_BLOCK_LABEL_93;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
    }
}
