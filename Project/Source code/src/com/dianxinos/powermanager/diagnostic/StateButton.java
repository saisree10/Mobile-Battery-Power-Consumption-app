// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.diagnostic;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;
import ly;

public class StateButton extends Button
{

    public int a;

    public StateButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 1;
    }

    public int getSate()
    {
        return a;
    }

    public void setState(int i)
    {
        if (i >= a)
        {
            a = i;
        }
        setEnabled(true);
        if (a == 1)
        {
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            setText(0x7f0a034a);
        } else
        {
            if (a == 2)
            {
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                setText(0x7f0a0313);
                return;
            }
            if (a == 3)
            {
                com.dianxinos.dxbs.R.string _tmp2 = ly.i;
                setText(0x7f0a034c);
                setEnabled(false);
                return;
            }
            if (a == 4)
            {
                com.dianxinos.dxbs.R.string _tmp3 = ly.i;
                setText(0x7f0a0347);
                return;
            }
        }
    }
}
