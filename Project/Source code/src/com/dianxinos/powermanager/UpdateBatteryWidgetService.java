// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import acz;
import adc;
import add;
import adp;
import adr;
import aff;
import android.app.PendingIntent;
import android.app.Service;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.IBinder;
import android.widget.RemoteViews;
import apg;
import axb;
import azy;
import ly;
import zr;

// Referenced classes of package com.dianxinos.powermanager:
//            PowerMgrTabActivity, BatteryPowerMidWidgetProvider

public class UpdateBatteryWidgetService extends Service
    implements adc, adr
{

    private static final int a = 0x7f0204a8;
    private static final int b = 0x7f0204a6;
    private static final int c = 0x7f0204ab;
    private static final int d = 0x7f0204a7;
    private static final int e = 0x7f0204aa;
    private static final int f = 0x7f0204ae;
    private int g;
    private int h;
    private int i;
    private aff j;
    private adp k;
    private int l;
    private int m;
    private boolean n;
    private boolean o;
    private acz p;

    public UpdateBatteryWidgetService()
    {
    }

    private Bitmap a(Bitmap bitmap, int i1, int j1)
    {
        int k1 = bitmap.getHeight();
        Bitmap bitmap1 = zr.a(bitmap, (1.0F * (float)j1) / (float)k1);
        if (i1 == bitmap1.getWidth())
        {
            return bitmap1;
        } else
        {
            Bitmap bitmap2 = Bitmap.createBitmap(h, i, android.graphics.Bitmap.Config.ARGB_8888);
            (new Canvas(bitmap2)).drawBitmap(bitmap1, new Rect(0, 0, Math.min(i1, bitmap1.getWidth()), j1), new Rect(0, 0, i1, j1), new Paint());
            bitmap1.recycle();
            return bitmap2;
        }
    }

    private void a(RemoteViews remoteviews)
    {
        int i1;
        int j1;
        ly.f;
        remoteviews.setViewVisibility(0x7f07003f, 8);
        ly.f;
        remoteviews.setViewVisibility(0x7f07003e, 8);
        i1 = axb.a(getApplicationContext(), 116);
        j1 = (i1 * l) / 100;
        if (k.c()) goto _L2; else goto _L1
_L1:
        Bitmap bitmap2;
        if (m == 0)
        {
            if (20 < l && l < 50)
            {
                g = c;
            } else
            if (l == 50)
            {
                g = d;
            } else
            {
                g = e;
            }
        } else
        if (l >= 0 && l <= 2)
        {
            g = b;
        } else
        if (2 < l && l <= 7)
        {
            g = a;
        } else
        {
            g = f;
        }
_L6:
        if (l >= 0 && l <= 7)
        {
            bitmap2 = BitmapFactory.decodeResource(getResources(), g);
        } else
        {
            if (l <= 13)
            {
                j1 = (i1 * 13) / 100;
            }
            bitmap2 = axb.a(getResources().getDrawable(g), j1, 0);
        }
        if (bitmap2 != null)
        {
            ly.f;
            remoteviews.setImageViewBitmap(0x7f07003e, bitmap2);
            ly.f;
            remoteviews.setViewVisibility(0x7f07003e, 0);
        }
_L4:
        return;
_L2:
        Bitmap bitmap = k.a(k.f(), k.g(), true);
        if (bitmap == null) goto _L4; else goto _L3
_L3:
        Bitmap bitmap1 = a(bitmap, (int)(((float)h / 100F) * (float)l), i);
        ly.f;
        remoteviews.setImageViewBitmap(0x7f07003f, bitmap1);
        ly.f;
        remoteviews.setViewVisibility(0x7f07003f, 0);
        return;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void b()
    {
        if (!d())
        {
            return;
        }
        if (i == 0)
        {
            Resources resources = getResources();
            com.dianxinos.dxbs.R.dimen _tmp = ly.d;
            h = resources.getDimensionPixelSize(0x7f08006e);
            Resources resources1 = getResources();
            com.dianxinos.dxbs.R.dimen _tmp1 = ly.d;
            i = resources1.getDimensionPixelSize(0x7f08006f);
        }
        RemoteViews remoteviews = c();
        a(remoteviews);
        b(remoteviews);
        c(remoteviews);
    }

    private void b(add add1)
    {
        boolean flag;
        if (j == null)
        {
            flag = add1.l;
        } else
        if (add1.l && j.e() != 100 && j.e() != 103)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        l = add1.j;
        n = flag;
        if (l > 20)
        {
            m = 0;
            return;
        } else
        {
            m = 1;
            return;
        }
    }

    private void b(RemoteViews remoteviews)
    {
        String s;
        if (n)
        {
            com.dianxinos.dxbs.R.id _tmp = ly.f;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            remoteviews.setImageViewResource(0x7f070040, 0x7f0204af);
            com.dianxinos.dxbs.R.id _tmp2 = ly.f;
            remoteviews.setViewVisibility(0x7f070040, 0);
        } else
        {
            com.dianxinos.dxbs.R.id _tmp3 = ly.f;
            remoteviews.setViewVisibility(0x7f070040, 8);
        }
        s = (new StringBuilder()).append(l).append("%").toString();
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        remoteviews.setTextViewText(0x7f070041, s);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        remoteviews.setViewVisibility(0x7f070041, 0);
    }

    private RemoteViews c()
    {
        String s = getPackageName();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        RemoteViews remoteviews = new RemoteViews(s, 0x7f03000d);
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(new ComponentName(getApplicationContext(), com/dianxinos/powermanager/PowerMgrTabActivity));
        intent.putExtra("From", 8);
        intent.setAction("com.dianxinos.dxbs.MidBatteryWidget");
        intent.addFlags(0x10200000);
        PendingIntent pendingintent = PendingIntent.getActivity(this, 0, intent, 0x8000000);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        remoteviews.setOnClickPendingIntent(0x7f07003d, pendingintent);
        return remoteviews;
    }

    private void c(RemoteViews remoteviews)
    {
        ComponentName componentname = new ComponentName(this, com/dianxinos/powermanager/BatteryPowerMidWidgetProvider);
        AppWidgetManager appwidgetmanager = AppWidgetManager.getInstance(this);
        try
        {
            appwidgetmanager.updateAppWidget(componentname, remoteviews);
            return;
        }
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
        }
    }

    private boolean d()
    {
        int ai[];
        try
        {
            ComponentName componentname = new ComponentName(this, com/dianxinos/powermanager/BatteryPowerMidWidgetProvider);
            ai = AppWidgetManager.getInstance(this).getAppWidgetIds(componentname);
        }
        catch (Throwable throwable)
        {
            return false;
        }
        if (ai == null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        if (ai.length == 0)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        apg.b(this, true);
        return true;
        apg.b(this, false);
        return false;
    }

    public void a()
    {
        b();
    }

    public void a(add add1)
    {
        if (!azy.d(getApplicationContext(), com/dianxinos/powermanager/UpdateBatteryWidgetService.getName()))
        {
            Intent intent = new Intent(getApplicationContext(), com/dianxinos/powermanager/UpdateBatteryWidgetService);
            getApplicationContext().startService(intent);
        }
        b(add1);
        b();
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        super.onCreate();
        j = aff.a(getApplicationContext());
        k = adp.a(getApplicationContext());
        k.a(this);
        p = acz.a(this);
        p.a(this);
        add add1 = p.c();
        if (add1 != null)
        {
            b(add1);
            b();
        }
    }

    public void onDestroy()
    {
        if (o)
        {
            p.b(this);
        }
        if (k != null)
        {
            k.a(this);
        }
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int i1, int j1)
    {
        if (!o)
        {
            p.a(this);
            o = true;
        } else
        {
            b();
        }
        return super.onStartCommand(intent, i1, j1);
    }

    static 
    {
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
        com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
    }
}
