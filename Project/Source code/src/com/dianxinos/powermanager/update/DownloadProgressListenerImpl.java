// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.update;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.widget.RemoteViews;
import axn;
import azf;
import azt;
import com.dianxinos.powermanager.PowerMgrTabActivity;
import iz;
import ka;
import ly;

// Referenced classes of package com.dianxinos.powermanager.update:
//            DownloadActivity

public class DownloadProgressListenerImpl
    implements iz
{

    private NotificationManager a;
    private int b;

    public DownloadProgressListenerImpl()
    {
    }

    private void a(Context context, int i)
    {
        String s;
        Intent intent;
        PendingIntent pendingintent;
        String s1;
        Notification notification;
        if (i == 3)
        {
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            s = context.getString(0x7f0a0120);
        } else
        if (i == 5 || i == 4)
        {
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            s = context.getString(0x7f0a0122);
        } else
        if (i == 6)
        {
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            s = context.getString(0x7f0a0123);
        } else
        if (i == 7)
        {
            com.dianxinos.dxbs.R.string _tmp3 = ly.i;
            s = context.getString(0x7f0a0121);
        } else
        if (i == 9)
        {
            com.dianxinos.dxbs.R.string _tmp4 = ly.i;
            s = context.getString(0x7f0a0120);
        } else
        if (i == 2)
        {
            com.dianxinos.dxbs.R.string _tmp5 = ly.i;
            s = context.getString(0x7f0a0125);
        } else
        if (i == 10)
        {
            com.dianxinos.dxbs.R.string _tmp6 = ly.i;
            s = context.getString(0x7f0a0124);
        } else
        if (i == 8)
        {
            com.dianxinos.dxbs.R.string _tmp7 = ly.i;
            s = context.getString(0x7f0a0126);
        } else
        {
            com.dianxinos.dxbs.R.string _tmp8 = ly.i;
            s = context.getString(0x7f0a0124);
        }
        azt.c("DownloadProgressListenerImpl", (new StringBuilder()).append("Download failed with error: ").append(i).toString());
        intent = new Intent(context, com/dianxinos/powermanager/PowerMgrTabActivity);
        intent.addFlags(0x10000000);
        pendingintent = PendingIntent.getActivity(context, 0, intent, 0);
        com.dianxinos.dxbs.R.string _tmp9 = ly.i;
        s1 = context.getString(0x7f0a011f);
        com.dianxinos.dxbs.R.drawable _tmp10 = ly.e;
        notification = new Notification(0x7f02000e, s1, 0L);
        notification.flags = 16;
        notification.setLatestEventInfo(context, s1, s, pendingintent);
        a.notify(3, notification);
    }

    private void a(Context context, int i, boolean flag, boolean flag1, int j)
    {
        if (a == null)
        {
            a = (NotificationManager)context.getSystemService("notification");
        }
        b = i;
        a.cancel(3);
        if (!flag) goto _L2; else goto _L1
_L1:
        if (!flag1) goto _L4; else goto _L3
_L3:
        ka.a(context.getApplicationContext()).a(null);
_L5:
        a.cancel(1);
        return;
_L4:
        if (j != 1)
        {
            a(context, j);
        }
        if (true) goto _L5; else goto _L2
_L2:
        ly.i;
        String s = context.getString(0x7f0a004a);
        ly.i;
        String s1 = context.getString(0x7f0a011c, new Object[] {
            s
        });
        Intent intent = new Intent(context, com/dianxinos/powermanager/update/DownloadActivity);
        intent.addFlags(0x10000000);
        intent.putExtra("percent", i);
        ly.g;
        RemoteViews remoteviews = new RemoteViews("com.dianxinos.dxbs", 0x7f030086);
        ly.f;
        ly.e;
        remoteviews.setImageViewResource(0x7f070014, 0x7f02000d);
        ly.f;
        remoteviews.setTextViewText(0x7f070018, s1);
        ly.f;
        remoteviews.setTextViewText(0x7f07021e, (new StringBuilder()).append(i).append("%").toString());
        ly.f;
        remoteviews.setProgressBar(0x7f070092, 100, i, false);
        int k = azf.r();
        if (k > 0)
        {
            int l = context.getResources().getColor(k);
            ly.f;
            remoteviews.setTextColor(0x7f070018, l);
            ly.f;
            remoteviews.setTextColor(0x7f07021e, l);
        }
        PendingIntent pendingintent = PendingIntent.getActivity(context, 0, intent, 0x8000000);
        Notification notification = new Notification();
        ly.e;
        notification.icon = 0x7f02000e;
        notification.when = 0L;
        notification.flags = 2;
        notification.defaults = 0;
        notification.sound = null;
        notification.vibrate = null;
        notification.contentView = remoteviews;
        notification.contentIntent = pendingintent;
        notification.tickerText = s1;
        a.notify(1, notification);
        return;
    }

    public void a(Context context, long l, long l1)
    {
        int i = b;
        if (l1 > 0L && l > 0L)
        {
            i = (int)((100L * l) / l1);
        }
        a(context, i, false, false, 0);
    }

    public void a(Context context, String s, long l, long l1)
    {
        int i;
        if (l1 > 0L)
        {
            i = (int)((100L * l) / l1);
        } else
        {
            i = 0;
        }
        a(context, i, false, false, 0);
    }

    public void a(Context context, String s, boolean flag, int i, String s1, int j)
    {
        azt.a("DownloadProgressListenerImpl", (new StringBuilder()).append("Download complete with result: ").append(j).toString());
        a(context, b, true, flag, j);
        if (j != 2)
        {
            axn.e();
        }
    }
}
