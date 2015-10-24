// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class py extends BroadcastReceiver
{

    final pv a;

    py(pv pv1)
    {
        a = pv1;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        if (a.a(intent))
        {
            return;
        } else
        {
            pv.a(a);
            return;
        }
    }
}
