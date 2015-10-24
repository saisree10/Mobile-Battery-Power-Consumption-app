// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.menu;

import aao;
import alq;
import amb;
import android.os.Bundle;
import avg;
import avh;
import com.dianxinos.powermanager.ui.DxSwitchPreference;
import com.dianxinos.powermanager.ui.MainTitle;
import ly;

public class ChargingReminderActivity extends aao
    implements avh
{

    private MainTitle a;
    private amb b;
    private DxSwitchPreference c;
    private boolean d;
    private DxSwitchPreference e;
    private boolean f;
    private DxSwitchPreference g;
    private boolean h;

    public ChargingReminderActivity()
    {
    }

    private void a()
    {
        b = amb.a(this);
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        a = (MainTitle)findViewById(0x7f070007);
        a.a();
        MainTitle maintitle = a;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        maintitle.setLeftButtonIcon(0x7f020450);
        a.setLeftButtonOnclickListener(new alq(this));
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        c = (DxSwitchPreference)findViewById(0x7f070070);
        c.setOnPreferenceChangeListener(this);
        d = b.k();
        c.setEnabled(d);
        DxSwitchPreference dxswitchpreference = c;
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        dxswitchpreference.setBgRID(0x7f0203de);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        e = (DxSwitchPreference)findViewById(0x7f070071);
        e.setOnPreferenceChangeListener(this);
        f = b.l();
        e.setEnabled(f);
        DxSwitchPreference dxswitchpreference1 = e;
        com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
        dxswitchpreference1.setBgRID(0x7f0203db);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        g = (DxSwitchPreference)findViewById(0x7f070072);
        g.setOnPreferenceChangeListener(this);
        h = b.q();
        g.setEnabled(h);
        DxSwitchPreference dxswitchpreference2 = g;
        com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
        dxswitchpreference2.setBgRID(0x7f0203d7);
    }

    public void a(avg avg)
    {
        boolean flag = true;
        if (avg == c)
        {
            if (d)
            {
                flag = false;
            }
            d = flag;
            c.setEnabled(d);
            b.i(d);
        } else
        {
            if (avg == e)
            {
                if (f)
                {
                    flag = false;
                }
                f = flag;
                e.setEnabled(f);
                b.j(f);
                return;
            }
            if (avg == g)
            {
                if (h)
                {
                    flag = false;
                }
                h = flag;
                g.setEnabled(h);
                b.m(h);
                return;
            }
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030018);
        a();
    }
}
