// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.diagnostic;

import acz;
import aff;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.TextView;
import ly;

public class DiagnosticTitle extends TextView
{

    public int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private aff f;

    public DiagnosticTitle(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 1;
        Resources resources = getResources();
        com.dianxinos.dxbs.R.color _tmp = ly.c;
        b = resources.getColor(0x7f09003a);
        com.dianxinos.dxbs.R.color _tmp1 = ly.c;
        c = resources.getColor(0x7f09003b);
        com.dianxinos.dxbs.R.color _tmp2 = ly.c;
        d = resources.getColor(0x7f090054);
        f = aff.a(context);
    }

    public void setChargingStatus(acz acz)
    {
        setVisibility(0);
        if (f.h() && f.e() != 103)
        {
            e = 3;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            setText(0x7f0a0356);
            setTextColor(d);
            return;
        }
        if (f.g() && f.e() != 100 && f.e() != 103)
        {
            e = 2;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            setText(0x7f0a0357);
            setTextColor(d);
            return;
        } else
        {
            e = 1;
            return;
        }
    }

    public void setState(int i)
    {
        if (i >= a)
        {
            a = i;
        }
        if (e != 3 && e != 2)
        {
            if (a == 1)
            {
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                setText(0x7f0a0353);
                setTextColor(b);
                return;
            }
            if (a == 2)
            {
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                setText(0x7f0a035b);
                setTextColor(b);
                return;
            }
            if (a == 3)
            {
                com.dianxinos.dxbs.R.string _tmp2 = ly.i;
                setText(0x7f0a0354);
                setTextColor(d);
                return;
            }
            if (a == 4)
            {
                com.dianxinos.dxbs.R.string _tmp3 = ly.i;
                setText(0x7f0a0355);
                setTextColor(d);
                return;
            }
        }
    }
}
