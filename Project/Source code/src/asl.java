// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import com.dianxinos.powermanager.smart.SmartSettingsActivity;

public class asl extends mc
{

    final SmartSettingsActivity a;

    public asl(SmartSettingsActivity smartsettingsactivity)
    {
        a = smartsettingsactivity;
        super();
    }

    public void a(Context context, com.dianxinos.common.coins.CoinManager.RequestResult requestresult)
    {
        if (requestresult.a())
        {
            SmartSettingsActivity.a(a);
        }
    }

    public void a(Context context, com.dianxinos.common.coins.CoinManager.RequestResult requestresult, String s)
    {
        if ("10".equals(s) || "__TOTAL__".equals(s))
        {
            SmartSettingsActivity.a(a);
        }
    }

    public void b(Context context, com.dianxinos.common.coins.CoinManager.RequestResult requestresult)
    {
        if ("11".equals(requestresult.f))
        {
            SmartSettingsActivity.b(a);
        } else
        if (requestresult.c())
        {
            SmartSettingsActivity.b(a);
            return;
        }
    }
}
