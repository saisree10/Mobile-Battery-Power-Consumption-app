// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import aci;
import acj;
import add;
import aff;
import afh;
import ahd;
import ahp;
import amh;
import amp;
import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.widget.RemoteViews;
import apg;
import axb;
import aza;
import azf;
import azt;
import azw;
import azy;
import baj;
import com.dianxinos.powermanager.mode.ModeSelectDialog;
import com.dianxinos.powermanager.settings.PowerSettingsWidgetProvider1x4;
import com.dianxinos.powermanager.settings.SettingsWidgetActivity;
import ly;

// Referenced classes of package com.dianxinos.powermanager:
//            PowerMgrTabActivity, PowerMgrMidWidgetProvider, DXWidgetClientService1x4

public class WidgetUpdataService1x4 extends acj
{

    private static amh b;
    private amp c;
    private int d;
    private int e;
    private int f;
    private boolean g;
    private int h;
    private final boolean i;
    private final boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private String n;
    private int o;
    private int p;
    private baj q;
    private aff r;
    private long s;
    private Handler t;

    public WidgetUpdataService1x4()
    {
        i = azw.i;
        boolean flag;
        if (azf.e() && azw.h)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j = flag;
        s = 0L;
        t = new Handler();
    }

    public static int a(WidgetUpdataService1x4 widgetupdataservice1x4)
    {
        return widgetupdataservice1x4.f;
    }

