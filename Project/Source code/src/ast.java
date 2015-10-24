// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class ast extends BroadcastReceiver
{

    final ass a;

    ast(ass ass1)
    {
        a = ass1;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        ass.a("Hang up");
        if (!a.a)
        {
            return;
        } else
        {
            ass.a(a, ass.a(a));
            a.a = false;
            return;
        }
    }
}
