// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Dialog;
import android.view.View;
import com.dianxinos.powermanager.smart.SmartModeTimeSettings;

public class asg
    implements android.view.View.OnClickListener
{

    final SmartModeTimeSettings a;

    public asg(SmartModeTimeSettings smartmodetimesettings)
    {
        a = smartmodetimesettings;
        super();
    }

    public void onClick(View view)
    {
        if (SmartModeTimeSettings.a(a) != null)
        {
            SmartModeTimeSettings.a(a).dismiss();
        }
    }
}
