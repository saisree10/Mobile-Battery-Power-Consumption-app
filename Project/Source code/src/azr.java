// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;

public class azr
{

    private static azr a;
    private Context b;
    private SharedPreferences c;
    private long d;

    private azr(Context context)
    {
        b = context;
        c = k();
        d = c.getLong("key_skin_image_pull_time", 0L);
    }

    public static azr a(Context context)
    {
        if (a == null)
        {
            a = new azr(context.getApplicationContext());
        }
        return a;
    }

    private SharedPreferences k()
    {
        if (c == null)
        {
            c = b.getSharedPreferences("global_config", 0);
        }
        return c;
    }

    public void a(int l)
    {
        gm.a(k().edit().putInt("update_stamp", l));
    }

    public void a(int l, boolean flag, long l1, long l2)
    {
        android.content.SharedPreferences.Editor editor;
        long l3;
        editor = k().edit();
        l3 = l2 / 1000L;
        if (l != 2) goto _L2; else goto _L1
_L1:
        if (flag)
        {
            editor.putLong("usb_screenon_count", l1);
            editor.putLong("usb_screenon_time", l3);
        } else
        {
            editor.putLong("usb_screenoff_count", l1);
            editor.putLong("usb_screenoff_time", l3);
        }
_L4:
        gm.a(editor);
        return;
_L2:
        if (l == 1)
        {
            if (flag)
            {
                editor.putLong("ac_screenon_count", l1);
                editor.putLong("ac_screenon_time", l3);
            } else
            {
                editor.putLong("ac_screenoff_count", l1);
                editor.putLong("ac_screenoff_time", l3);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(long l)
    {
        gm.a(k().edit().putLong("status_report_time", l));
    }

    public void a(long l, long l1)
    {
        gm.a(k().edit().putLong("pps_count", l).putLong("pps_time", l1));
    }

    public void a(boolean flag)
    {
        gm.a(k().edit().putBoolean("guide_viewed", flag));
    }

    public boolean a()
    {
        boolean flag = k().getBoolean("guide_viewed", false);
        boolean flag1 = false;
        if (!flag)
        {
            flag1 = true;
        }
        return flag1;
    }

    public long[] a(int l, boolean flag)
    {
        SharedPreferences sharedpreferences;
        long al[];
        sharedpreferences = k();
        al = (new long[] {
            0L, 0L
        });
        if (l != 2) goto _L2; else goto _L1
_L1:
        if (flag)
        {
            al[0] = sharedpreferences.getLong("usb_screenon_count", 0L);
            al[1] = sharedpreferences.getLong("usb_screenon_time", 0L);
        } else
        {
            al[0] = sharedpreferences.getLong("usb_screenoff_count", 0L);
            al[1] = sharedpreferences.getLong("usb_screenoff_time", 0L);
        }
_L4:
        al[1] = 1000L * al[1];
        return al;
_L2:
        if (l == 1)
        {
            if (flag)
            {
                al[0] = sharedpreferences.getLong("ac_screenon_count", 0L);
                al[1] = sharedpreferences.getLong("ac_screenon_time", 0L);
            } else
            {
                al[0] = sharedpreferences.getLong("ac_screenoff_count", 0L);
                al[1] = sharedpreferences.getLong("ac_screenoff_time", 0L);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void b(int l)
    {
        gm.a(k().edit().putInt("battery_scale", l));
    }

    public void b(long l)
    {
        d = l;
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putLong("key_skin_image_pull_time", d);
        gm.a(editor);
    }

    public void b(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = k().edit();
        editor.putBoolean("key_purchased_toast", flag);
        gm.a(editor);
    }

    public boolean b()
    {
        boolean flag = k().getBoolean("shortcut_onekey", false);
        boolean flag1 = false;
        if (!flag)
        {
            flag1 = true;
        }
        return flag1;
    }

    public void c()
    {
        gm.a(k().edit().putBoolean("shortcut_onekey", true));
    }

    public int d()
    {
        return k().getInt("update_stamp", -1);
    }

    public long[] e()
    {
        SharedPreferences sharedpreferences = k();
        long al[] = new long[2];
        al[0] = sharedpreferences.getLong("pps_count", 0L);
        al[1] = sharedpreferences.getLong("pps_time", 0L);
        return al;
    }

    public int f()
    {
        int l = k().getInt("battery_scale", 100);
        if (l < 200)
        {
            return 100;
        } else
        {
            return l;
        }
    }

    public long g()
    {
        return k().getLong("status_report_time", 0L);
    }

    public boolean h()
    {
        return !akx.a(b).b();
    }

    public boolean i()
    {
        return k().getBoolean("key_purchased_toast", true);
    }

    public long j()
    {
        return d;
    }
}
