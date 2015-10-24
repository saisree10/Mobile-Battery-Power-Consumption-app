// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.settings.view;

import ahp;
import amh;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import aoy;
import apa;
import apb;
import aph;
import ly;

public class WlanSwitchView extends aph
    implements android.view.View.OnClickListener, apa
{

    private ImageView h;
    private TextView i;

    public WlanSwitchView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        setOnClickListener(this);
        Context context1 = getContext();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        inflate(context1, 0x7f030076, this);
    }

    private void setIcon(boolean flag)
    {
        if (flag)
        {
            ImageView imageview1 = h;
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            imageview1.setImageResource(0x7f0203fa);
            b = 1;
            return;
        } else
        {
            ImageView imageview = h;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            imageview.setImageResource(0x7f020404);
            b = 0;
            return;
        }
    }

    private void setTextColor(boolean flag)
    {
        if (flag)
        {
            i.setTextColor(a[1]);
            return;
        } else
        {
            i.setTextColor(a[0]);
            return;
        }
    }

    public void a(int j)
    {
        boolean flag = f.a(2).a();
        if (j == -2 || j == 2)
        {
            setIcon(flag);
            if (!c)
            {
                setTextColor(flag);
            }
        }
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        g.a(this);
    }

    public void onClick(View view)
    {
        ahp ahp1 = f.a(2);
        if (ahp1.h())
        {
            ImageView imageview = h;
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            imageview.setImageResource(0x7f0203f9);
            TextView textview = i;
            Resources resources = d.getResources();
            com.dianxinos.dxbs.R.color _tmp1 = ly.c;
            textview.setTextColor(resources.getColor(0x7f09001f));
            Context context = d;
            Context context1 = d;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            apb.a(context, ahp1, context1.getString(0x7f0a0197));
        } else
        {
            Intent intent = new Intent("android.settings.WIRELESS_SETTINGS");
            intent.addFlags(0x10000000);
            d.startActivity(intent);
        }
        super.onClick(view);
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        g.b(this);
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        boolean flag = f.a(2).a();
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        h = (ImageView)findViewById(0x7f070014);
        setIcon(flag);
        if (!c)
        {
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            i = (TextView)findViewById(0x7f0701e9);
            i.setVisibility(0);
            TextView textview = i;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            textview.setText(0x7f0a0197);
            setTextColor(flag);
            android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -2);
            h.setLayoutParams(layoutparams);
        }
    }
}
