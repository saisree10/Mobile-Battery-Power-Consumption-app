// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class ahs extends BroadcastReceiver
{

    final ahr a;

    ahs(ahr ahr1)
    {
        a = ahr1;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        if (a.e != null)
        {
            a.a();
            int i;
            if (a.g)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            a.e.a(a, i, i);
        }
    }
}
