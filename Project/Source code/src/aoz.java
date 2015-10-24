// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class aoz extends BroadcastReceiver
{

    final aoy a;

    aoz(aoy aoy1)
    {
        a = aoy1;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if (s.equals("com.dianxinos.dxbs.MODEMODIFIED"))
        {
            int i = intent.getIntExtra("command", -1);
            if (i != -1)
            {
                aoy.a(a, i);
            }
        } else
        if (s.equals("com.dianxinos.dxbs.MODECHANGE"))
        {
            aoy.a(a, -2);
            return;
        }
    }
}
