// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.smart.SmartSettingsActivity;

public class asp
    implements android.view.View.OnClickListener
{

    final SmartSettingsActivity a;

    public asp(SmartSettingsActivity smartsettingsactivity)
    {
        a = smartsettingsactivity;
        super();
    }

    public void onClick(View view)
    {
        SmartSettingsActivity.d(a);
    }
}
