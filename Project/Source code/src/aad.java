// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.BatteryInfoDetailsActivity;

public class aad
    implements android.view.View.OnClickListener
{

    final BatteryInfoDetailsActivity a;

    public aad(BatteryInfoDetailsActivity batteryinfodetailsactivity)
    {
        a = batteryinfodetailsactivity;
        super();
    }

    public void onClick(View view)
    {
        a.onBackPressed();
    }
}
