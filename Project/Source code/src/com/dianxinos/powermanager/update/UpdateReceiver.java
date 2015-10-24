// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.update;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.RingtoneManager;
import axl;
import axm;
import azt;
import azy;
import bap;
import ka;
import ly;

// Referenced classes of package com.dianxinos.powermanager.update:
//            UpdateDialogActivity

public class UpdateReceiver extends BroadcastReceiver
{

    private boolean a;

    public UpdateReceiver()
    {
        a = false;
    }

    public void onReceive(Context context, Intent intent)
    {
        if (!intent.getAction().equals("com.dianxinos.appupdate.intent.NEW_UPDATE")) goto _L2; else goto _L1
_L1:
        int i;
        String s;
        String s1;
        String s2;
        i = intent.getIntExtra("new_vc", 0);
        s = intent.getStringExtra("new-vn");
        s1 = intent.getStringExtra("update-dspt");
        s2 = intent.getStringExtra("update-file-size");
        String s9;
        int k = Integer.parseInt(s2);
        Object aobj2[] = new Object[1];
        aobj2[0] = Float.valueOf((float)k / 1048576F);
        s9 = String.format("%1.2fM", aobj2);
        String s3 = s9;
_L3:
        int j = intent.getIntExtra("update-pri", 0);
        azt.b("UpdateReceiver", (new StringBuilder()).append("Has new version :").append(s).append("_").append(i).append(", priority: ").append(j).append(", size:").append(s3).append(", des: ").append(s1).toString());
        axl axl1 = new axl(context);
        axl1.a(axm.c);
        axl1.a(s);
        if (i > axl1.g())
        {
            axl1.a(i);
            axl1.c(false);
            axl1.a(-1L);
        }
        Exception exception;
        Object aobj[];
        String s4;
        String s5;
        NotificationManager notificationmanager;
        Intent intent1;
        PendingIntent pendingintent;
        Object aobj1[];
        String s6;
        String s7;
        String s8;
        Notification notification;
        if (j == 2)
        {
            axl1.a(true);
        } else
        if (j == 1)
        {
            axl1.b(true);
        } else
        {
            axl1.b(false);
            axl1.a(false);
        }
        ly.i;
        aobj = new Object[1];
        ly.i;
        aobj[0] = context.getString(0x7f0a004a);
        s4 = context.getString(0x7f0a0127, aobj);
        ly.i;
        s5 = context.getString(0x7f0a0129, new Object[] {
            s, s3
        });
        notificationmanager = (NotificationManager)context.getSystemService("notification");
        intent1 = new Intent(context, com/dianxinos/powermanager/update/UpdateDialogActivity);
        intent1.addFlags(0x10000000);
        ly.i;
        intent1.putExtra("title", context.getString(0x7f0a0119));
        intent1.putExtra("message", (new StringBuilder()).append(s4).append("\n").append(s5).append("\n\n").append(s1).toString());
        ly.i;
        intent1.putExtra("button1", context.getString(0x7f0a0116));
        if (j == 0)
        {
            ly.i;
            intent1.putExtra("button2", context.getString(0x7f0a0117));
        }
        intent1.putExtra("priority", j);
        pendingintent = PendingIntent.getActivity(context, 0, intent1, 0x8000000);
        ly.i;
        aobj1 = new Object[1];
        ly.i;
        aobj1[0] = context.getString(0x7f0a004a);
        s6 = context.getString(0x7f0a0127, aobj1);
        s7 = azy.a("com.dianxinos.dxbs");
        ly.i;
        s8 = context.getString(0x7f0a0128, new Object[] {
            s7, s, s3
        });
        ly.e;
        notification = new Notification(0x7f02000e, s6, 0L);
        notification.setLatestEventInfo(context, s6, s8, pendingintent);
        notification.flags = 16;
        if (bap.a(context))
        {
            notification.sound = RingtoneManager.getDefaultUri(2);
        }
        if (!axl1.e())
        {
            notificationmanager.notify(9, notification);
        }
        ka.a(context).a("nf");
_L2:
        return;
        exception;
        azt.d("UpdateReceiver", (new StringBuilder()).append("exception: ").append(exception.toString()).toString());
        s3 = "2.00M";
          goto _L3
    }
}
