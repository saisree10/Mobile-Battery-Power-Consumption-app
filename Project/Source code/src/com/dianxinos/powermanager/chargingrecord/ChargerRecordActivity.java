// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.chargingrecord;

import aao;
import afy;
import afz;
import aga;
import agb;
import agc;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.TextView;
import azf;
import com.dianxinos.powermanager.ui.MainTitle;
import ly;

// Referenced classes of package com.dianxinos.powermanager.chargingrecord:
//            CalendarView

public class ChargerRecordActivity extends aao
    implements afy, android.view.View.OnClickListener
{

    private CalendarView a;
    private TextView b;
    private TextView c;
    private TextView d;
    private boolean e;
    private Handler f;
    private MainTitle g;

    public ChargerRecordActivity()
    {
        e = true;
        f = new afz(this);
    }

    public static TextView a(ChargerRecordActivity chargerrecordactivity)
    {
        return chargerrecordactivity.d;
    }

    public void a(boolean flag)
    {
        b.setText(String.valueOf(a.getTotalNormalCharger()));
        c.setText(String.valueOf(a.getTotalHealthCharger()));
        int i = d.getWidth();
        if (e == flag)
        {
            return;
        }
        e = flag;
        if (flag)
        {
            TranslateAnimation translateanimation = new TranslateAnimation(0.0F, i, 0.0F, 0.0F);
            translateanimation.setInterpolator(new DecelerateInterpolator());
            translateanimation.setDuration(200L);
            translateanimation.setAnimationListener(new agb(this));
            d.setVisibility(4);
            return;
        } else
        {
            TranslateAnimation translateanimation1 = new TranslateAnimation(i, 0.0F, 0.0F, 0.0F);
            translateanimation1.setInterpolator(new DecelerateInterpolator());
            translateanimation1.setDuration(200L);
            translateanimation1.setAnimationListener(new agc(this));
            d.setVisibility(0);
            return;
        }
    }

    public void onClick(View view)
    {
        if (view != b) goto _L2; else goto _L1
_L1:
        if (Integer.valueOf((String)b.getText()).intValue() != 0) goto _L4; else goto _L3
_L3:
        return;
_L4:
        a.b();
        f.sendEmptyMessageDelayed(0, 1800L);
        return;
_L2:
        if (view != c)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (Integer.valueOf((String)c.getText()).intValue() == 0) goto _L3; else goto _L5
_L5:
        a.c();
        f.sendEmptyMessageDelayed(1, 1800L);
        return;
        if (view != d) goto _L3; else goto _L6
_L6:
        a.a();
        return;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030017);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        g = (MainTitle)findViewById(0x7f070007);
        MainTitle maintitle = g;
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        d = (TextView)maintitle.findViewById(0x7f07013b);
        d.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        a = (CalendarView)findViewById(0x7f07006b);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        b = (TextView)findViewById(0x7f07006c);
        b.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        c = (TextView)findViewById(0x7f07006d);
        c.setOnClickListener(this);
        b.setText(String.valueOf(a.getTotalNormalCharger()));
        c.setText(String.valueOf(a.getTotalHealthCharger()));
    }

    protected void onPause()
    {
        a.b(this);
        super.onPause();
    }

    protected void onResume()
    {
        a.a(this);
        g.a();
        MainTitle maintitle = g;
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        maintitle.setLeftButtonIcon(0x7f020450);
        g.setLeftButtonOnclickListener(new aga(this));
        if (azf.c(this) || azf.d(this))
        {
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            findViewById(0x7f07006e).setVisibility(8);
        }
        super.onResume();
    }
}
