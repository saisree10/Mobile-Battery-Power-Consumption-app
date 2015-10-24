// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import aby;
import android.app.Activity;
import android.content.IntentFilter;
import com.dianxinos.common.ui.fragment.TabInfo;
import com.dianxinos.common.ui.fragment.TitleIndicator;
import com.dianxinos.powermanager.mode.ModeMgrActivity;
import com.dianxinos.powermanager.smart.SmartSettingsActivity;
import java.util.ArrayList;
import ly;
import rd;

// Referenced classes of package com.dianxinos.powermanager:
//            PowerMgrTabActivity

public class SaverActivity extends rd
{

    public static String v = "display_smart_page";
    private aby w;

    public SaverActivity()
    {
    }

    public static TitleIndicator a(SaverActivity saveractivity)
    {
        return saveractivity.s;
    }

    public static TitleIndicator b(SaverActivity saveractivity)
    {
        return saveractivity.s;
    }

    protected int a(ArrayList arraylist)
    {
        w = new aby(this, null);
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction(v);
        registerReceiver(w, intentfilter);
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        arraylist.add(new TabInfo(0, getString(0x7f0a025c), com/dianxinos/powermanager/mode/ModeMgrActivity));
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        arraylist.add(new TabInfo(1, getString(0x7f0a0234), com/dianxinos/powermanager/smart/SmartSettingsActivity));
        return 0;
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
            finish();
            return;
        }
    }

    protected void onDestroy()
    {
        unregisterReceiver(w);
        super.onDestroy();
    }

    protected void onResume()
    {
        PowerMgrTabActivity powermgrtabactivity = (PowerMgrTabActivity)getParent();
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        powermgrtabactivity.setTitle(0x7f0a024d);
        super.onResume();
    }

}
