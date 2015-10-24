// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.feedback;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import un;
import vt;
import vu;

public class NotifyReceiver extends BroadcastReceiver
{

    public static String a = "next_time";
    public static String b = "first_launch";
    public static int c = 0x34154;
    private static int d = 0x493e0;

    public NotifyReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        vt.b("NotifyReceiver", (new StringBuilder()).append(" Receiver get action ").append(s).toString());
        if ("com.dianxinos.feedback.FIRST_".equals(s) && vu.a(context, b, -1L) < 0L)
        {
            long l = System.currentTimeMillis() + (long)d;
            un.a(context).a(l, "com.dianxinos.feedback.CHECK_UPDATE");
            vu.b(context, b, l);
        }
        if ("com.dianxinos.feedback.CHECK_UPDATE".equals(s))
        {
            un.a(context).a(context, intent);
        }
    }

}
