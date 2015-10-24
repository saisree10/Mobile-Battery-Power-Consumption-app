// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.usage;

import android.app.Activity;
import android.content.Intent;
import bal;
import com.dianxinos.common.ui.fragment.TabInfo;
import com.dianxinos.powermanager.PowerMgrTabActivity;
import java.util.ArrayList;
import ly;
import rd;

// Referenced classes of package com.dianxinos.powermanager.usage:
//            AppsPowerUsageHistory, HardwaresPowerUsageSummary

public class PowerUsageTabActivity extends rd
{

    public PowerUsageTabActivity()
    {
    }

    protected int a(ArrayList arraylist)
    {
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        arraylist.add(new TabInfo(0, getString(0x7f0a0053), com/dianxinos/powermanager/usage/AppsPowerUsageHistory));
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        arraylist.add(new TabInfo(1, getString(0x7f0a0054), com/dianxinos/powermanager/usage/HardwaresPowerUsageSummary));
        return 0;
    }

    public void a(int i)
    {
        super.a(i);
        if (i == 0)
        {
            bal.a(this, "tab", "hw", Integer.valueOf(1));
            return;
        } else
        {
            bal.a(this, "tab", "app", Integer.valueOf(1));
            return;
        }
    }

    public void onBackPressed()
    {
        Activity activity = getParent();
        if (activity != null)
        {
            activity.onBackPressed();
            return;
        } else
        {
            sendBroadcast(new Intent("com.dianxinos.dxbs.CLOSE_APP"));
            finish();
            return;
        }
    }

    public void onResume()
    {
        super.onResume();
        PowerMgrTabActivity powermgrtabactivity = (PowerMgrTabActivity)getParent();
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        powermgrtabactivity.setTitle(0x7f0a0051);
    }

    public void startActivity(Intent intent)
    {
        getParent().startActivity(intent);
    }
}
