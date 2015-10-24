// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.ui.ModeDxSwitchPreference;

public class avy
    implements android.view.View.OnClickListener
{

    final ModeDxSwitchPreference a;

    public avy(ModeDxSwitchPreference modedxswitchpreference)
    {
        a = modedxswitchpreference;
        super();
    }

    public void onClick(View view)
    {
        me.a(a.getContext(), a.h);
        ModeDxSwitchPreference.a(a).a(0);
    }
}
