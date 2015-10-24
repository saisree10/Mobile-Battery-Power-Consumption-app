// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;

public class adh
{

    public static adh a;
    private Context b;
    private SharedPreferences c;
    private int d;
    private int e;
    private int f;
    private long g;
    private long h;
    private int i;

    private adh(Context context)
    {
        b = context;
        c = b.getSharedPreferences("ChargingConfig", 0);
        g();
    }

    public static adh a(Context context)
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        adh;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new adh(context.getApplicationContext());
        }
        adh;
        JVM INSTR monitorexit ;
_L2:
        return a;
        Exception exception;
        exception;
        adh;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void g()
    {
        d = c.getInt("passed_time", 0);
        g = c.getLong("LastestHealthChargingTime", -1L);
        e = c.getInt("last_charging_stat_v2", 107);
        f = c.getInt("plugtype", 0);
        h = c.getLong("last_healthy_charger_time", -1L);
        i = c.getInt("healthy_charging_state", 107);
    }

    public int a()
    {
        return e;
    }

    public void a(int j)
    {
        e = j;
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putInt("last_charging_stat_v2", e);
        gm.a(editor);
    }

    public void a(long l)
    {
        g = l;
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putLong("LastestHealthChargingTime", l);
        gm.a(editor);
    }

    public int b()
    {
        return d;
    }

    public void b(int j)
    {
        d = j;
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putInt("passed_time", j);
        gm.a(editor);
    }

    public void b(long l)
    {
        h = l;
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putLong("last_healthy_charger_time", l);
        gm.a(editor);
    }

    public long c()
    {
        return g;
    }

    public void c(int j)
    {
        f = j;
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putInt("plugtype", j);
        gm.a(editor);
    }

    public int d()
    {
        return f;
    }

    public void d(int j)
    {
        i = j;
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putInt("healthy_charging_state", i);
        gm.a(editor);
    }

    public long e()
    {
        return h;
    }

    public int f()
    {
        return i;
    }
}
