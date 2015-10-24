// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import aal;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import azi;
import hq;
import ka;
import my;

public class ConnectivityChangedReceiver extends BroadcastReceiver
{

    public ConnectivityChangedReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if (s != null && "android.net.conn.CONNECTIVITY_CHANGE".equals(s))
        {
            hq.a(context).a(context, intent);
            ka.a(context).a(context, intent);
            my.a(context).a(context, intent);
            azi.a().b(new aal(this, context, intent));
        }
    }
}
