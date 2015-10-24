// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui;

import aao;
import android.content.Intent;
import android.os.Bundle;
import auu;
import axc;
import axd;
import axe;
import ly;

public class WidgetAirplaneDialogActivity extends aao
{

    private auu a;

    public WidgetAirplaneDialogActivity()
    {
    }

    public static auu a(WidgetAirplaneDialogActivity widgetairplanedialogactivity)
    {
        return widgetairplanedialogactivity.a;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Intent intent = getIntent();
        int i = intent.getIntExtra("widget_airplane_mode", 0);
        boolean flag = intent.getBooleanExtra("widget_airplane_status", false);
        a = new auu(this);
        auu auu1 = a;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        auu1.setTitle(0x7f0a0288);
        auu auu2 = a;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        auu2.c(0x7f0a0289);
        auu auu3 = a;
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        auu3.a(0x7f0a0114, new axc(this, i, flag));
        auu auu4 = a;
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        auu4.b(0x7f0a0115, new axd(this));
        a.a(new axe(this));
        a.show();
    }
}
