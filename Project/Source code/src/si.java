// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class si
{

    private static final Long a = Long.valueOf(0x1b7740L);
    private static si g;
    private Context b;
    private AlarmManager c;
    private PendingIntent d;
    private boolean e;
    private long f;

    private si(Context context)
    {
        b = context;
        c = (AlarmManager)b.getSystemService("alarm");
        Intent intent = new Intent("DXCoreAlarmReceiver");
        d = PendingIntent.getBroadcast(b, 0, intent, 0x10000000);
        f = -1L;
        e = false;
    }

    public static si a(Context context)
    {
        si;
        JVM INSTR monitorenter ;
        if (g == null)
        {
            g = new si(context);
        }
        si;
        JVM INSTR monitorexit ;
        return g;
        Exception exception;
        exception;
        si;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean c()
    {
        return System.currentTimeMillis() - f > 60000L;
    }

    public void a()
    {
        if (!e)
        {
            if (ud.b)
            {
                Log.d("stat.Alarm", "Start to regist alarm!");
            }
            c.setRepeating(1, System.currentTimeMillis(), a.longValue(), d);
            e = true;
            f = System.currentTimeMillis();
        }
    }

    public void b()
    {
        if (e && c())
        {
            if (ud.b)
            {
                Log.d("stat.Alarm", (new StringBuilder()).append("Start to unRegist alarm, The last register time is ").append(f).toString());
            }
            c.cancel(d);
            e = false;
        }
    }

}
