// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class acl extends BroadcastReceiver
{

    final acj a;

    acl(acj acj1)
    {
        a = acj1;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if (s.equals("android.intent.action.SCREEN_OFF"))
        {
            if (acj.a(a))
            {
                acj.b(a).b(a);
                acj.a(a, false);
            }
        } else
        if (s.equals("android.intent.action.SCREEN_ON") && !acj.a(a))
        {
            acj.b(a).a(a);
            acj.a(a, true);
            return;
        }
    }
}
