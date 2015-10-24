// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.smart.SmartModeBatterySettings;
import com.dianxinos.powermanager.ui.DxGotoPreference;

public class asb
    implements amm
{

    final SmartModeBatterySettings a;

    public asb(SmartModeBatterySettings smartmodebatterysettings)
    {
        a = smartmodebatterysettings;
        super();
    }

    public void a(int i, String s)
    {
        SmartModeBatterySettings.f(a, i);
        if (SmartModeBatterySettings.i(a).h(i) == 2 && !azf.n())
        {
            SmartModeBatterySettings.g(a, 2);
            SmartModeBatterySettings.j(a);
            return;
        } else
        {
            SmartModeBatterySettings.d(a, SmartModeBatterySettings.h(a));
            SmartModeBatterySettings.e(a, SmartModeBatterySettings.i(a).h(SmartModeBatterySettings.h(a)));
            SmartModeBatterySettings.d(a).setSummary(SmartModeBatterySettings.i(a).c(SmartModeBatterySettings.h(a)));
            return;
        }
    }
}
