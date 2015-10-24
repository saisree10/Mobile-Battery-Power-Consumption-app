// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.smart;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import arr;
import ass;
import asv;
import azt;

public class SmartAlarmReceiver extends BroadcastReceiver
{

    private static String a = "SmartAlarmReceiver";
    private static boolean b = false;
    private Context c;

    public SmartAlarmReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        c = context;
        ass ass1 = ass.a(c);
        arr arr1 = arr.a(context);
        String s = intent.getAction();
        if (b)
        {
            azt.a(a, (new StringBuilder()).append(" action: ").append(s).toString());
        }
        byte byte0;
        int i;
        if (s.equals("com.dianxinos.dxbs.ALARMSWITCH"))
        {
            i = arr1.m();
            arr1.g();
            byte0 = 3;
        } else
        if (s.equals("com.dianxinos.dxbs.ALARMRESTORE"))
        {
            i = arr1.f(1);
            arr1.h();
            byte0 = 4;
        } else
        {
            byte0 = 0;
            i = 0;
        }
        ass1.a(new asv(i, byte0));
    }

}
