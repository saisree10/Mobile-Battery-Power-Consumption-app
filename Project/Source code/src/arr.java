// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;

public class arr
{

    private static arr B;
    private boolean A;
    private Context C;
    private int D;
    private final String E = "action_user_present_enable";
    private final String F = "net_switch_enable";
    private final String G = "clean_process_enable";
    private final String H = "lock_apn_switch";
    private final String I = "lock_wifi_switch";
    private boolean J;
    private boolean K;
    private boolean L;
    private boolean M;
    private boolean N;
    private SharedPreferences a;
    private boolean b;
    private int c;
    private int d;
    private String e;
    private boolean f;
    private boolean g;
    private int h;
    private String i;
    private int j;
    private int k;
    private int l;
    private int m;
    private art n;
    private aru o;
    private ars p;
    private boolean q;
    private boolean r;
    private int s;
    private boolean t;
    private int u;
    private long v;
    private boolean w;
    private boolean x;
    private int y;
    private int z;

    private arr(Context context)
    {
        J = false;
        K = false;
        L = false;
        M = false;
        N = true;
        C = context;
        v();
    }

    public static arr a(Context context)
    {
        if (B != null) goto _L2; else goto _L1
_L1:
        arr;
        JVM INSTR monitorenter ;
        if (B == null)
        {
            B = new arr(context);
        }
        arr;
        JVM INSTR monitorexit ;
_L2:
        return B;
        Exception exception;
        exception;
        arr;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void v()
    {
        a = C.getSharedPreferences("smart_settings", 0);
        b = a.getBoolean("SmartSwitchStatus", false);
        f = a.getBoolean("LowPowerSwitchMode", false);
        c = a.getInt("LowBatteryThreshold", 20);
        d = a.getInt("LowPowerModeId", 0);
        SharedPreferences sharedpreferences = a;
        Context context = C;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        e = sharedpreferences.getString("LowPowerModeName", context.getString(0x7f0a0056));
        g = a.getBoolean("ModeTimeStatus", false);
        h = a.getInt("ModeTimeId", 0);
        SharedPreferences sharedpreferences1 = a;
        Context context1 = C;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        i = sharedpreferences1.getString("ModeTimeModeName", context1.getString(0x7f0a00b6));
        j = a.getInt("ModeTimeStartHour", 23);
        k = a.getInt("ModeTimeStartMin", 0);
        l = a.getInt("ModeTimeEndHour", 7);
        m = a.getInt("ModeTimeEndMin", 0);
        q = a.getBoolean("Used", false);
        r = a.getBoolean("ModeTimeStarted", false);
        t = a.getBoolean("LowPowerStarted", false);
        u = a.getInt("LastSwitchWay", 0);
        v = a.getLong("ManualSwitchTime", 0L);
        w = a.getBoolean("batteryused", false);
        x = a.getBoolean("lowbatteryshowed", false);
        y = a.getInt("cpu_settings_status", -1);
        A = a.getBoolean("init_percent_boolean", true);
        z = a.getInt("last_battery_percent", -1);
        D = a.getInt("first_trigger_level", -1000);
        J = a.getBoolean("action_user_present_enable", false);
        K = a.getBoolean("net_switch_enable", false);
        L = a.getBoolean("clean_process_enable", false);
        M = a.getBoolean("lock_apn_switch", false);
        N = a.getBoolean("lock_wifi_switch", true);
    }

    public int a(int i1)
    {
        if (z == -1)
        {
            z = i1;
        }
        return z;
    }

    public void a(int i1, int j1)
    {
        q = true;
        j = i1;
        k = j1;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt("ModeTimeStartHour", i1);
        editor.putInt("ModeTimeStartMin", j1);
        gm.a(editor);
        if (n != null)
        {
            n.a();
        }
    }

    public void a(long l1)
    {
        v = l1;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putLong("ManualSwitchTime", l1);
        gm.a(editor);
    }

    public void a(art art1)
    {
        n = art1;
    }

    public void a(aru aru)
    {
        o = aru;
    }

    public void a(String s1)
    {
        i = s1;
        q = true;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putString("ModeTimeModeName", s1);
        gm.a(editor);
    }

    public void a(boolean flag)
    {
        if (J)
        {
            return;
        } else
        {
            J = flag;
            android.content.SharedPreferences.Editor editor = a.edit();
            editor.putBoolean("action_user_present_enable", flag);
            gm.a(editor);
            return;
        }
    }

    public void a(boolean flag, boolean flag1)
    {
        M = flag;
        N = flag1;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("lock_apn_switch", flag);
        editor.putBoolean("lock_wifi_switch", flag1);
        gm.a(editor);
    }

    public boolean a()
    {
        return J;
    }

    public void b(int i1)
    {
        z = i1;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt("last_battery_percent", z);
        gm.a(editor);
    }

    public void b(int i1, int j1)
    {
        q = true;
        l = i1;
        m = j1;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt("ModeTimeEndHour", i1);
        editor.putInt("ModeTimeEndMin", j1);
        gm.a(editor);
        if (n != null)
        {
            n.a();
        }
    }

    public void b(boolean flag)
    {
        K = flag;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("net_switch_enable", flag);
        gm.a(editor);
    }

    public boolean b()
    {
        return K;
    }

    public void c(int i1)
    {
        c = i1;
        q = true;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt("LowBatteryThreshold", i1);
        gm.a(editor);
    }

    public void c(boolean flag)
    {
        L = flag;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("clean_process_enable", flag);
        gm.a(editor);
    }

    public boolean c()
    {
        return L;
    }

    public void d(int i1)
    {
        d = i1;
        q = true;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt("LowPowerModeId", i1);
        gm.a(editor);
    }

    public void d(boolean flag)
    {
        f = flag;
        q = true;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("LowPowerSwitchMode", flag);
        gm.a(editor);
    }

    public boolean[] d()
    {
        boolean aflag[] = new boolean[2];
        aflag[0] = M;
        aflag[1] = N;
        return aflag;
    }

    public void e()
    {
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("Used", q);
        gm.a(editor);
    }

    public void e(int i1)
    {
        h = i1;
        q = true;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt("ModeTimeId", i1);
        gm.a(editor);
        if (n != null)
        {
            n.a();
        }
    }

    public void e(boolean flag)
    {
        g = flag;
        q = true;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("ModeTimeStatus", flag);
        gm.a(editor);
        if (n != null)
        {
            n.a();
        }
    }

    public int f(int i1)
    {
        return a.getInt("ModeTimeLastModeId", i1);
    }

    public void f()
    {
        w = true;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("batteryused", true);
        gm.a(editor);
    }

    public void f(boolean flag)
    {
        A = flag;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("init_percent_boolean", flag);
        gm.a(editor);
    }

    public void g()
    {
        r = true;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("ModeTimeStarted", r);
        gm.a(editor);
    }

    public void g(int i1)
    {
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt("ModeTimeLastModeId", i1);
        gm.a(editor);
    }

    public int h(int i1)
    {
        s = a.getInt("LowPowerLastModeId", i1);
        return s;
    }

    public void h()
    {
        r = false;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean("ModeTimeStarted", r);
        gm.a(editor);
    }

    public void i(int i1)
    {
        s = i1;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt("LowPowerLastModeId", i1);
        gm.a(editor);
    }

    public boolean i()
    {
        return f;
    }

    public int j()
    {
        return c;
    }

    public void j(int i1)
    {
        u = i1;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt("LastSwitchWay", i1);
        gm.a(editor);
    }

    public int k()
    {
        return d;
    }

    public void k(int i1)
    {
        boolean flag = true;
        y = i1;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt("cpu_settings_status", i1);
        gm.a(editor);
        if (p != null)
        {
            ars ars1 = p;
            if (i1 != flag)
            {
                flag = false;
            }
            ars1.a(flag);
        }
    }

    public void l(int i1)
    {
        D = i1;
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt("first_trigger_level", i1);
        gm.a(editor);
    }

    public boolean l()
    {
        return g;
    }

    public int m()
    {
        return h;
    }

    public int[] n()
    {
        int ai[] = new int[2];
        ai[0] = j;
        ai[1] = k;
        return ai;
    }

    public int[] o()
    {
        int ai[] = new int[2];
        ai[0] = l;
        ai[1] = m;
        return ai;
    }

    public int p()
    {
        return u;
    }

    public long q()
    {
        return v;
    }

    public int r()
    {
        return y;
    }

    public boolean s()
    {
        return A;
    }

    public void t()
    {
    }

    public int u()
    {
        return D;
    }
}
