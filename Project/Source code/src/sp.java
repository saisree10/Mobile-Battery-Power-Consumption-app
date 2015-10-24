// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class sp extends BroadcastReceiver
{

    final sm a;

    sp(sm sm)
    {
        a = sm;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        uf.a(new sq(a, intent));
    }
}
