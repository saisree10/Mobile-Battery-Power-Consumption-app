// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.widget.TextView;
import com.dianxinos.powermanager.menu.AppListActivity;

class ale
    implements Runnable
{

    final alc a;

    ale(alc alc1)
    {
        a = alc1;
        super();
    }

    public void run()
    {
        TextView textview = AppListActivity.e(a.a);
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        textview.setText(0x7f0a012f);
    }
}
