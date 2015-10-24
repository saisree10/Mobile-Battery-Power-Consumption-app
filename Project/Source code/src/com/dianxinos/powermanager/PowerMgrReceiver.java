// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import abe;
import abf;
import agj;
import agl;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import arr;
import azf;
import azh;
import azt;
import bag;
import bak;
import bal;
import java.util.Calendar;
import my;

// Referenced classes of package com.dianxinos.powermanager:
//            PowerMgrService

public class PowerMgrReceiver extends BroadcastReceiver
{

    private static int a = 1;
    private static int b = 2;
    private static int c = 3;
    private abf d;
    private Context e;
    private arr f;
    private long g;
    private long h;
    private boolean i;
    private boolean j;

    public PowerMgrReceiver()
    {
    }

    public static int a()
    {
        return c;
    }

    public static abf a(PowerMgrReceiver powermgrreceiver)
    {
        return powermgrreceiver.d;
    }

    public static int b()
    {
        return b;
    }

    public static Context b(PowerMgrReceiver powermgrreceiver)
    {
        return powermgrreceiver.e;
    }

    public static int c()
    {
        return a;
    }

    private void d()
    {
        d = new abf(this, null);
        bag.a().a(new abe(this));
    }

    private void e()
    {
        if (f.l())
        {
            f();
            g();
            long l = f.q();
            int k = f.p();
            if (j && k != 4 && h > l)
            {
                Intent intent1 = new Intent("com.dianxinos.dxbs.ALARMRESTORE");
                PendingIntent pendingintent1 = PendingIntent.getBroadcast(e, 0, intent1, 0);
                ((AlarmManager)e.getSystemService("alarm")).set(0, azf.a(h), pendingintent1);
            } else
            if (i && !j && k != 3 && g > l)
            {
                Intent intent = new Intent("com.dianxinos.dxbs.ALARMSWITCH");
                PendingIntent pendingintent = PendingIntent.getBroadcast(e, 0, intent, 0);
                ((AlarmManager)e.getSystemService("alarm")).set(0, azf.a(g), pendingintent);
                return;
            }
        }
    }

    private void f()
    {
        int ai[] = f.n();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        long l = calendar.getTimeInMillis();
        calendar.set(11, ai[0]);
        calendar.set(12, ai[1]);
        calendar.set(13, 0);
        if (l > calendar.getTimeInMillis())
        {
            i = true;
        }
        g = calendar.getTimeInMillis();
    }

    private void g()
    {
        int ai[] = f.o();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        long l = calendar.getTimeInMillis();
        calendar.set(11, ai[0]);
        calendar.set(12, ai[1]);
        calendar.set(13, 0);
        if (g > calendar.getTimeInMillis())
        {
            calendar.add(10, 24);
        }
        if (l > calendar.getTimeInMillis())
        {
            j = true;
        }
        h = calendar.getTimeInMillis();
    }

    public void onReceive(Context context, Intent intent)
    {
        String s;
        azt.a("PowerMgrReceiver", (new StringBuilder()).append("received: ").append(intent).toString());
        e = context;
        s = intent.getAction();
        my.a(context).a(context, intent);
        if (!"android.intent.action.BOOT_COMPLETED".equals(s)) goto _L2; else goto _L1
_L1:
        agj.a().a(0);
        agl.a(context.getApplicationContext()).a("false:-100:-1");
        context.startService(new Intent(context, com/dianxinos/powermanager/PowerMgrService));
        f = arr.a(context);
        e();
        if (f.r() != 1) goto _L4; else goto _L3
_L3:
        d();
_L6:
        return;
_L4:
        azh.a(e).g();
        return;
_L2:
        String s1;
        if (s == null || !s.equals("com.android.vending.INSTALL_REFERRER") || bak.a(context))
        {
            continue; /* Loop/switch isn't completed */
        }
        s1 = intent.getStringExtra("referrer");
        if (s1 == null) goto _L6; else goto _L5
_L5:
        azt.a("PowerMgrReceiver", (new StringBuilder()).append("onRecieve called. referrer=").append(s1).toString());
        bak.b(context);
        bal.a(context, s1);
        return;
        if (!"android.intent.action.ACTION_SHUTDOWN".equals(s)) goto _L6; else goto _L7
_L7:
        agj.a().a(-1);
        return;
    }

}
