// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.settings;

import aao;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import bal;
import com.dianxinos.powermanager.PowerMgrService;
import com.dianxinos.powermanager.PowerMgrTabActivity;
import com.dianxinos.powermanager.settings.view.GpsSwitchView;
import com.dianxinos.powermanager.settings.view.MobileDataSwitchView;
import ly;

// Referenced classes of package com.dianxinos.powermanager.settings:
//            SettingsWidgetService1x4

public class SettingsWidgetActivity extends aao
    implements android.view.View.OnClickListener
{

    private LinearLayout a;
    private LinearLayout b;
    private LinearLayout c;
    private LayoutInflater d;
    private GpsSwitchView e;
    private MobileDataSwitchView f;

    public SettingsWidgetActivity()
    {
    }

    private void a()
    {
        Intent intent = getIntent();
        if (intent.hasExtra("settingswidget"))
        {
            int i = intent.getIntExtra("settingswidget", 0);
            if (i == 2)
            {
                bal.a(this, "widget14", "s", Integer.valueOf(1));
            } else
            if (i == 1)
            {
                bal.a(this, "widget14", "m", Integer.valueOf(1));
                return;
            }
        }
    }

    public void onClick(View view)
    {
        if (view == c)
        {
            startActivity(new Intent(this, com/dianxinos/powermanager/PowerMgrTabActivity));
            bal.a(this, "widget14", "tool_enter", Integer.valueOf(1));
            finish();
        } else
        {
            if (view == a)
            {
                finish();
                return;
            }
            if (view == b)
            {
                finish();
                return;
            }
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d = LayoutInflater.from(this);
        LayoutInflater layoutinflater = d;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(layoutinflater.inflate(0x7f030062, null));
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        a = (LinearLayout)findViewById(0x7f0701a9);
        a.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        b = (LinearLayout)findViewById(0x7f0701b4);
        b.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        c = (LinearLayout)findViewById(0x7f0701b3);
        c.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        e = (GpsSwitchView)findViewById(0x7f070173);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        f = (MobileDataSwitchView)findViewById(0x7f070172);
        a();
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        if (flag)
        {
            startService(new Intent(this, com/dianxinos/powermanager/PowerMgrService));
            startService(new Intent(this, com/dianxinos/powermanager/settings/SettingsWidgetService1x4));
            e.a();
            f.a();
        }
    }
}
