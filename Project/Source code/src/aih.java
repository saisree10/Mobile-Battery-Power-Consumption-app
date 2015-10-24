// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.wifi.WifiManager;

public class aih extends ahp
{

    private WifiManager a;
    private int h;
    private BroadcastReceiver i;

    public aih(Context context)
    {
        super(context);
        i = new aii(this);
        f = azw.l;
        a = (WifiManager)context.getSystemService("wifi");
        if (!f)
        {
            return;
        }
        try
        {
            a(a());
            return;
        }
        catch (SecurityException securityexception)
        {
            f = false;
        }
    }

    static int a(aih aih1)
    {
        return aih1.h;
    }

    public void a(ahq ahq)
    {
        e = ahq;
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        d.registerReceiver(i, intentfilter);
    }

    public void a(boolean flag)
    {
        if (!f)
        {
            return;
        } else
        {
            g = flag;
            a.setWifiEnabled(flag);
            return;
        }
    }

    public boolean a()
    {
        h = a.getWifiState();
        if (h == 3 || h == 2)
        {
            g = true;
            return true;
        } else
        {
            g = false;
            return false;
        }
    }

    public String c()
    {
        Context context = d;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a00c4);
    }

    public String toString()
    {
        return "WifiCommand";
    }
}
