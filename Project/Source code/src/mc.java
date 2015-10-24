// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public abstract class mc extends BroadcastReceiver
{

    public mc()
    {
    }

    public void a(Context context, com.dianxinos.common.coins.CoinManager.RequestResult requestresult)
    {
    }

    public void a(Context context, com.dianxinos.common.coins.CoinManager.RequestResult requestresult, String s)
    {
    }

    public void b(Context context, com.dianxinos.common.coins.CoinManager.RequestResult requestresult)
    {
    }

    public final void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        com.dianxinos.common.coins.CoinManager.RequestResult requestresult = (com.dianxinos.common.coins.CoinManager.RequestResult)intent.getParcelableExtra("result_data");
        if ("com.dianxinos.common.toolbox.ACTION_COIN_CONSUME".equals(s))
        {
            a(context, requestresult);
        } else
        {
            if ("com.dianxinos.common.toolbox.ACTION_COIN_GAIN".equals(s))
            {
                b(context, requestresult);
                return;
            }
            if ("com.dianxinos.common.toolbox.ACTION_COIN_SYNC".equals(s))
            {
                String s1 = intent.getStringExtra("result_type");
                if (s1 == null)
                {
                    s1 = "__TOTAL__";
                }
                a(context, requestresult, s1);
                return;
            }
        }
    }
}
