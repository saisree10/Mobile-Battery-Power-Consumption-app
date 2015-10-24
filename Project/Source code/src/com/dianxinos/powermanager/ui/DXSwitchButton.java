// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.TextView;
import ly;

public class DXSwitchButton extends TextView
{

    private static int d[] = new int[2];
    private boolean a;
    private int b[];
    private Context c;

    public DXSwitchButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = new int[2];
        c = context;
        a();
    }

    private void a()
    {
        Context context = c;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        inflate(context, 0x7f030035, (ViewGroup)getParent());
    }

    public boolean getStatus()
    {
        return a;
    }

    public void onFinishInflate()
    {
        super.onFinishInflate();
        Resources resources = getResources();
        int ai[] = d;
        com.dianxinos.dxbs.R.color _tmp = ly.c;
        ai[0] = resources.getColor(0x7f090023);
        int ai1[] = d;
        com.dianxinos.dxbs.R.color _tmp1 = ly.c;
        ai1[1] = resources.getColor(0x7f090025);
        int ai2[] = b;
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        ai2[0] = 0x7f0a00cf;
        int ai3[] = b;
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        ai3[1] = 0x7f0a00d0;
        setStatus(false);
    }

    public void setStatus(boolean flag)
    {
        a = flag;
        if (a)
        {
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            setBackgroundResource(0x7f0203e4);
            setTextColor(d[0]);
            setText(b[0]);
            return;
        } else
        {
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            setBackgroundResource(0x7f0203e3);
            setTextColor(d[1]);
            setText(b[1]);
            return;
        }
    }

}
