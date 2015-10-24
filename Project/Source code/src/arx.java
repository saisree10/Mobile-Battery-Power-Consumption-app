// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Dialog;
import android.view.View;
import com.dianxinos.powermanager.smart.SmartModeBatterySettings;

public class arx
    implements android.view.View.OnClickListener
{

    final SmartModeBatterySettings a;

    public arx(SmartModeBatterySettings smartmodebatterysettings)
    {
        a = smartmodebatterysettings;
        super();
    }

    public void onClick(View view)
    {
        if (SmartModeBatterySettings.f(a) != null)
        {
            SmartModeBatterySettings.f(a).dismiss();
        }
    }
}
