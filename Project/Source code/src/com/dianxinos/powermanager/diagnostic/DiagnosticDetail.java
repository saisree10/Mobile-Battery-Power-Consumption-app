// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.diagnostic;

import acz;
import aff;
import android.content.Context;
import android.text.Html;
import android.util.AttributeSet;
import android.widget.TextView;
import azq;
import ly;

public class DiagnosticDetail extends TextView
{

    private int a;
    private int b;
    private Context c;
    private aff d;

    public DiagnosticDetail(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 1;
        c = context;
        d = aff.a(c);
    }

    public void a(int i, String s)
    {
        if (i >= a)
        {
            a = i;
            setText(s);
        }
    }

    public void a(acz acz, int i)
    {
        if (d.h() && d.e() != 103)
        {
            b = 3;
        } else
        if (d.g() && d.e() != 100)
        {
            b = 2;
        } else
        {
            b = 1;
        }
        if (a == 2 && b != 1)
        {
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            setText(0x7f0a035a);
        } else
        if (a == 6 || a == 3)
        {
            if (b == 3)
            {
                Context context1 = c;
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                Object aobj1[] = new Object[1];
                aobj1[0] = azq.c(c, i);
                setText(Html.fromHtml(context1.getString(0x7f0a035e, aobj1)));
                return;
            }
            if (b == 2)
            {
                Context context = c;
                com.dianxinos.dxbs.R.string _tmp2 = ly.i;
                Object aobj[] = new Object[1];
                aobj[0] = azq.c(c, i);
                setText(Html.fromHtml(context.getString(0x7f0a035f, aobj)));
                return;
            }
        }
    }

    public void setState(int i)
    {
        if (i >= a)
        {
            a = i;
            setVisibility(0);
        }
    }

    public void setTime(int i)
    {
        if (b == 1)
        {
            if (i < 60)
            {
                i = 60;
            }
            if (a > 5)
            {
                Context context1 = c;
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                Object aobj[] = new Object[1];
                aobj[0] = azq.c(c, i);
                setText(Html.fromHtml(context1.getString(0x7f0a035d, aobj)));
                return;
            }
            if (a == 2)
            {
                Context context = c;
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                setText(context.getString(0x7f0a0358));
                return;
            }
            if (a == 3)
            {
                com.dianxinos.dxbs.R.string _tmp2 = ly.i;
                setText(0x7f0a035c);
                return;
            }
            if (a == 4)
            {
                com.dianxinos.dxbs.R.string _tmp3 = ly.i;
                setText(0x7f0a0359);
                return;
            }
        }
    }
}
