// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.BatteryInfoDetailsActivity;

public class aac
    implements Runnable
{

    final BatteryInfoDetailsActivity a;

    public aac(BatteryInfoDetailsActivity batteryinfodetailsactivity)
    {
        a = batteryinfodetailsactivity;
        super();
    }

    public void run()
    {
        BatteryInfoDetailsActivity.d(a).a(BatteryInfoDetailsActivity.b(a), BatteryInfoDetailsActivity.c(a));
        BatteryInfoDetailsActivity.d(a).notifyDataSetChanged();
        BatteryInfoDetailsActivity.e(a);
    }
}
