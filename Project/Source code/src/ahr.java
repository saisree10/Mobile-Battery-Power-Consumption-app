// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.IntentFilter;

public class ahr extends ahp
{

    private ContentResolver a;
    private boolean h;
    private BroadcastReceiver i;

    public ahr(Context context)
    {
        super(context);
        i = new ahs(this);
        h = azl.a(context);
        f = false;
        a = context.getContentResolver();
    }

    public void a(ahq ahq)
    {
        e = ahq;
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.location.PROVIDERS_CHANGED");
        d.registerReceiver(i, intentfilter);
    }

    public void a(boolean flag)
    {
        if (!f)
        {
            return;
        }
        if (h)
        {
            try
            {
                android.provider.Settings.Secure.setLocationProviderEnabled(a, "gps", flag);
                return;
            }
            catch (Exception exception)
            {
                azt.c("GpsCommand", (new StringBuilder()).append("setLocationProviderEnabled error: ").append(exception.toString()).toString());
            }
            azl.a().a(flag);
            return;
        } else
        {
            azl.a().a(flag);
            return;
        }
    }

    public boolean a()
    {
        g = android.provider.Settings.Secure.isLocationProviderEnabled(a, "gps");
        return g;
    }

    public String c()
    {
        Context context = d;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a00c7);
    }

    public String toString()
    {
        return "GpsCommand ";
    }
}
