// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.dianxinos.powermanager.diagnostic.DiagnosticMainActivity;

public class aaq
    implements adc
{

    private static volatile aaq a;
    private Context b;
    private amb c;
    private arr d;
    private aap e;
    private NotificationManager f;
    private amp g;

    private aaq(Context context)
    {
        b = context;
        e = aap.a(b);
        d = arr.a(b);
        f = (NotificationManager)b.getSystemService("notification");
        c = amb.a(b);
        g = amp.a(b);
    }

    public static aaq a(Context context)
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        aaq;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new aaq(context);
        }
        aaq;
        JVM INSTR monitorexit ;
_L2:
        return a;
        Exception exception;
        exception;
        aaq;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(int i)
    {
        Context context = b;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        String s = context.getString(0x7f0a029c);
        Context context1 = b;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i);
        String s1 = context1.getString(0x7f0a029b, aobj);
        Intent intent = new Intent(b, com/dianxinos/powermanager/diagnostic/DiagnosticMainActivity);
        intent.putExtra("from_where", getClass().getName());
        PendingIntent pendingintent = PendingIntent.getActivity(b, 0, intent, 0);
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        Notification notification = new Notification(0x7f02000e, s, 0L);
        notification.setLatestEventInfo(b, s, s1, pendingintent);
        notification.flags = 16;
        if (bap.a(b))
        {
            bae.a(b);
        }
        f.cancel(10);
        try
        {
            f.notify(10, notification);
            bal.a(b, "birc", "lbnd", Integer.valueOf(1));
            return;
        }
        catch (SecurityException securityexception)
        {
            return;
        }
    }

    private static void a(String s)
    {
    }

    private int b(add add1)
    {
        if (!d.s()) goto _L2; else goto _L1
_L1:
        if (add1.j > 10 || add1.e != 0) goto _L4; else goto _L3
_L3:
        int i;
        i = d.u();
        d;
        if (i != -1000) goto _L6; else goto _L5
_L5:
        d.l(-1 + add1.j);
_L8:
        return 0;
_L6:
        if (e.a(i))
        {
            d.f(false);
        } else
        {
            i = 0;
        }
        return i;
_L4:
        d.f(false);
        return 0;
_L2:
        if (e.a(10))
        {
            return 10;
        }
        if (e.a(30))
        {
            return 30;
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void a()
    {
        f.cancel(10);
    }

    public void a(add add1)
    {
        a("onBatteryInfoUpdate");
        if (c.m())
        {
            int i = b(add1);
            if (add1.e != 0)
            {
                a();
            } else
            if (i != 0)
            {
                a(i);
                return;
            }
        }
    }
}
