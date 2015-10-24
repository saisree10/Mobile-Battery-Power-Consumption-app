// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.common.dxsplash;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import mi;
import ms;
import my;
import nc;

public class AlarmSplashConfigReceiver extends BroadcastReceiver
{

    private static final boolean a;

    public AlarmSplashConfigReceiver()
    {
    }

    private static void a(String s)
    {
        if (a)
        {
            ms.a("AlarmSplashConfigReceivery", s);
        }
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        a(s);
        my my1 = my.a(context);
        Bundle bundle = intent.getExtras();
        nc nc1 = null;
        if (bundle != null)
        {
            long l = bundle.getLong("splash_item_firsttime");
            long l1 = bundle.getLong("splash_item_lasttime");
            String s1 = bundle.getString("splash_item_name");
            String s2 = bundle.getString("splash_item_localpath");
            String s3 = bundle.getString("splash_item_md5");
            String s4 = bundle.getString("splash_item_url");
            float f = bundle.getFloat("splash_item_stay_time");
            nc1 = (new nc()).a(s1).a(l).b(l1).b(s3).c(s4).d(s2).a(f);
        }
        if (s.equals("com.dianxinos.common.dxsplash.ALARMSPLASHCONFIG"))
        {
            if (nc1 != null)
            {
                my1.a(nc1);
            }
        } else
        if (s.equals("com.dianxinos.common.dxsplash.ALARMSPLASHCONFIG_CANCLE") && nc1 != null)
        {
            my1.b(nc1);
            return;
        }
    }

    static 
    {
        a = mi.a;
    }
}
