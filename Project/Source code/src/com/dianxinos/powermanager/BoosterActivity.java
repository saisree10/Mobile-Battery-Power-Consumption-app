// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import aaj;
import aak;
import aao;
import android.os.Bundle;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import com.dianxinos.powermanager.ui.MainTitle;
import ly;
import ou;
import qb;

public class BoosterActivity extends aao
{

    public BoosterActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030011);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        MainTitle maintitle = (MainTitle)findViewById(0x7f070007);
        maintitle.a();
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        maintitle.setLeftButtonIcon(0x7f020450);
        maintitle.setLeftButtonOnclickListener(new aaj(this));
        RotateAnimation rotateanimation = new RotateAnimation(6.05F, 6.05F, 0.0F, 0.0F);
        rotateanimation.setFillAfter(true);
        rotateanimation.setDuration(0L);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        findViewById(0x7f070054).setAnimation(rotateanimation);
        qb qb1 = new qb(this);
        ou ou1 = new ou();
        ou1.q = "DSB";
        ou1.e = "DU Speed Booster";
        ou1.f = "com.dianxinos.optimizer.duplay";
        ou1.m = "https://play.google.com/store/apps/details?id=com.dianxinos.optimizer.duplay&referrer=com.dianxinos.dxbs";
        ou1.j = 1;
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        findViewById(0x7f070055).setOnClickListener(new aak(this, qb1, ou1));
    }
}
