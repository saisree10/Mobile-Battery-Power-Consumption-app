// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.dianxinos.powermanager.PowerMgrService;
import com.dianxinos.powermanager.UpdateBatteryWidgetService;
import com.dianxinos.powermanager.WidgetUpdataService1x4;

class ada extends BroadcastReceiver
{

    final acz a;

    ada(acz acz1)
    {
        a = acz1;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        String s;
        context.startService(new Intent(context, com/dianxinos/powermanager/PowerMgrService));
        context.startService(new Intent(context, com/dianxinos/powermanager/WidgetUpdataService1x4));
        context.startService(new Intent(context, com/dianxinos/powermanager/UpdateBatteryWidgetService));
        s = intent.getAction();
        if (acz.a(a) == null)
        {
            acz.a(a, azm.a());
        }
        if (!s.equals("android.intent.action.BATTERY_CHANGED") || acz.a(a).a("/data/data/com.dianxinos.dxbs/automatedtesting.txt")) goto _L2; else goto _L1
_L1:
        acz.a(a, intent);
        afj.a(acz.c(a)).a(System.currentTimeMillis(), acz.b(a));
_L4:
        return;
_L2:
        if (s.equals("com.dianxinos.dxbs.test.batterychanged") && acz.a(a).a("/data/data/com.dianxinos.dxbs/automatedtesting.txt"))
        {
            acz.a(a, intent);
            afj.a(acz.c(a)).a(System.currentTimeMillis(), acz.b(a));
            return;
        }
        if (s.equals("com.dianxinos.dxbs.BATTERY_UPDATE"))
        {
            int i = intent.getIntExtra("percent", acz.b(a).j);
            acz.d(a).a(i);
            acz.b(a).j = i;
            afh afh1 = acz.e(a).f();
            if (acz.e(a).g())
            {
                acz.e(a).f().a(intent.getIntExtra("fix_time", afh1.c()));
            }
            acz.a(a, acz.b(a));
            return;
        }
        if (!s.equals("com.dianxinos.dxbs.MODECHANGE"))
        {
            break; /* Loop/switch isn't completed */
        }
        acz.f(a).a();
        if (acz.b(a) != null)
        {
            acz.b(a).i = true;
            acz.b(a).k = acz.f(a).a(acz.b(a).j, 5);
            acz.a(a, acz.b(a));
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (!s.equals("com.dianxinos.dxbs.MODEMODIFIED"))
        {
            continue; /* Loop/switch isn't completed */
        }
        acz.f(a).a();
        if (acz.b(a) != null)
        {
            acz.b(a).i = false;
            acz.b(a).k = acz.f(a).a(acz.b(a).j, 5);
            acz.a(a, acz.b(a));
            return;
        }
        continue; /* Loop/switch isn't completed */
        if (!s.equals("com.dianxinos.dxbs.action.RemainingTimeUpate")) goto _L4; else goto _L5
_L5:
        acz.f(a).a();
        if (acz.b(a) != null)
        {
            acz.b(a).i = false;
            acz.b(a).k = acz.f(a).a(acz.b(a).j, 5);
            acz.a(a, acz.b(a));
            return;
        }
        if (true) goto _L4; else goto _L6
_L6:
    }
}
