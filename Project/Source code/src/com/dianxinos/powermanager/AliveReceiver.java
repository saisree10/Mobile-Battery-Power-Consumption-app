// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import agj;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import bal;

public class AliveReceiver extends BroadcastReceiver
{

    public AliveReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        agj agj1 = agj.a();
        String s = intent.getAction();
        if ("android.intent.action.ACTION_POWER_CONNECTED".equals(s))
        {
            bal.d(context);
            agj1.a(1);
        } else
        {
            if ("android.intent.action.ACTION_POWER_DISCONNECTED".equals(s))
            {
                ((NotificationManager)context.getSystemService("notification")).cancel(6);
                agj1.a(1);
                return;
            }
            if ("android.intent.action.BATTERY_LOW".equals(s))
            {
                agj1.a(3);
                return;
            }
        }
    }
}
