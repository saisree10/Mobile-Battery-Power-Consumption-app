// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.usage;

import aam;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import axy;
import axz;
import ayg;
import com.dianxinos.powermanager.PowerMgrTabActivity;
import java.util.ArrayList;
import java.util.List;
import ly;

public class AppPowerUsageKitKatActivity extends aam
{

    private ListView a;
    private LinearLayout b;
    private TextView c;
    private ActivityManager d;
    private List e;
    private ayg f;
    private axz g;
    private Handler h;

    public AppPowerUsageKitKatActivity()
    {
        e = new ArrayList();
        h = new axy(this);
    }

    public static Handler a(AppPowerUsageKitKatActivity apppowerusagekitkatactivity)
    {
        return apppowerusagekitkatactivity.h;
    }

    public static axz a(AppPowerUsageKitKatActivity apppowerusagekitkatactivity, axz axz1)
    {
        apppowerusagekitkatactivity.g = axz1;
        return axz1;
    }

    public static List a(AppPowerUsageKitKatActivity apppowerusagekitkatactivity, List list)
    {
        apppowerusagekitkatactivity.e = list;
        return list;
    }

    public static ActivityManager b(AppPowerUsageKitKatActivity apppowerusagekitkatactivity)
    {
        return apppowerusagekitkatactivity.d;
    }

    public static List c(AppPowerUsageKitKatActivity apppowerusagekitkatactivity)
    {
        return apppowerusagekitkatactivity.e;
    }

    public static ayg d(AppPowerUsageKitKatActivity apppowerusagekitkatactivity)
    {
        return apppowerusagekitkatactivity.f;
    }

    public static ListView e(AppPowerUsageKitKatActivity apppowerusagekitkatactivity)
    {
        return apppowerusagekitkatactivity.a;
    }

    public static LinearLayout f(AppPowerUsageKitKatActivity apppowerusagekitkatactivity)
    {
        return apppowerusagekitkatactivity.b;
    }

    public static TextView g(AppPowerUsageKitKatActivity apppowerusagekitkatactivity)
    {
        return apppowerusagekitkatactivity.c;
    }

    public static axz h(AppPowerUsageKitKatActivity apppowerusagekitkatactivity)
    {
        return apppowerusagekitkatactivity.g;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 444 && e.size() != d.getRunningAppProcesses().size())
        {
            g = new axz(this);
            g.execute(new Object[0]);
        }
    }

    public void onBackPressed()
    {
        Activity activity = getParent();
        if (activity != null)
        {
            activity.onBackPressed();
            return;
        } else
        {
            finish();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030001);
        d = (ActivityManager)getSystemService("activity");
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        a = (ListView)findViewById(0x7f070010);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        b = (LinearLayout)findViewById(0x7f070011);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        c = (TextView)findViewById(0x7f070012);
        a.setEmptyView(b);
        f = new ayg(this);
        g = new axz(this);
        g.execute(new Object[0]);
    }

    protected void onResume()
    {
        Activity activity = getParent();
        if (activity != null)
        {
            PowerMgrTabActivity powermgrtabactivity = (PowerMgrTabActivity)activity;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            powermgrtabactivity.setTitle(0x7f0a0051);
        }
        super.onResume();
    }

    public void startActivity(Intent intent)
    {
        getParent().startActivity(intent);
    }
}
