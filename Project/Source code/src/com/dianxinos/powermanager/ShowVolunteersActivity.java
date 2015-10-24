// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import aao;
import acb;
import android.os.Bundle;
import android.widget.TextView;
import azf;
import azp;
import com.dianxinos.powermanager.ui.MainTitle;
import ly;

public class ShowVolunteersActivity extends aao
{

    private MainTitle a;
    private TextView b;
    private TextView c;
    private azp d;

    public ShowVolunteersActivity()
    {
    }

    private void a()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        a = (MainTitle)findViewById(0x7f070007);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        b = (TextView)findViewById(0x7f0701e7);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        c = (TextView)findViewById(0x7f0701e8);
        TextView textview = c;
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        Object aobj[] = new Object[1];
        com.dianxinos.dxbs.R.string _tmp4 = ly.i;
        aobj[0] = getString(0x7f0a0228);
        textview.setText(getString(0x7f0a0267, aobj));
        d = azp.a(getApplicationContext());
        b.setTypeface(d.a());
        if (azf.c(getApplicationContext()))
        {
            c.setVisibility(8);
        }
    }

    protected void onCreate(Bundle bundle)
    {
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030075);
        a();
        MainTitle maintitle = a;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        maintitle.setTitleText(0x7f0a0265);
        a.a();
        MainTitle maintitle1 = a;
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        maintitle1.setLeftButtonIcon(0x7f020450);
        a.setLeftButtonOnclickListener(new acb(this));
        super.onCreate(bundle);
    }
}
