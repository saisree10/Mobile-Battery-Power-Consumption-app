// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.settings.view;

import ahd;
import ahp;
import amh;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import aoy;
import apa;
import apb;
import aph;
import azf;
import ly;

public class MobileDataSwitchView extends aph
    implements android.view.View.OnClickListener, apa
{

    private ImageView h;
    private TextView i;

    public MobileDataSwitchView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        setOnClickListener(this);
        Context context1 = getContext();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        inflate(context1, 0x7f030076, this);
    }

    private void setIcon(boolean flag)
    {
        if (azf.i() && f.l().a() || !flag)
        {
            ImageView imageview1 = h;
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            imageview1.setImageResource(0x7f0203ff);
            b = 0;
            return;
        } else
        {
            ImageView imageview = h;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            imageview.setImageResource(0x7f020400);
            b = 1;
            return;
        }
    }

    private void setTextColor(boolean flag)
    {
        if (azf.i() && f.l().a() || !flag)
        {
            i.setTextColor(a[0]);
            return;
        } else
        {
            i.setTextColor(a[1]);
            return;
        }
    }

    public void a()
    {
        boolean flag = f.a(4).a();
        setIcon(flag);
        if (!c)
        {
            setTextColor(flag);
        }
    }

    public void a(int j)
    {
        boolean flag = f.a(4).a();
        if (j == -2 || j == 4 || azf.i() && j == 13)
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
        Context context = d;
        ahp ahp1 = f.a(4);
        Context context1 = d;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        apb.b(context, ahp1, context1.getString(0x7f0a019d));
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
        boolean flag = f.a(4).a();
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
            textview.setText(0x7f0a019d);
            setTextColor(flag);
            android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -2);
            h.setLayoutParams(layoutparams);
        }
    }
}
