// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class px extends BroadcastReceiver
{

    final pv a;

    px(pv pv1)
    {
        a = pv1;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        String s1 = intent.getStringExtra("tag");
        if ("com.dianxinos.toolbox.ACTION_PULL_COMPLETED".equals(s))
        {
            int i = intent.getIntExtra("net_status", 404);
            a.a(s1, i);
        } else
        if ("com.dianxinos.toolbox.ACTION_ICON_COMPLETED".equals(s))
        {
            a.a(s1);
            return;
        }
    }
}
