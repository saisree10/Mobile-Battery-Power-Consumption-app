// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.DialogInterface;
import android.os.Handler;
import android.widget.CheckBox;

class axq
    implements android.content.DialogInterface.OnDismissListener
{

    final int a;
    final auu b;
    final axn c;

    axq(axn axn1, int i, auu auu1)
    {
        c = axn1;
        a = i;
        b = auu1;
        super();
    }

    public void onDismiss(DialogInterface dialoginterface)
    {
        axn.a(false);
        if (axn.j() != null)
        {
            axn.j().sendEmptyMessage(100);
        }
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
        }
    }
}
