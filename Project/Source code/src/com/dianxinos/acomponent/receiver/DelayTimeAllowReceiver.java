// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.acomponent.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import hn;
import in;
import ip;

public class DelayTimeAllowReceiver extends BroadcastReceiver
{

    public DelayTimeAllowReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        if (intent != null && "com.dianxinos.acomponent.NOTIFICATION_CHECK".equals(intent.getAction()))
        {
            int i = ip.a(context, "show_notification_flag", -1);
            in.b("DelayTimeAllowReceiver", (new StringBuilder()).append(" get delay_time broadcasr receiver notification flag ").append(i).toString());
            if (i > 0)
            {
                hn.c(context).a(context, false, false);
            }
        }
    }
}
