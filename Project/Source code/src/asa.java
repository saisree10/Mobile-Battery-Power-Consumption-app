// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.smart.SmartModeBatterySettings;
import com.dianxinos.powermanager.ui.DxGotoPreference;

public class asa
    implements amm
{

    final SmartModeBatterySettings a;

    public asa(SmartModeBatterySettings smartmodebatterysettings)
    {
        a = smartmodebatterysettings;
        super();
    }

    public void a(int i, String s)
    {
        SmartModeBatterySettings.f(a, i);
        if (SmartModeBatterySettings.i(a).h(i) == 2 && !azf.n())
        {
            SmartModeBatterySettings.g(a, 1);
            SmartModeBatterySettings.j(a);
            return;
        } else
        {
            SmartModeBatterySettings.b(a, SmartModeBatterySettings.h(a));
            SmartModeBatterySettings.c(a, SmartModeBatterySettings.i(a).h(SmartModeBatterySettings.h(a)));
            SmartModeBatterySettings.c(a).setSummary(SmartModeBatterySettings.i(a).c(SmartModeBatterySettings.h(a)));
            return;
        }
    }
}
