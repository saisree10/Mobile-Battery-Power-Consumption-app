// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import com.dianxinos.powermanager.toolbox.ToolboxActivity;

public class auo extends qs
{

    final ToolboxActivity c;

    public auo(ToolboxActivity toolboxactivity, Activity activity)
    {
        c = toolboxactivity;
        super(activity);
    }

    protected void a()
    {
        auu auu1 = new auu(ToolboxActivity.d(c));
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        auu1.setTitle(0x7f0a0120);
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        auu1.c(0x7f0a0037);
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        auu1.a(0x7f0a01c1, new aup(this));
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        auu1.b(0x7f0a0115, null);
        auu1.show();
        pf.k(ToolboxActivity.g(c));
    }
}
