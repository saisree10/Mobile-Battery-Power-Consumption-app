// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class wn extends BroadcastReceiver
{

    final wm a;

    wn(wm wm1)
    {
        a = wm1;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if (s.equals("android.net.conn.CONNECTIVITY_CHANGE"))
        {
            int i = zv.b(wm.a(a));
            if (wm.b(a) != i)
            {
                if (wm.c(a) != null)
                {
                    wm.a(a, wm.c(a), wm.d(a), wm.e(a), wm.b(a), i);
                }
                wm.a(a, i);
            }
        } else
        {
            if (s.equals("android.intent.action.SCREEN_ON"))
            {
                if (wm.c(a) != null)
                {
                    wm.a(a, wm.c(a), true, wm.e(a));
                }
                wm.a(a, true);
                return;
            }
            if (s.equals("android.intent.action.SCREEN_OFF"))
            {
                if (wm.c(a) != null)
                {
                    wm.a(a, wm.c(a), false, wm.e(a));
                }
                wm.a(a, false);
                return;
            }
            if (s.equals("android.intent.action.ACTION_POWER_CONNECTED"))
            {
                wm.b(a, true);
                return;
            }
            if (s.equals("android.intent.action.ACTION_POWER_DISCONNECTED"))
            {
                wm.b(a, false);
                return;
            }
        }
    }
}
