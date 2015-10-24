// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.HandlerThread;
import com.dianxinos.powermanager.PowerMangerApplication;

public class agj
{

    private static agj b;
    boolean a;
    private SharedPreferences c;
    private Context d;
    private Handler e;

    private agj()
    {
        a = false;
        d = PowerMangerApplication.a();
        c = d.getSharedPreferences("batterystats", 0);
        HandlerThread handlerthread = new HandlerThread("bsr");
        handlerthread.start();
        e = new Handler(handlerthread.getLooper());
    }

    static int a(agj agj1)
    {
        return agj1.c();
    }

    public static agj a()
    {
        if (b != null) goto _L2; else goto _L1
_L1:
        agj;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new agj();
        }
        agj;
        JVM INSTR monitorexit ;
_L2:
        return b;
        Exception exception;
        exception;
        agj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean b()
    {
        long l = System.currentTimeMillis();
        if (l - c.getLong("last_battery_time", 0L) > 0x5265c00L)
        {
            c.edit().putLong("last_battery_time", l).commit();
            c.edit().putInt("today_report_count", 1).commit();
            return true;
        }
        int i = c.getInt("today_report_count", 1);
        if (i <= 10)
        {
            c.edit().putInt("today_report_count", i + 1).commit();
            return true;
        } else
        {
            return false;
        }
    }

    private int c()
    {
        int i = c.getInt("index", 0);
        android.content.SharedPreferences.Editor editor = c.edit();
        int j = i + 1;
        editor.putInt("index", j).commit();
        return j;
    }

    public void a(int i)
    {
        a(i, acz.a(d).c());
    }

    public void a(int i, add add)
    {
        if (!b())
        {
            return;
        } else
        {
            e.post(new agk(this, add, i));
            return;
        }
    }
}
