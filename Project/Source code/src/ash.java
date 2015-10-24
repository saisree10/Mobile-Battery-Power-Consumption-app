// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Dialog;
import android.view.View;
import com.dianxinos.powermanager.smart.SmartModeTimeSettings;
import com.dianxinos.powermanager.ui.DxGotoPreference;

public class ash
    implements android.view.View.OnClickListener
{

    final SmartModeTimeSettings a;

    public ash(SmartModeTimeSettings smartmodetimesettings)
    {
        a = smartmodetimesettings;
        super();
    }

    public void onClick(View view)
    {
        if (SmartModeTimeSettings.a(a) == null) goto _L2; else goto _L1
_L1:
        if (SmartModeTimeSettings.b(a) != 1) goto _L4; else goto _L3
_L3:
        SmartModeTimeSettings.a(a, SmartModeTimeSettings.c(a));
        SmartModeTimeSettings.b(a, SmartModeTimeSettings.d(a).h(SmartModeTimeSettings.c(a)));
        SmartModeTimeSettings.e(a).setSummary(SmartModeTimeSettings.d(a).c(SmartModeTimeSettings.c(a)));
_L6:
        SmartModeTimeSettings.a(a).dismiss();
_L2:
        return;
_L4:
        if (SmartModeTimeSettings.b(a) == 2)
        {
            SmartModeTimeSettings.c(a, SmartModeTimeSettings.c(a));
            SmartModeTimeSettings.d(a, SmartModeTimeSettings.d(a).h(SmartModeTimeSettings.c(a)));
            SmartModeTimeSettings.f(a).setSummary(SmartModeTimeSettings.d(a).c(SmartModeTimeSettings.c(a)));
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
