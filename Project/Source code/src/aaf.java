// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.BatteryInfoDetailsActivity;

public class aaf
    implements android.view.View.OnClickListener
{

    final BatteryInfoDetailsActivity a;

    public aaf(BatteryInfoDetailsActivity batteryinfodetailsactivity)
    {
        a = batteryinfodetailsactivity;
        super();
    }

    public void onClick(View view)
    {
        BatteryInfoDetailsActivity.e(a);
        a.finish();
    }
}
