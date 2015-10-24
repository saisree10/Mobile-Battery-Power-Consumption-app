// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.BatteryInfoDetailsActivity;

public class aag
    implements android.view.View.OnClickListener
{

    final auu a;
    final BatteryInfoDetailsActivity b;

    public aag(BatteryInfoDetailsActivity batteryinfodetailsactivity, auu auu1)
    {
        b = batteryinfodetailsactivity;
        a = auu1;
        super();
    }

    public void onClick(View view)
    {
        a.dismiss();
        b.finish();
    }
}
