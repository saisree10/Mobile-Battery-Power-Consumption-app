// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;

public class amb
{

    private static amb b;
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
    private boolean l;
    private boolean m;
    private boolean n;
    private int o;
    private int p;
    private amc q;
    private amd r;
    private ame s;
    private boolean t;
    private boolean u;
    private int v;

    private amb(Context context)
    {
        e = 10;
        c = context;
        s();
    }

    public static amb a(Context context)
    {
        if (b != null) goto _L2; else goto _L1
_L1:
        amb;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new amb(context.getApplicationContext());
        }
        amb;
        JVM INSTR monitorexit ;
_L2:
        return b;
        Exception exception;
        exception;
        amb;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void s()
    {
        a = c.getSharedPreferences("SettingsConfig", 0);
        v = a.getInt("statusbar_style", 3);
        g = a.getBoolean("battery_notification", azn.a);
        d = Boolean.valueOf(a.getBoolean("auto_cleanup_status", false));
        e = a.getInt("auto_cleanup_period", 10);
        f = a.getBoolean("smart_notification_status", true);
        h = a.getBoolean("celsius_fahrenheit", true);
        i = a.getBoolean("sleep_floating", true);
        j = a.getBoolean("sleep_floating_guide", true);
        k = a.getBoolean("sleep_floating_showed", false);
        l = a.getBoolean("sleep_floating_need_showed", false);
        t = a.getBoolean("charging_done_notification", true);
        u = a.getBoolean("charging_nf", true);
        m = a.getBoolean("lowbatter_reminder", true);
        n = a.getBoolean("no_disturb_switch", true);
        o = a.getInt("no_disturb_start", 2200);
        p = a.getInt("no_disturb_end", 800);
    }

    public void a(int i1)
    {
        v = i1;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt("statusbar_style", i1);
        gm.a(editor);
        if (r != null)
        {
            r.b(g, v);
        }
    }

    public void a(int i1, int j1)
    {
        o = i1;
        p = j1;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt("no_disturb_start", i1);
        editor.putInt("no_disturb_end", j1);
        gm.a(editor);
    }

    public void a(amc amc1)
    {
        q = amc1;
    }

    public void a(amd amd1)
    {
        r = amd1;
    }

    public void a(ame ame1)
    {
        s = ame1;
    }

    public void a(boolean flag)
    {
        g = flag;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("battery_notification", flag);
        gm.a(editor);
        if (r != null)
        {
            r.b(flag, v);
        }
    }

    public boolean a()
    {
        return g;
    }

    public int b()
    {
        return v;
    }

    public void b(int i1)
    {
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt("auto_cleanup_period", i1);
        gm.a(editor);
        if (e != i1 && q != null)
        {
            q.a(d.booleanValue(), i1);
        }
        e = i1;
    }

    public void b(boolean flag)
    {
        h = flag;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("celsius_fahrenheit", flag);
        gm.a(editor);
        if (r != null)
        {
            r.b(g, v);
        }
    }

    public void c(int i1)
    {
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt("optimize_time", i1);
        gm.a(editor);
    }

    public void c(boolean flag)
    {
        i = flag;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("sleep_floating", flag);
        gm.a(editor);
        if (s != null)
        {
            s.a(flag);
        }
    }

    public boolean c()
    {
        return a.contains("celsius_fahrenheit");
    }

    public void d(boolean flag)
    {
        k = flag;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("sleep_floating_showed", flag);
        gm.a(editor);
    }

    public boolean d()
    {
        return h;
    }

    public void e(boolean flag)
    {
        l = flag;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("sleep_floating_need_showed", flag);
        gm.a(editor);
    }

    public boolean e()
    {
        return i;
    }

    public void f(boolean flag)
    {
        j = flag;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("sleep_floating_guide", flag);
        gm.a(editor);
    }

    public boolean f()
    {
        return l;
    }

    public void g(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("auto_cleanup_status", flag);
        gm.a(editor);
        if (d.booleanValue() != flag && q != null)
        {
            q.a(flag, e);
        }
        d = Boolean.valueOf(flag);
    }

    public boolean g()
    {
        return j;
    }

    public void h(boolean flag)
    {
        f = flag;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("smart_notification_status", flag);
        gm.a(editor);
    }

    public boolean h()
    {
        return d.booleanValue();
    }

    public int i()
    {
        return e;
    }

    public void i(boolean flag)
    {
        u = flag;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("charging_nf", flag);
        gm.a(editor);
    }

    public void j(boolean flag)
    {
        t = flag;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("charging_done_notification", flag);
        gm.a(editor);
    }

    public boolean j()
    {
        return f;
    }

    public void k(boolean flag)
    {
        m = flag;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("lowbatter_reminder", flag);
        gm.a(editor);
    }

    public boolean k()
    {
        return u;
    }

    public void l(boolean flag)
    {
        n = flag;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("no_disturb_switch", flag);
        gm.a(editor);
    }

    public boolean l()
    {
        return t;
    }

    public void m(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("launch_battery_saver", flag);
        gm.a(editor);
    }

    public boolean m()
    {
        return m;
    }

    public boolean n()
    {
        return n;
    }

    public int[] o()
    {
        int ai[] = new int[2];
        ai[0] = o;
        ai[1] = p;
        return ai;
    }

    public void p()
    {
        if (!a.contains("statusbar_style"))
        {
            a(0);
        }
    }

    public boolean q()
    {
        return a.getBoolean("launch_battery_saver", false);
    }

    public int r()
    {
        return a.getInt("optimize_time", 0);
    }
}
