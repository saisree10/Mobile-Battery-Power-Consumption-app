// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.settings.view;

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
import ly;

public class ScreenTimeOutSwitchView extends aph
    implements android.view.View.OnClickListener, apa
{

    private ImageView h;
    private TextView i;

    public ScreenTimeOutSwitchView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        setOnClickListener(this);
        Context context1 = getContext();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        inflate(context1, 0x7f030076, this);
    }

    private void setIcon(int j)
    {
        if (j == 0)
        {
            ImageView imageview3 = h;
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            imageview3.setImageResource(0x7f0203f2);
            return;
        }
        if (j == 2)
        {
            ImageView imageview2 = h;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            imageview2.setImageResource(0x7f0203f3);
            return;
        }
        if (j == 5)
        {
            ImageView imageview1 = h;
            com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
            imageview1.setImageResource(0x7f0203f4);
            return;
        } else
        {
            ImageView imageview = h;
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            imageview.setImageResource(0x7f0203f5);
            return;
        }
    }

    private void setTextColor(int j)
    {
        if (j == 0 || j == 2 || j == 5)
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
        int k = f.a(1).f();
        if (j == -2 || j == 1)
        {
            setIcon(k);
            if (!c)
            {
                setTextColor(k);
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
        apb.b(d, f.a(1));
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
        int j = f.a(1).f();
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        h = (ImageView)findViewById(0x7f070014);
        setIcon(j);
        if (!c)
        {
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            i = (TextView)findViewById(0x7f0701e9);
            i.setVisibility(0);
            TextView textview = i;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            textview.setText(0x7f0a00d5);
            setTextColor(j);
            android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -2);
            h.setLayoutParams(layoutparams);
        }
    }
}
