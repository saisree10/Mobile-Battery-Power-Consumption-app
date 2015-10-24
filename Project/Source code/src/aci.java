// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import com.dianxinos.powermanager.WidgetUpdataService1x4;

public class aci
    implements Runnable
{

    final WidgetUpdataService1x4 a;

    public aci(WidgetUpdataService1x4 widgetupdataservice1x4)
    {
        a = widgetupdataservice1x4;
        super();
    }

    public void run()
    {
        Intent intent = new Intent("broadcast_actiono_refresh_go_widget");
        intent.putExtra("Percent", WidgetUpdataService1x4.a(a));
        intent.putExtra("IsCharging", WidgetUpdataService1x4.b(a));
        intent.putExtra("ChargingTime", WidgetUpdataService1x4.c(a));
        intent.putExtra("RemainingBatteryTime", WidgetUpdataService1x4.d(a));
        intent.putExtra("BatteryStatus", WidgetUpdataService1x4.e(a));
        a.sendBroadcast(intent);
    }
}
