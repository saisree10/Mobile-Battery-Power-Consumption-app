// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import com.dianxinos.powermanager.skinshop.OperationConfigActivity;

public class apm extends mc
{

    final OperationConfigActivity a;

    public apm(OperationConfigActivity operationconfigactivity)
    {
        a = operationconfigactivity;
        super();
    }

    public void a(Context context, com.dianxinos.common.coins.CoinManager.RequestResult requestresult)
    {
        if (requestresult.a())
        {
            OperationConfigActivity.a(a, requestresult.e);
            a.d();
        } else
        {
            long l = OperationConfigActivity.a(a).m();
            if (l >= 0L && String.valueOf(l).equals(requestresult.e))
            {
                OperationConfigActivity.a(a).b(-1L);
                OperationConfigActivity.a(a).c(null);
                return;
            }
        }
    }

    public void a(Context context, com.dianxinos.common.coins.CoinManager.RequestResult requestresult, String s)
    {
        if (requestresult.a())
        {
            OperationConfigActivity.a(a, requestresult.e);
            a.d();
        }
    }
}
