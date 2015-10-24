// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

class pw extends BroadcastReceiver
{

    final pv a;

    pw(pv pv1)
    {
        a = pv1;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        if (!intent.getBooleanExtra("android.intent.extra.REPLACING", false))
        {
            String s = intent.getData().getSchemeSpecificPart();
            String s1 = intent.getAction();
            if ("android.intent.action.PACKAGE_ADDED".equals(s1))
            {
                a.b(s, 1);
                return;
            }
            if ("android.intent.action.PACKAGE_REMOVED".equals(s1))
            {
                a.b(s, 2);
                return;
            }
        }
    }
}
