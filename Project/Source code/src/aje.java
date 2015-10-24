// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;

public class aje
{

    private static volatile aje a;
    private Context b;
    private SharedPreferences c;
    private boolean d;
    private boolean e;

    private aje(Context context)
    {
        d = true;
        e = false;
        b = context;
        c = b.getSharedPreferences("dig_ad_cfg", 0);
        d = c.getBoolean("diag_ad_auto_clean_server_switch", true);
        e = c.getBoolean("auto_clean_app_unlock", false);
    }

    public static aje a(Context context)
    {
        aje;
        JVM INSTR monitorenter ;
        aje aje1;
        if (a == null)
        {
            a = new aje(context);
        }
        aje1 = a;
        aje;
        JVM INSTR monitorexit ;
        return aje1;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(String s, long l)
    {
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putString("ad_pkg", s);
        editor.putLong("ad_clk_time", l);
        gm.a(editor);
    }

    public void a(boolean flag)
    {
        d = flag;
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putBoolean("diag_ad_auto_clean_server_switch", flag);
        gm.a(editor);
    }

    public boolean a()
    {
        if (!d && !e)
        {
            c();
        }
        return e;
    }

    public void b(boolean flag)
    {
        gm.a(c.edit().putBoolean("ds_rec", flag));
    }

    public boolean b()
    {
        return e;
    }

    public void c()
    {
        if (!e)
        {
            e = true;
            android.content.SharedPreferences.Editor editor = c.edit();
            editor.putBoolean("auto_clean_app_unlock", true);
            gm.a(editor);
        }
    }

    public void d()
    {
        c.edit().remove("diag_ad_auto_clean_server_switch").commit();
    }

    public boolean e()
    {
        return c.getBoolean("ds_rec", true);
    }

    public String[] f()
    {
        String as[] = new String[2];
        as[0] = c.getString("ad_pkg", "");
        as[1] = Long.toString(c.getLong("ad_clk_time", 0L));
        return as;
    }
}
