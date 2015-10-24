// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.ui.ModeDxGotoPreference;

public class avx
    implements android.view.View.OnClickListener
{

    final ModeDxGotoPreference a;

    public avx(ModeDxGotoPreference modedxgotopreference)
    {
        a = modedxgotopreference;
        super();
    }

    public void onClick(View view)
    {
        me.a(a.getContext(), a.h);
        ModeDxGotoPreference.a(a).a(0);
    }
}
