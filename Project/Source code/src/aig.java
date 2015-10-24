// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class aig extends BroadcastReceiver
{

    final aif a;

    aig(aif aif1)
    {
        a = aif1;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        if (a.e != null)
        {
            a.i();
            a.e.a(a, aif.a(a), aif.b(a));
        }
    }
}
