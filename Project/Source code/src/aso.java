// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import android.view.View;
import com.dianxinos.powermanager.menu.RootHelperActivity;
import com.dianxinos.powermanager.smart.SmartSettingsActivity;

public class aso
    implements android.view.View.OnClickListener
{

    final SmartSettingsActivity a;

    public aso(SmartSettingsActivity smartsettingsactivity)
    {
        a = smartsettingsactivity;
        super();
    }

    public void onClick(View view)
    {
        Intent intent = new Intent(a.getActivity(), com/dianxinos/powermanager/menu/RootHelperActivity);
        a.startActivity(intent);
    }
}
