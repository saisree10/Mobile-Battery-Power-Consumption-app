// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.smart.SmartModeTimeSettings;

public class asf
    implements android.view.View.OnClickListener
{

    final SmartModeTimeSettings a;

    public asf(SmartModeTimeSettings smartmodetimesettings)
    {
        a = smartmodetimesettings;
        super();
    }

    public void onClick(View view)
    {
        a.onBackPressed();
    }
}