    private void a(RemoteViews remoteviews)
    {
        int i1 = 1 + (f * axb.a(getApplicationContext(), 88)) / 100;
        if (f != 100) goto _L2; else goto _L1
_L1:
        Bitmap bitmap1;
        Resources resources = a;
        ly.e;
        bitmap1 = BitmapFactory.decodeResource(resources, 0x7f0204ad, null);
        if (bitmap1 != null) goto _L4; else goto _L3
_L3:
        int j1;
        return;
_L4:
        if ((j1 = bitmap1.getHeight()) > 0 && i1 > 0)
        {
            Resources resources1 = a;
            ly.e;
            Bitmap bitmap2 = (new aza(resources1, 0x7f0204ad, i1 + 2, j1)).a();
            if (bitmap2 != null)
            {
                ly.f;
                remoteviews.setImageViewBitmap(0x7f0700f1, bitmap2);
                return;
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        Bitmap bitmap;
        if (e == 0)
        {
            bitmap = axb.a(a, i1, false);
        } else
        {
            bitmap = axb.a(a, i1, true);
        }
        if (bitmap != null)
        {
            ly.f;
            remoteviews.setImageViewBitmap(0x7f0700f1, bitmap);
            return;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    private RemoteViews b()
    {
        String s1 = getPackageName();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        RemoteViews remoteviews = new RemoteViews(s1, 0x7f030060);
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(new ComponentName(getApplicationContext(), com/dianxinos/powermanager/PowerMgrTabActivity));
        intent.putExtra("From", 2);
        intent.setAction("com.dianxinos.dxbs.MidWidget");
        intent.addFlags(0x10200000);
        PendingIntent pendingintent = PendingIntent.getActivity(this, 0, intent, 0x8000000);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        remoteviews.setOnClickPendingIntent(0x7f0700f2, pendingintent);
        PendingIntent pendingintent1 = PendingIntent.getBroadcast(this, 0, new Intent("com.dianxinos.dxbs.ONEKEY"), 0);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        remoteviews.setOnClickPendingIntent(0x7f0700f5, pendingintent1);
        Intent intent1 = new Intent(this, com/dianxinos/powermanager/mode/ModeSelectDialog);
        intent1.putExtra("From", 2);
        PendingIntent pendingintent2 = PendingIntent.getActivity(this, 1, intent1, 0x8000000);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        remoteviews.setOnClickPendingIntent(0x7f07019c, pendingintent2);
        PendingIntent pendingintent3 = PendingIntent.getActivity(this, 2, new Intent(this, com/dianxinos/powermanager/settings/SettingsWidgetActivity), 0x8000000);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        remoteviews.setOnClickPendingIntent(0x7f07019a, pendingintent3);
        return remoteviews;
    }

    private void b(RemoteViews remoteviews)
    {
        if (g)
        {
            com.dianxinos.dxbs.R.id _tmp = ly.f;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            remoteviews.setImageViewResource(0x7f0700f4, 0x7f0204af);
            com.dianxinos.dxbs.R.id _tmp2 = ly.f;
            remoteviews.setViewVisibility(0x7f0700f4, 0);
            com.dianxinos.dxbs.R.id _tmp3 = ly.f;
            remoteviews.setViewVisibility(0x7f0700f3, 8);
            return;
        } else
        {
            String s1 = (new StringBuilder()).append(f).append("%").toString();
            com.dianxinos.dxbs.R.id _tmp4 = ly.f;
            remoteviews.setTextViewText(0x7f0700f3, s1);
            com.dianxinos.dxbs.R.id _tmp5 = ly.f;
            remoteviews.setViewVisibility(0x7f0700f3, 0);
            com.dianxinos.dxbs.R.id _tmp6 = ly.f;
            remoteviews.setViewVisibility(0x7f0700f4, 8);
            return;
        }
    }

    public static boolean b(WidgetUpdataService1x4 widgetupdataservice1x4)
    {
        return widgetupdataservice1x4.g;
    }

    public static int c(WidgetUpdataService1x4 widgetupdataservice1x4)
    {
        return widgetupdataservice1x4.o;
    }

    private void c(RemoteViews remoteviews)
    {
        int j1;
        int k1;
        if (g)
        {
            int l1;
            int i2;
            int j2;
            int k2;
            int l2;
            int i3;
            int j3;
            int k3;
            StringBuffer stringbuffer;
            Resources resources1;
            int l3;
            if ((long)o == -1L)
            {
                azt.b("WidgetUpdataService1x4", " charging time unkonwn ");
                l3 = 0;
            } else
            {
                l3 = o;
            }
            com.dianxinos.dxbs.R.id _tmp = ly.f;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            remoteviews.setTextViewText(0x7f0700f7, getString(0x7f0a0176));
            j1 = l3;
        } else
        {
            int i1;
            if (p == -1)
            {
                azt.b("WidgetUpdataService1x4", " Remaining time unavaiable ");
                i1 = 0;
            } else
            {
                i1 = p;
            }
            com.dianxinos.dxbs.R.id _tmp2 = ly.f;
            com.dianxinos.dxbs.R.string _tmp3 = ly.i;
            remoteviews.setTextViewText(0x7f0700f7, getString(0x7f0a0177));
            j1 = i1;
        }
        if (j1 > 3600)
        {
            k1 = j1 / 3600;
            j1 -= k1 * 3600;
        } else
        {
            k1 = 0;
        }
        l1 = 0;
        if (j1 >= 60)
        {
            l1 = j1 / 60;
            int _tmp4 = j1 - l1 * 60;
        }
        if (k1 > 999)
        {
            k1 = 999;
        }
        i2 = k1 / 100;
        j2 = (k1 % 100) / 10;
        k2 = k1 % 10;
        l2 = l1 / 10;
        i3 = l1 % 10;
        j3 = k2 + (i2 * 100 + j2 * 10);
        k3 = i3 + l2 * 10;
        stringbuffer = new StringBuffer();
        stringbuffer.append(" ");
        stringbuffer.append(j3);
        stringbuffer.append(":");
        if (l2 == 0)
        {
            stringbuffer.append("0");
        }
        stringbuffer.append(k3);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        remoteviews.setTextViewText(0x7f0700f8, stringbuffer.toString());
        if (e == 0)
        {
            com.dianxinos.dxbs.R.id _tmp6 = ly.f;
            resources1 = getResources();
            com.dianxinos.dxbs.R.color _tmp7 = ly.c;
            remoteviews.setTextColor(0x7f0700f8, resources1.getColor(0x7f090087));
            return;
        } else
        {
            com.dianxinos.dxbs.R.id _tmp8 = ly.f;
            Resources resources = getResources();
            com.dianxinos.dxbs.R.color _tmp9 = ly.c;
            remoteviews.setTextColor(0x7f0700f8, resources.getColor(0x7f090085));
            return;
        }
    }

    private boolean c()
    {
        return azy.b("com.dianxinos.dxhome") >= 449;
    }

    public static int d(WidgetUpdataService1x4 widgetupdataservice1x4)
    {
        return widgetupdataservice1x4.p;
    }

    private void d(RemoteViews remoteviews)
    {
        String s1 = c.e();
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        remoteviews.setTextViewText(0x7f07019d, s1);
        if (!i && azf.b(this))
        {
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            remoteviews.setViewVisibility(0x7f070146, 8);
            com.dianxinos.dxbs.R.id _tmp2 = ly.f;
            remoteviews.setViewVisibility(0x7f07019b, 8);
            com.dianxinos.dxbs.R.id _tmp3 = ly.f;
            remoteviews.setViewVisibility(0x7f070149, 8);
        } else
        {
            if (!k)
            {
                com.dianxinos.dxbs.R.id _tmp4 = ly.f;
                com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
                remoteviews.setImageViewResource(0x7f070146, 0x7f020429);
                com.dianxinos.dxbs.R.id _tmp6 = ly.f;
                com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
                remoteviews.setImageViewResource(0x7f07019b, 0x7f020425);
            } else
            {
                com.dianxinos.dxbs.R.id _tmp8 = ly.f;
                com.dianxinos.dxbs.R.drawable _tmp9 = ly.e;
                remoteviews.setImageViewResource(0x7f070146, 0x7f020428);
                com.dianxinos.dxbs.R.id _tmp10 = ly.f;
                com.dianxinos.dxbs.R.drawable _tmp11 = ly.e;
                remoteviews.setImageViewResource(0x7f07019b, 0x7f020424);
            }
            if (j)
            {
                if (l)
                {
                    com.dianxinos.dxbs.R.id _tmp12 = ly.f;
                    com.dianxinos.dxbs.R.drawable _tmp13 = ly.e;
                    remoteviews.setImageViewResource(0x7f070149, 0x7f020427);
                } else
                {
                    com.dianxinos.dxbs.R.id _tmp14 = ly.f;
                    com.dianxinos.dxbs.R.drawable _tmp15 = ly.e;
                    remoteviews.setImageViewResource(0x7f070149, 0x7f020426);
                }
                if (azf.i() && k)
                {
                    com.dianxinos.dxbs.R.id _tmp16 = ly.f;
                    com.dianxinos.dxbs.R.drawable _tmp17 = ly.e;
                    remoteviews.setImageViewResource(0x7f070149, 0x7f020426);
                }
            } else
            {
                com.dianxinos.dxbs.R.id _tmp18 = ly.f;
                remoteviews.setViewVisibility(0x7f070149, 8);
            }
        }
        if (m)
        {
            com.dianxinos.dxbs.R.id _tmp19 = ly.f;
            com.dianxinos.dxbs.R.drawable _tmp20 = ly.e;
            remoteviews.setImageViewResource(0x7f070148, 0x7f02042c);
            return;
        } else
        {
            com.dianxinos.dxbs.R.id _tmp21 = ly.f;
            com.dianxinos.dxbs.R.drawable _tmp22 = ly.e;
            remoteviews.setImageViewResource(0x7f070148, 0x7f02042b);
            return;
        }
    }

    private boolean d()
    {
        return azy.b("com.dianxinos.dxlauncher") >= 1;
    }

    public static int e(WidgetUpdataService1x4 widgetupdataservice1x4)
    {
        return widgetupdataservice1x4.e;
    }

    private void e()
    {
        if (azy.a(this, "com.gau.go.launcherex"))
        {
            long l1 = System.currentTimeMillis();
            if (l1 - s > 200L)
            {
                s = l1;
                t.postDelayed(new aci(this), 300L);
            }
        }
    }

    private void e(RemoteViews remoteviews)
    {
        ComponentName componentname = new ComponentName(this, com/dianxinos/powermanager/PowerMgrMidWidgetProvider);
        AppWidgetManager appwidgetmanager = AppWidgetManager.getInstance(this);
        int ai[];
        int ai1[];
        try
        {
            ai = appwidgetmanager.getAppWidgetIds(componentname);
        }
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
            return;
        }
        if (ai != null && ai.length != 0)
        {
            apg.a(this, true);
        } else
        {
            apg.a(this, false);
        }
        try
        {
            appwidgetmanager.updateAppWidget(componentname, remoteviews);
        }
        catch (Throwable throwable1)
        {
            throwable1.printStackTrace();
        }
        f(remoteviews);
        try
        {
            ai1 = appwidgetmanager.getAppWidgetIds(new ComponentName(this, com/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4));
        }
        catch (Throwable throwable2)
        {
            throwable2.printStackTrace();
            return;
        }
        if (ai1 != null && ai1.length != 0)
        {
            apg.c(this, true);
        } else
        {
            apg.c(this, false);
        }
        azt.b("WidgetUpdataService1x4", (new StringBuilder()).append("update Widget RemoteView : ").append(remoteviews).toString());
    }

    private void f(RemoteViews remoteviews)
    {
        while (!c() && !d() || !q.b()) 
        {
            return;
        }
        Intent intent = new Intent(this, com/dianxinos/powermanager/DXWidgetClientService1x4);
        intent.setAction("com.dianxinos.dxbs.action.DXHomeWidgetUpdate");
        intent.putExtra("action_type", 0);
        intent.putExtra("remote_view", remoteviews);
        startService(intent);
    }

    protected void a()
    {
        e();
        RemoteViews remoteviews = b();
        a(remoteviews);
        b(remoteviews);
        c(remoteviews);
        d(remoteviews);
        e(remoteviews);
    }

    protected boolean b(add add1)
    {
        boolean flag;
        int i1;
        String s1;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        int j1;
        if (r == null)
        {
            flag = add1.l;
        } else
        if (add1.l && r.e() != 100 && r.e() != 103)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i1 = c.b();
        s1 = c.e();
        flag1 = b.l().a();
        flag2 = b.a(4).a();
        flag3 = b.a(2).a();
        j1 = r.f().c();
        if (f == add1.j && g == flag && h == add1.e && o == j1 && d == i1 && s1.equalsIgnoreCase(n) && m == flag3 && (flag || p == add1.k) && (!i || k == flag1) && (!j || l == flag2))
        {
            return false;
        }
        f = add1.j;
        g = flag;
        h = add1.e;
        o = j1;
        p = add1.k;
        d = i1;
        n = s1;
        m = flag3;
        k = flag1;
        l = flag2;
        if (f > 20)
        {
            e = 0;
        } else
        {
            e = 1;
        }
        return true;
    }

    public void onCreate()
    {
        super.onCreate();
        c = amp.a(this);
        b = c.g();
        d = c.b();
        q = baj.a(getApplicationContext());
        r = aff.a(getApplicationContext());
    }

    public int onStartCommand(Intent intent, int i1, int j1)
    {
        return super.onStartCommand(intent, i1, j1);
    }
}
