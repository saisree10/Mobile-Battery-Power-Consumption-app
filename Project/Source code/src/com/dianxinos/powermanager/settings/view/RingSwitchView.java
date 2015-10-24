// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.settings.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import aoy;
import apa;
import apb;
import aph;
import api;
import ly;

public class RingSwitchView extends aph
    implements android.view.View.OnClickListener, apa
{

    private ImageView h;
    private TextView i;
    private api j;

    public RingSwitchView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        j = api.a(context);
        setOnClickListener(this);
        Context context1 = getContext();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        inflate(context1, 0x7f030076, this);
    }

    private void setIcon(int k)
    {
        if (k == 1 || k == 2)
        {
            ImageView imageview = h;
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            imageview.setImageResource(0x7f0203ec);
            b = 1;
            return;
        } else
        {
            ImageView imageview1 = h;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            imageview1.setImageResource(0x7f0203eb);
            b = 0;
            return;
        }
    }

    private void setTextColor(int k)
    {
        if (k == 1 || k == 2)
        {
            i.setTextColor(a[1]);
            return;
        } else
        {
            i.setTextColor(a[0]);
            return;
        }
    }

    public void a(int k)
    {
        int l = j.b();
        if (k == -2 || k == 6)
        {
            setIcon(l);
            if (!c)
            {
                setTextColor(l);
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
        api api1 = j;
        Context context1 = d;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        apb.b(context, api1, context1.getString(0x7f0a019b));
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
        int k = j.b();
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        h = (ImageView)findViewById(0x7f070014);
        setIcon(k);
        if (!c)
        {
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            i = (TextView)findViewById(0x7f0701e9);
            i.setVisibility(0);
            TextView textview = i;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            textview.setText(0x7f0a019b);
            setTextColor(k);
            android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -2);
            h.setLayoutParams(layoutparams);
        }
    }
}
