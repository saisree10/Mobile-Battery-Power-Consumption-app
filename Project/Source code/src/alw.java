// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import android.view.View;
import com.dianxinos.powermanager.PowerMgrInfoAcitvity;
import com.dianxinos.powermanager.menu.MoreSettingsActivity;

public class alw
    implements android.view.View.OnClickListener
{

    final MoreSettingsActivity a;

    public alw(MoreSettingsActivity moresettingsactivity)
    {
        a = moresettingsactivity;
        super();
    }

    public void onClick(View view)
    {
        a.startActivity(new Intent(a, com/dianxinos/powermanager/PowerMgrInfoAcitvity));
    }
}
