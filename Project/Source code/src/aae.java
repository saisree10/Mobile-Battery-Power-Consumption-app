// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.BatteryInfoDetailsActivity;

public class aae
    implements android.view.View.OnClickListener
{

    final BatteryInfoDetailsActivity a;

    public aae(BatteryInfoDetailsActivity batteryinfodetailsactivity)
    {
        a = batteryinfodetailsactivity;
        super();
    }

    public void onClick(View view)
    {
        if (BatteryInfoDetailsActivity.f(a))
        {
            BatteryInfoDetailsActivity.e(a);
        }
        BatteryInfoDetailsActivity batteryinfodetailsactivity = a;
        boolean flag;
        if (!BatteryInfoDetailsActivity.f(a))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        BatteryInfoDetailsActivity.a(batteryinfodetailsactivity, flag);
        BatteryInfoDetailsActivity.d(a).a(BatteryInfoDetailsActivity.f(a));
    }
}
