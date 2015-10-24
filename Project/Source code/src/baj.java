// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;

public class baj
{

    private static baj b;
    private SharedPreferences a;
    private Context c;
    private Boolean d;
    private int e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;

    private baj(Context context)
    {
        c = context;
        e();
    }

    public static baj a(Context context)
    {
        if (b != null) goto _L2; else goto _L1
_L1:
        baj;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new baj(context.getApplicationContext());
        }
        baj;
        JVM INSTR monitorexit ;
_L2:
        return b;
        Exception exception;
        exception;
        baj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void e()
    {
        a = c.getSharedPreferences("ShowConfig", 0);
        d = Boolean.valueOf(a.getBoolean("float_tips", true));
        e = a.getInt("dxhome_widget", 0);
        f = a.getBoolean("cpu", true);
        g = a.getBoolean("setting", true);
        h = a.getBoolean("battery_log", true);
        i = a.getBoolean("lowbattery", true);
        j = a.getBoolean("lowbattery_reminder", true);
        k = a.getBoolean("smart_switch", true);
    }

    public int a()
    {
        return 1;
    }

    public void a(int l)
    {
        e = l;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt("dxhome_widget", l);
        gm.a(editor);
    }

    public void a(boolean flag)
    {
        boolean flag1;
        android.content.SharedPreferences.Editor editor;
        if (!flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        f = flag1;
        editor = a.edit();
        editor.putBoolean("cpu", f);
        gm.a(editor);
    }

    public void b(int l)
    {
        android.content.SharedPreferences.Editor editor = c.getSharedPreferences("ShowConfig", 0).edit();
        editor.putInt("needMark", l);
        gm.a(editor);
    }

    public void b(boolean flag)
    {
        boolean flag1;
        android.content.SharedPreferences.Editor editor;
        if (!flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        i = flag1;
        editor = a.edit();
        editor.putBoolean("lowbattery", i);
        gm.a(editor);
    }

    public boolean b()
    {
        return e == 1;
    }

    public boolean c()
    {
        return h;
    }

    public int d()
    {
        return c.getSharedPreferences("ShowConfig", 0).getInt("needMark", 0);
    }
}
