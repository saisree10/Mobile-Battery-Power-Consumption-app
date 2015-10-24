// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import com.appsflyer.AppsFlyerLib;
import com.dianxinos.common.coins.CoinManager;
import com.dianxinos.powermanager.PowerMangerApplication;
import com.dianxinos.powermanager.PowerMgrService;
import com.dianxinos.powermanager.PowerMgrTabActivity;
import com.dianxinos.powermanager.UpdateBatteryWidgetService;
import com.dianxinos.powermanager.WidgetUpdataService1x4;

public class abq
    implements Runnable
{

    final PowerMgrTabActivity a;

    public abq(PowerMgrTabActivity powermgrtabactivity)
    {
        a = powermgrtabactivity;
        super();
    }

    public void run()
    {
        try
        {
            android.content.Context context = a.getApplicationContext();
            Thread.currentThread().setPriority(3);
            AppsFlyerLib.b(gx.a(a));
            AppsFlyerLib.a(a, "Dev_Key");
            AppsFlyerLib.a(a, "Dev_Key", "home", "");
            if (azx.c(a.getApplicationContext()))
            {
                xc.c(PowerMangerApplication.a());
            }
            aoj.b().d();
            aoj.b().f();
            CoinManager.a(context).e();
            aob.a().b();
        }
        catch (Throwable throwable) { }
        Thread.currentThread().setPriority(1);
        bal.a(a);
        bal.b(a);
        if (!anx.a(a))
        {
            baj baj1 = baj.a(a);
            if (akx.a(a).c())
            {
                PowerMgrTabActivity.a(a, baj1.d());
            }
        }
        a.startService(new Intent(a, com/dianxinos/powermanager/PowerMgrService));
        a.startService(new Intent(a, com/dianxinos/powermanager/WidgetUpdataService1x4));
        a.startService(new Intent(a, com/dianxinos/powermanager/UpdateBatteryWidgetService));
        bal.a(a, acz.a(a).c().j, azx.b(a));
    }
}
