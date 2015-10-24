// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.chargingrecord;

import afs;
import afu;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class ChargerRecordReceiver extends BroadcastReceiver
{

    private afs a;

    public ChargerRecordReceiver()
    {
        a = null;
    }

    public void onReceive(Context context, Intent intent)
    {
        if ("com.dianxinos.powermanager.savenormalcharge".equals(intent.getAction()))
        {
            a = afs.a(context);
            afu afu1 = a.b();
            afu1.d = 1 + afu1.d;
            a.b(afu1);
        }
    }
}
