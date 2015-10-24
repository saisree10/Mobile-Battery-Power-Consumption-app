// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import aas;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import azi;
import azr;
import ka;
import pa;
import wi;

public class PackageAddReceiver extends BroadcastReceiver
{

    public PackageAddReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if (s != null && "android.intent.action.PACKAGE_ADDED".equals(s))
        {
            ka.a(context).a(context, intent);
            wi.a(context, intent);
            if (azr.a(context).h())
            {
                pa.a(context, intent);
            }
            azi.a().a(new aas(this, context, intent));
        }
    }
}
