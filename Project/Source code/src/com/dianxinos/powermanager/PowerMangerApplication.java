// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import aar;
import aaw;
import aax;
import aay;
import acc;
import amb;
import amp;
import android.app.Application;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Handler;
import android.telephony.TelephonyManager;
import ass;
import ath;
import azi;
import azt;
import bal;
import com.dianxinos.backend.DXBackendConfig;
import com.dianxinos.common.coins.CoinManager;
import java.util.Locale;
import ka;
import mh;
import nl;
import nm;
import pa;

// Referenced classes of package com.dianxinos.powermanager:
//            PowerMgrService, WidgetUpdataService1x4, UpdateBatteryWidgetService

public class PowerMangerApplication extends Application
{

    private static PowerMangerApplication a = null;
    private static boolean b;
    private String c;
    private Handler d;
    private amb e;

    public PowerMangerApplication()
    {
        d = new aaw(this);
    }

    public static PowerMangerApplication a()
    {
        return a;
    }

    public static void a(int i, int j)
    {
        a.d.sendMessage(a.d.obtainMessage(2, j, i));
    }

    public static void a(CharSequence charsequence, int i)
    {
        a.d.sendMessage(a.d.obtainMessage(2, i, 0, charsequence));
    }

    public static void a(boolean flag)
    {
        b = flag;
    }

    public static PowerMangerApplication b()
    {
        return a;
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        String s = configuration.locale.toString();
        if (c != null && !c.equals(s))
        {
            azt.a("PowerMangerApplication", (new StringBuilder()).append("locale changed, oldLocale: ").append(c).append(", newLocale: ").append(s).toString());
            c = s;
            ath.a(this).a();
            amp.a(this).h();
            aar.a(this).b();
            acc.a(this).d();
        }
    }

    public void onCreate()
    {
        azt.a("PowerMangerApplication", "app created");
        super.onCreate();
        CoinManager.a(this);
        a = this;
        nm.a();
        DXBackendConfig.a(this);
        bal.a(this, 0);
        ka.a(this).f();
        ass.a(getApplicationContext());
        azi.a().a(new aax(this));
        e = amb.a(a);
        String s;
        try
        {
            c = getResources().getConfiguration().locale.toString();
        }
        catch (Exception exception)
        {
            c = null;
        }
        s = ((TelephonyManager)getSystemService("phone")).getSimCountryIso();
        if (s != null && (s.equals("us") || s.equals("US")) && !e.c())
        {
            e.b(false);
        }
        azt.b("PowerMangerApplication", "start main service ...");
        startService(new Intent(this, com/dianxinos/powermanager/PowerMgrService));
        startService(new Intent(this, com/dianxinos/powermanager/WidgetUpdataService1x4));
        startService(new Intent(this, com/dianxinos/powermanager/UpdateBatteryWidgetService));
        (new aay(this, null)).start();
        bal.d(this);
        pa.a(4);
        pa.a(true);
        mh.a("55c2ff3f-423d-4c0c-af3b-f0e784e7be0a");
        mh.b("TyBPfinHZV3Ig2dxRAzY");
        nl.a(a).b();
    }

    public void onTerminate()
    {
        super.onTerminate();
    }

}
