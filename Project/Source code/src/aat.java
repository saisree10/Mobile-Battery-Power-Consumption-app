// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import com.dianxinos.powermanager.PersonalCenterActivity;

public class aat extends mc
{

    final PersonalCenterActivity a;

    public aat(PersonalCenterActivity personalcenteractivity)
    {
        a = personalcenteractivity;
        super();
    }

    public void a(Context context, com.dianxinos.common.coins.CoinManager.RequestResult requestresult)
    {
        PersonalCenterActivity.a(a, requestresult);
    }

    public void a(Context context, com.dianxinos.common.coins.CoinManager.RequestResult requestresult, String s)
    {
        PersonalCenterActivity.a(a, requestresult);
    }

    public void b(Context context, com.dianxinos.common.coins.CoinManager.RequestResult requestresult)
    {
        PersonalCenterActivity.a(a, requestresult);
    }
}
