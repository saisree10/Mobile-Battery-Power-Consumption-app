// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.menu;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class SmartNotificationStatusBarClearReceiver extends BroadcastReceiver
{

    public SmartNotificationStatusBarClearReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        ((NotificationManager)context.getSystemService("notification")).cancel(5);
    }
}
