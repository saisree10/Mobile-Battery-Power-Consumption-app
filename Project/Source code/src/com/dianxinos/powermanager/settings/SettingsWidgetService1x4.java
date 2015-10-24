// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.settings;

import android.app.PendingIntent;
import android.app.Service;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.IBinder;
import android.widget.RemoteViews;
import aot;
import aow;
import aox;
import azt;
import java.util.ArrayList;
import java.util.HashMap;
import ly;

// Referenced classes of package com.dianxinos.powermanager.settings:
//            PowerSettingsWidgetProvider1x4, SettingsWidgetActivity

public class SettingsWidgetService1x4 extends Service
    implements aox
{

    public static String a = "SettingsWidgetService1x4";
    public static boolean b = false;
    public aot c;
    private ArrayList d;
    private int e[];
    private boolean f;

    public SettingsWidgetService1x4()
    {
        e = new int[2];
    }

    private PendingIntent a(int i)
    {
        Intent intent = new Intent();
        intent.setClass(this, com/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4);
        intent.addCategory("android.intent.category.ALTERNATIVE");
        intent.setData(Uri.parse((new StringBuilder()).append("custom:").append(i).toString()));
        return PendingIntent.getBroadcast(this, 0, intent, 0);
    }

    private void a()
    {
        Resources resources = getResources();
        int ai[] = e;
        com.dianxinos.dxbs.R.color _tmp = ly.c;
        ai[0] = resources.getColor(0x7f090035);
        int ai1[] = e;
        com.dianxinos.dxbs.R.color _tmp1 = ly.c;
        ai1[1] = resources.getColor(0x7f090034);
    }

    private void a(RemoteViews remoteviews)
    {
        ComponentName componentname = new ComponentName(this, com/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4);
        AppWidgetManager.getInstance(this).updateAppWidget(componentname, remoteviews);
        azt.b(a, "update SettingsWidget RemoteView OK.");
    }

    private void b()
    {
        ArrayList arraylist = c.a(c.b(getApplicationContext()));
        d = new ArrayList();
        for (int i = 0; i < 5; i++)
        {
            d.add(c.b.get(arraylist.get(i)));
        }

    }

    private RemoteViews c()
    {
        String s = getPackageName();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        RemoteViews remoteviews = new RemoteViews(s, 0x7f030061);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        remoteviews.setImageViewResource(0x7f07019f, ((aow)d.get(0)).c);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        remoteviews.setOnClickPendingIntent(0x7f07019e, a(0));
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        remoteviews.setImageViewResource(0x7f0701a1, ((aow)d.get(1)).c);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        remoteviews.setOnClickPendingIntent(0x7f0701a0, a(1));
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        remoteviews.setImageViewResource(0x7f0701a3, ((aow)d.get(2)).c);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        remoteviews.setOnClickPendingIntent(0x7f0701a2, a(2));
        com.dianxinos.dxbs.R.id _tmp7 = ly.f;
        remoteviews.setImageViewResource(0x7f0701a5, ((aow)d.get(3)).c);
        com.dianxinos.dxbs.R.id _tmp8 = ly.f;
        remoteviews.setOnClickPendingIntent(0x7f0701a4, a(3));
        com.dianxinos.dxbs.R.id _tmp9 = ly.f;
        remoteviews.setImageViewResource(0x7f0701a7, ((aow)d.get(4)).c);
        com.dianxinos.dxbs.R.id _tmp10 = ly.f;
        remoteviews.setOnClickPendingIntent(0x7f0701a6, a(4));
        Intent intent = new Intent(this, com/dianxinos/powermanager/settings/SettingsWidgetActivity);
        intent.putExtra("settingswidget", 1);
        PendingIntent pendingintent = PendingIntent.getActivity(this, 0, intent, 0x8000000);
        com.dianxinos.dxbs.R.id _tmp11 = ly.f;
        remoteviews.setOnClickPendingIntent(0x7f0701a8, pendingintent);
        return remoteviews;
    }

    public void a(HashMap hashmap)
    {
        if (b)
        {
            azt.a(a, " onWidgetStatusUpdated ");
        }
        b();
        a(c());
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        a();
        c = aot.a(this);
        super.onCreate();
    }

    public void onDestroy()
    {
        c.b(this);
        f = false;
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        if (f) goto _L2; else goto _L1
_L1:
        if (b)
        {
            azt.a(a, "registerListener PowerWidgetHelper");
        }
        c.a(this);
        f = true;
_L4:
        return super.onStartCommand(intent, i, j);
_L2:
        if (c != null)
        {
            a(c.b);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

}
