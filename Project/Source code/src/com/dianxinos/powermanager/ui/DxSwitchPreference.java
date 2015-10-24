// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.TextView;
import avg;
import avh;
import ly;

public class DxSwitchPreference extends avg
{

    private static int i[] = new int[2];
    private int j[];
    private TextView k;
    private TextView l;
    private TextView m;

    public DxSwitchPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        j = new int[2];
        d();
        a();
    }

    private void d()
    {
        Resources resources = getResources();
        int ai[] = i;
        com.dianxinos.dxbs.R.color _tmp = ly.c;
        ai[0] = resources.getColor(0x7f090023);
        int ai1[] = i;
        com.dianxinos.dxbs.R.color _tmp1 = ly.c;
        ai1[1] = resources.getColor(0x7f090025);
        int ai2[] = j;
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        ai2[0] = 0x7f0a00cf;
        int ai3[] = j;
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        ai3[1] = 0x7f0a00d0;
    }

    protected void a()
    {
        Context context = getContext();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        inflate(context, 0x7f030036, this);
    }

    public void a(int i1, int j1)
    {
        m.setBackgroundResource(i1);
        if (j1 == 0)
        {
            m.setText(null);
            return;
        } else
        {
            m.setText(j1);
            m.setTextColor(i[0]);
            return;
        }
    }

    public void b()
    {
        k.setText(b);
        l.setText(c);
    }

    public void b(int i1, int j1)
    {
        j[0] = i1;
        j[1] = j1;
    }

    public void c()
    {
        if (a != null)
        {
            a.a(this);
        }
    }

    public boolean getEnabled()
    {
        return d;
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        k = (TextView)findViewById(0x7f07001f);
        k.setText(b);
        if (f > 0.0F)
        {
            k.setTextSize(0, f);
        }
        k.setTextColor(g);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        l = (TextView)findViewById(0x7f070020);
        l.setText(c);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        m = (TextView)findViewById(0x7f070021);
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        setBackgroundResource(0x7f0201f0);
        setEnabled(d);
        setClickable(true);
        setFocusable(true);
        setDescendantFocusability(0x60000);
    }

    public void setBgRID(int i1)
    {
        setBackgroundResource(i1);
    }

    public void setEnabled(boolean flag)
    {
        d = flag;
        if (d)
        {
            TextView textview1 = m;
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            textview1.setBackgroundResource(0x7f0203e4);
            m.setTextColor(i[0]);
            m.setText(j[0]);
            return;
        } else
        {
            TextView textview = m;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            textview.setBackgroundResource(0x7f0203e3);
            m.setTextColor(i[1]);
            m.setText(j[1]);
            return;
        }
    }

}
