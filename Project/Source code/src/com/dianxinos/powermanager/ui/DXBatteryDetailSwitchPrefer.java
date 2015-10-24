// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui;

import android.content.Context;
import android.util.AttributeSet;
import ly;

// Referenced classes of package com.dianxinos.powermanager.ui:
//            DxSwitchPreference

public class DXBatteryDetailSwitchPrefer extends DxSwitchPreference
{

    public DXBatteryDetailSwitchPrefer(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    protected void a()
    {
        Context context = getContext();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        inflate(context, 0x7f030006, this);
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        setBackgroundResource(0);
    }
}
