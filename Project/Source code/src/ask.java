// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.smart.SmartModeTimeSettings;
import com.dianxinos.powermanager.ui.DxGotoPreference;

public class ask
    implements amm
{

    final SmartModeTimeSettings a;

    public ask(SmartModeTimeSettings smartmodetimesettings)
    {
        a = smartmodetimesettings;
        super();
    }

    public void a(int i, String s)
    {
        SmartModeTimeSettings.e(a, i);
        if (SmartModeTimeSettings.d(a).h(i) == 2 && !azf.n())
        {
            SmartModeTimeSettings.f(a, 2);
            SmartModeTimeSettings.g(a);
            return;
        } else
        {
            SmartModeTimeSettings.c(a, i);
            SmartModeTimeSettings.d(a, SmartModeTimeSettings.d(a).h(i));
            SmartModeTimeSettings.f(a).setSummary(s);
            return;
        }
    }
}
