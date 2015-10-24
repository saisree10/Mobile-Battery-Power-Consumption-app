// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import android.util.Log;

class tw
    implements Runnable
{

    final Intent a;
    final ts b;

    public tw(ts ts1, Intent intent)
    {
        b = ts1;
        super();
        a = intent;
    }

    public void run()
    {
        if (ud.b)
        {
            Log.d("stat.HwInfoService", (new StringBuilder()).append("enter in HandleWifiStateChange!\nAction received: ").append(a.getAction()).toString());
        }
        if ("android.net.wifi.WIFI_STATE_CHANGED".equals(a.getAction()))
        {
            ts.f(b);
        }
    }
}
