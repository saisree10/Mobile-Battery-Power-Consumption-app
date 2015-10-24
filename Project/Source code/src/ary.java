// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Dialog;
import android.view.View;
import com.dianxinos.powermanager.smart.SmartModeBatterySettings;
import com.dianxinos.powermanager.ui.DxGotoPreference;

public class ary
    implements android.view.View.OnClickListener
{

    final SmartModeBatterySettings a;

    public ary(SmartModeBatterySettings smartmodebatterysettings)
    {
        a = smartmodebatterysettings;
        super();
    }

    public void onClick(View view)
    {
        if (SmartModeBatterySettings.f(a) == null) goto _L2; else goto _L1
_L1:
        if (SmartModeBatterySettings.g(a) != 1) goto _L4; else goto _L3
_L3:
        SmartModeBatterySettings.b(a, SmartModeBatterySettings.h(a));
        SmartModeBatterySettings.c(a, SmartModeBatterySettings.i(a).h(SmartModeBatterySettings.h(a)));
        SmartModeBatterySettings.c(a).setSummary(SmartModeBatterySettings.i(a).c(SmartModeBatterySettings.h(a)));
_L6:
        SmartModeBatterySettings.f(a).dismiss();
_L2:
        return;
_L4:
        if (SmartModeBatterySettings.g(a) == 2)
        {
            SmartModeBatterySettings.d(a, SmartModeBatterySettings.h(a));
            SmartModeBatterySettings.e(a, SmartModeBatterySettings.i(a).h(SmartModeBatterySettings.h(a)));
            SmartModeBatterySettings.d(a).setSummary(SmartModeBatterySettings.i(a).c(SmartModeBatterySettings.h(a)));
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
