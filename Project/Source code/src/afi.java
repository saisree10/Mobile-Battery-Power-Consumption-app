// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import com.dianxinos.powermanager.AliveReceiver;
import com.dianxinos.powermanager.PowerMgrTabActivity;
import java.util.Calendar;

public class afi
    implements adc
{

    private Context a;
    private adh b;
    private amb c;
    private NotificationManager d;
    private aff e;

    public afi(Context context)
    {
        a = context;
        b = adh.a(a);
        c = amb.a(a);
        d = (NotificationManager)a.getSystemService("notification");
        e = aff.a(context);
    }

    private PendingIntent a(int i)
    {
        PendingIntent pendingintent;
        if (i == 6)
        {
            Intent intent = new Intent(a, com/dianxinos/powermanager/AliveReceiver);
            pendingintent = PendingIntent.getBroadcast(a, 0, intent, 0x10000000);
        } else
        {
            pendingintent = null;
            if (i == 8)
            {
                Intent intent1 = new Intent(a, com/dianxinos/powermanager/PowerMgrTabActivity);
                intent1.putExtra("From", 5);
                return PendingIntent.getActivity(a, 1, intent1, 0x10000000);
            }
        }
        return pendingintent;
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

    private void a(int i, String s, String s1)
    {
        if ((i != 6 || c.l()) && (i != 8 || c.k()))
        {
            if (bap.a(a))
            {
                bae.b(a);
            }
            PowerManager powermanager = (PowerManager)a.getSystemService("power");
            if (i == 8)
            {
                if (powermanager.isScreenOn() && c.q() && zu.b(a) && azy.b(a))
                {
                    Intent intent = new Intent("android.intent.action.MAIN");
                    intent.setComponent(new ComponentName(a, com/dianxinos/powermanager/PowerMgrTabActivity));
                    intent.addFlags(0x10200000);
                    intent.putExtra("From", 10);
                    a.startActivity(intent);
                    return;
                }
                if (azy.b(a))
                {
                    new auq(a, s1);
                    return;
                }
            } else
            {
                PendingIntent pendingintent = a(i);
                com.dianxinos.dxbs.R.drawable _tmp = ly.e;
                Context context = a;
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                Notification notification = new Notification(0x7f02000e, context.getString(0x7f0a018a), 0L);
                notification.setLatestEventInfo(a, s, s1, pendingintent);
                notification.flags = 16;
                notification.sound = null;
                d.cancel(i);
                try
                {
                    d.notify(i, notification);
                    return;
                }
                catch (SecurityException securityexception)
                {
                    return;
                }
            }
        }
    }

    public void a(add add1)
    {
        int i;
        int j;
        i = e.e();
        j = b.a();
        if (i != 103 || j == 103) goto _L2; else goto _L1
_L1:
        if (!(e.f() instanceof afk)) goto _L4; else goto _L3
_L3:
        Context context2 = a;
        ly.i;
        String s1 = context2.getString(0x7f0a0187);
        Context context3 = a;
        ly.i;
        a(6, s1, context3.getString(0x7f0a0188));
_L10:
        b.a(System.currentTimeMillis());
        b.a(i);
_L6:
        return;
_L4:
        if (e.f() instanceof afp)
        {
            Context context = a;
            ly.i;
            String s = context.getString(0x7f0a0187);
            Context context1 = a;
            ly.i;
            a(6, s, context1.getString(0x7f0a0189));
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (i == 102 && j != 102)
        {
            agj.a().a(2, add1);
            b.a(i);
            return;
        }
        b.a(i);
        if (e.b())
        {
            d.cancel(8);
            d.cancel(6);
            return;
        }
        if (!e.a()) goto _L6; else goto _L5
_L5:
        aaq.a(a).a();
        if (add1.j > 98) goto _L6; else goto _L7
_L7:
        int k = e.f().c();
        if (k == 0 || k == -1) goto _L6; else goto _L8
_L8:
        int l = k / 60;
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        calendar.add(12, l);
        a(8, null, a(calendar.get(11), calendar.get(12)));
        return;
        if (true) goto _L10; else goto _L9
_L9:
    }
}
