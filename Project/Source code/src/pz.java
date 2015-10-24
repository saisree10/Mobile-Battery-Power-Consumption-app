// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;

class pz
    implements android.view.View.OnClickListener
{

    final pv a;

    pz(pv pv1)
    {
        a = pv1;
        super();
    }

    public void onClick(View view)
    {
        int i = view.getId();
        if (i == oi.toolbox_no_apps_refresh_button)
        {
            a.a();
        } else
        {
            if (i == oi.nonetworkbar)
            {
                a.b();
                return;
            }
            if (i == 0x1020027)
            {
                pf.h(a.a);
                pv.b(a).setVisibility(8);
                return;
            }
            if (i == oi.toolbox_balancebar)
            {
                a.f();
                return;
            }
            if (i == oi.toolbox_balance_refresh)
            {
                a.g();
                return;
            }
        }
    }
}
