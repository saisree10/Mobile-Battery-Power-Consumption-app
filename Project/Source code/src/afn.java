// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import com.dianxinos.powermanager.charging.HealthChargingActivity;
import com.dianxinos.powermanager.ui.DxBatteryGraph;

public class afn extends Handler
{

    final HealthChargingActivity a;

    private afn(HealthChargingActivity healthchargingactivity)
    {
        a = healthchargingactivity;
        super();
    }

    public afn(HealthChargingActivity healthchargingactivity, afm afm)
    {
        this(healthchargingactivity);
    }

    public void handleMessage(Message message)
    {
        if (message.what == 1)
        {
            DxBatteryGraph dxbatterygraph = HealthChargingActivity.d(a);
            int i = HealthChargingActivity.a(a).j;
            boolean flag = HealthChargingActivity.b(a);
            HealthChargingActivity.c(a);
            dxbatterygraph.a(i, flag, acz.a(HealthChargingActivity.a(a).j));
            a.b(HealthChargingActivity.a(a));
        }
    }
}
