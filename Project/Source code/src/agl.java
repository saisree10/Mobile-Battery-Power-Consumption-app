// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;

public class agl
{

    public static agl a;
    private Context b;
    private SharedPreferences c;
    private String d;
    private long e;
    private long f;
    private boolean g;

    private agl(Context context)
    {
        b = context;
        c = b.getSharedPreferences("CloudConfig", 0);
        c();
    }

    public static agl a(Context context)
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        agl;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new agl(context.getApplicationContext());
        }
        agl;
        JVM INSTR monitorexit ;
_L2:
        return a;
        Exception exception;
        exception;
        agl;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void c()
    {
        d = c.getString("last_info", "false:-100:-1");
        f = c.getLong("report_time", -11111L);
        e = c.getLong("create_time", -11111L);
        g = c.getBoolean("forbidden", false);
    }

    public String a()
    {
        return c.getString("app_info", "");
    }

    public void a(String s)
    {
        d = s;
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putString("last_info", d);
        gm.a(editor);
    }

    public void a(boolean flag)
    {
        g = flag;
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putBoolean("forbidden", flag);
        gm.a(editor);
    }

    public void b(String s)
    {
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putString("app_info", s);
        gm.a(editor);
    }

    public boolean b()
    {
        return g;
    }
}
