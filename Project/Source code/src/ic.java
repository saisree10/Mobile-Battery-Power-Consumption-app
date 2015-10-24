// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.dianxinos.acomponent.ui.ADMainActivity;

public class ic
{

    public boolean a;
    private Context b;
    private boolean c;

    public ic(Context context)
    {
        c = false;
        a = false;
        b = context;
    }

    private int a(String s)
    {
        if ("com.dianxinos.dxbb".equals(s))
        {
            return 1;
        }
        if ("com.dianxinos.powermanager".equals(s))
        {
            return 3;
        }
        if ("com.dianxinos.dxhome".equals(s))
        {
            return 4;
        }
        if ("cn.opda.a.phonoalbumshoushou".equals(s) || "com.dianxinos.optimizer.play".equals(s))
        {
            return 2;
        }
        if ("com.dianxinos.wallpaper".equals(s))
        {
            return 6;
        }
        return !"com.dianxinos.dxlauncher".equals(s) ? 0 : 5;
    }

    private void a(Notification notification, hc hc1)
    {
        RemoteViews remoteviews;
        String s1;
        String s = b.getPackageName();
        ly.g;
        remoteviews = new RemoteViews(s, 0x7f03003a);
        s1 = im.a(b, hc1.l);
        in.b("ADNotificationManager", (new StringBuilder()).append(" setRemoteview. safe ?: ").append(c).toString());
        if (!c) goto _L2; else goto _L1
_L1:
        ly.f;
        ly.e;
        remoteviews.setImageViewResource(0x7f0700e3, 0x7f0201a9);
        c = false;
_L4:
        ly.f;
        remoteviews.setTextViewText(0x7f070018, hc1.c);
        ly.f;
        remoteviews.setTextViewText(0x7f070015, hc1.d);
        notification.contentView = remoteviews;
        return;
_L2:
        if (s1 != null)
        {
            b.getApplicationContext().getResources();
            int i = 0;
            Bitmap bitmap = null;
            do
            {
                int j = i + 1;
                if (i >= 3 || bitmap != null)
                {
                    break;
                }
                bitmap = BitmapFactory.decodeFile(s1);
                i = j;
            } while (true);
            if (bitmap != null)
            {
                in.b("ADNotificationManager", (new StringBuilder()).append(" bm ;     ").append(bitmap.getHeight()).append("  \t  ").append(bitmap.getWidth()).toString());
                if (bitmap.getHeight() > 150 || bitmap.getWidth() > 150)
                {
                    in.b("ADNotificationManager", " size too big for a notification. force use safety mode. ");
                    ly.f;
                    ly.e;
                    remoteviews.setImageViewResource(0x7f0700e3, 0x7f0201a9);
                } else
                {
                    ly.f;
                    remoteviews.setImageViewBitmap(0x7f0700e3, bitmap);
                }
            } else
            {
                throw new ie(this, null);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void c()
    {
        if (!iq.b(b))
        {
            in.b("ADNotificationManager", "wifi do not work this time");
        } else
        {
            hc hc1 = hn.c(b).a().b;
            int i = hc1.m.length;
            int j = 0;
            while (j < i) 
            {
                hd hd1 = hc1.m[j];
                if (!TextUtils.isEmpty(hd1.g) && !TextUtils.isEmpty(hd1.f) && !TextUtils.isEmpty(hd1.h))
                {
                    hj.a(b).a(hn.c(b).a().c, hd1.g, hd1.f, hd1.h, 0, null);
                }
                j++;
            }
        }
    }

    public void a()
    {
        c = true;
    }

    public void b()
    {
        int j;
        hc hc1 = hn.c(b).a().b;
        NotificationManager notificationmanager = (NotificationManager)b.getSystemService("notification");
        ly.e;
        String s = hc1.h;
        int i;
        Notification notification;
        Intent intent;
        if (!TextUtils.isEmpty(s))
        {
            i = a(s);
        } else
        {
            i = a(b.getPackageName());
        }
        i;
        JVM INSTR tableswitch 1 6: default 92
    //                   1 212
    //                   2 224
    //                   3 248
    //                   4 236
    //                   5 260
    //                   6 272;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        ly.e;
        j = 0x7f0201a8;
_L9:
        notification = new Notification(j, hc1.d, System.currentTimeMillis());
        intent = new Intent(b, com/dianxinos/acomponent/ui/ADMainActivity);
        notification.contentIntent = PendingIntent.getActivity(b, 0, intent, 0);
        notification.flags = 0x10 | notification.flags;
        a(notification, hc1);
        in.b("ADNotificationManager", " set remoteview ok . ");
        notificationmanager.notify(11298, notification);
        a = true;
        c();
        return;
_L2:
        ly.e;
        j = 0x7f0201a4;
        continue; /* Loop/switch isn't completed */
_L3:
        ly.e;
        j = 0x7f0201ab;
        continue; /* Loop/switch isn't completed */
_L5:
        ly.e;
        j = 0x7f0201a5;
        continue; /* Loop/switch isn't completed */
_L4:
        ly.e;
        j = 0x7f0201a3;
        continue; /* Loop/switch isn't completed */
_L6:
        ly.e;
        j = 0x7f0201a6;
        continue; /* Loop/switch isn't completed */
_L7:
        ly.e;
        j = 0x7f0201aa;
        if (true) goto _L9; else goto _L8
_L8:
    }
}
