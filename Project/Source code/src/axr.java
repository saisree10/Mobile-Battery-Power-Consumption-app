// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.KeyEvent;
import android.widget.CheckBox;

class axr
    implements ava
{

    final int a;
    final auu b;
    final axn c;

    axr(axn axn1, int i, auu auu1)
    {
        c = axn1;
        a = i;
        b = auu1;
        super();
    }

    public void a(int i, KeyEvent keyevent)
    {
        if (i == 4 || i == 84)
        {
            if (a == 0)
            {
                axn.a(c).g();
                auu auu1 = b;
                com.dianxinos.dxbs.R.id _tmp = ly.f;
                CheckBox checkbox = (CheckBox)auu1.findViewById(0x7f070093);
                if (checkbox != null && checkbox.isChecked())
                {
                    axn.k().c(true);
                }
            } else
            if (a == 2)
            {
                return;
            }
        }
    }
}
