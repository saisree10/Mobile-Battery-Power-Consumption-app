// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.smart.SmartSettingsActivity;

public class asm
    implements android.view.View.OnClickListener
{

    final SmartSettingsActivity a;

    public asm(SmartSettingsActivity smartsettingsactivity)
    {
        a = smartsettingsactivity;
        super();
    }

    public void onClick(View view)
    {
        SmartSettingsActivity.c(a).a(a.getActivity(), "dxpowermanagerpro", new ako(a.getActivity()));
        bal.a(a.getActivity(), "iap", "upgrade", Integer.valueOf(1));
        azi.a().a(new asn(this));
    }
}
