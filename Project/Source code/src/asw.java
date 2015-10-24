// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.dianxinos.powermanager.menu.SmartNotificationStatusBarClearReceiver;

public class asw
{

    private Context a;

    public asw(Context context)
    {
        a = context;
    }

    private String a()
    {
        StringBuilder stringbuilder = new StringBuilder();
        arr arr1 = arr.a(a);
        int ai[] = arr1.n();
        stringbuilder.append(a(ai[0], ai[1]));
        int ai1[] = arr1.o();
        stringbuilder.append("-");
        stringbuilder.append(a(ai1[0], ai1[1]));
        return stringbuilder.toString();
    }

    private String a(int i, int j)
    {
        String s;
        if (i < 10)
        {
            s = (new StringBuilder()).append(i).append(":").toString();
        } else
        {
            s = (new StringBuilder()).append(i).append(":").toString();
        }
        if (j < 10)
        {
            return (new StringBuilder()).append(s).append("0").append(j).toString();
        } else
        {
            return (new StringBuilder()).append(s).append(j).toString();
        }
    }

    private void a(int i, String s, String s1, Uri uri)
    {
        PendingIntent pendingintent = PendingIntent.getBroadcast(a, 0, new Intent(a, com/dianxinos/powermanager/menu/SmartNotificationStatusBarClearReceiver), 0);
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        Notification notification = new Notification(0x7f02000e, s1, 0L);
        notification.setLatestEventInfo(a, s1, s, pendingintent);
        notification.sound = uri;
        NotificationManager notificationmanager = (NotificationManager)a.getSystemService("notification");
        notificationmanager.cancel(5);
        notificationmanager.notify(5, notification);
    }

    private String b()
    {
        StringBuilder stringbuilder = new StringBuilder();
        arr arr1 = arr.a(a);
        int ai[] = arr1.o();
        stringbuilder.append(a(ai[0], ai[1]));
        stringbuilder.append("-");
        int ai1[] = arr1.n();
        stringbuilder.append(a(ai1[0], ai1[1]));
        return stringbuilder.toString();
    }

    public void a(int i, String s)
    {
        if (amb.a(a).j())
        {
            if (bap.a(a))
            {
                bae.a(a);
            }
            if (i == 1)
            {
                Context context10 = a;
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                Object aobj4[] = new Object[1];
                Context context11 = a;
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                aobj4[0] = context11.getString(0x7f0a0171);
                String s4 = context10.getString(0x7f0a016f, aobj4);
                StringBuilder stringbuilder4 = new StringBuilder();
                Context context12 = a;
                com.dianxinos.dxbs.R.string _tmp2 = ly.i;
                Object aobj5[] = new Object[1];
                aobj5[0] = Integer.valueOf(arr.a(a).j());
                StringBuilder stringbuilder5 = stringbuilder4.append(context12.getString(0x7f0a0225, aobj5)).append(" ");
                Context context13 = a;
                com.dianxinos.dxbs.R.string _tmp3 = ly.i;
                a(i, stringbuilder5.append(context13.getString(0x7f0a0224, new Object[] {
                    s
                })).toString(), s4, null);
                return;
            }
            if (i == 2)
            {
                Context context6 = a;
                com.dianxinos.dxbs.R.string _tmp4 = ly.i;
                Object aobj2[] = new Object[1];
                Context context7 = a;
                com.dianxinos.dxbs.R.string _tmp5 = ly.i;
                aobj2[0] = context7.getString(0x7f0a0172);
                String s3 = context6.getString(0x7f0a016f, aobj2);
                StringBuilder stringbuilder2 = new StringBuilder();
                Context context8 = a;
                com.dianxinos.dxbs.R.string _tmp6 = ly.i;
                Object aobj3[] = new Object[1];
                aobj3[0] = Integer.valueOf(arr.a(a).j());
                StringBuilder stringbuilder3 = stringbuilder2.append(context8.getString(0x7f0a0226, aobj3)).append(" ");
                Context context9 = a;
                com.dianxinos.dxbs.R.string _tmp7 = ly.i;
                a(i, stringbuilder3.append(context9.getString(0x7f0a0224, new Object[] {
                    s
                })).toString(), s3, null);
                return;
            }
            if (i == 3)
            {
                Context context3 = a;
                com.dianxinos.dxbs.R.string _tmp8 = ly.i;
                Object aobj1[] = new Object[1];
                Context context4 = a;
                com.dianxinos.dxbs.R.string _tmp9 = ly.i;
                aobj1[0] = context4.getString(0x7f0a0170);
                String s2 = context3.getString(0x7f0a016f, aobj1);
                StringBuilder stringbuilder1 = (new StringBuilder()).append(a()).append(" ");
                Context context5 = a;
                com.dianxinos.dxbs.R.string _tmp10 = ly.i;
                a(i, stringbuilder1.append(context5.getString(0x7f0a0224, new Object[] {
                    s
                })).toString(), s2, null);
                return;
            }
            if (i == 4)
            {
                Context context = a;
                com.dianxinos.dxbs.R.string _tmp11 = ly.i;
                Object aobj[] = new Object[1];
                Context context1 = a;
                com.dianxinos.dxbs.R.string _tmp12 = ly.i;
                aobj[0] = context1.getString(0x7f0a0170);
                String s1 = context.getString(0x7f0a016f, aobj);
                StringBuilder stringbuilder = (new StringBuilder()).append(b()).append(" ");
                Context context2 = a;
                com.dianxinos.dxbs.R.string _tmp13 = ly.i;
                a(i, stringbuilder.append(context2.getString(0x7f0a0224, new Object[] {
                    s
                })).toString(), s1, null);
                return;
            }
        }
    }
}
