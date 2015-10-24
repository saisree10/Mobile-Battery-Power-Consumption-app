// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;

final class ts
{

    private final Context a;
    private final Runnable b = new tt(this);
    private IntentFilter c;
    private BroadcastReceiver d;
    private int e;
    private PhoneStateListener f;

    public ts(Context context)
    {
        c = null;
        d = null;
        e = 0;
        f = null;
        a = context;
    }

    static Context a(ts ts1)
    {
        return ts1.a;
    }

    private boolean a(String s, String s1)
    {
        if (s == null)
        {
            return s1 == null;
        } else
        {
            return s.equals(s1);
        }
    }

    static int b(ts ts1)
    {
        return ts1.e;
    }

    private String b(String s, String s1)
    {
        if (!TextUtils.isEmpty(s1))
        {
            s = ud.a(s1);
        }
        return s;
    }

    static int c(ts ts1)
    {
        int j = ts1.e;
        ts1.e = j + 1;
        return j;
    }

    private void c()
    {
        TelephonyManager telephonymanager = (TelephonyManager)a.getSystemService("phone");
        f = new tu(this);
        telephonymanager.listen(f, 1);
    }

    private void d()
    {
        String s = a.getSharedPreferences("h", 1).getString("d", "");
        if (c == null)
        {
            c = new IntentFilter();
            if (TextUtils.isEmpty(s))
            {
                c.addAction("android.net.wifi.WIFI_STATE_CHANGED");
            }
        }
        if (d == null)
        {
            d = new tv(this);
        }
        a.registerReceiver(d, c);
    }

    static void d(ts ts1)
    {
        ts1.i();
    }

    private void e()
    {
        if (d != null)
        {
            a.unregisterReceiver(d);
        }
    }

    static void e(ts ts1)
    {
        ts1.g();
    }

    private void f()
    {
        if (f != null)
        {
            ((TelephonyManager)a.getSystemService("phone")).listen(f, 0);
        }
    }

    static void f(ts ts1)
    {
        ts1.h();
    }

    private void g()
    {
        if (ud.b)
        {
            Log.d("stat.HwInfoService", "Update CarrierInfo!");
        }
        SharedPreferences sharedpreferences = a.getSharedPreferences("h", 1);
        String s = sharedpreferences.getString("m", "");
        String s1 = b(s, gy.o(a));
        if (!a(s, s1))
        {
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putString("m", s1);
            ud.a(editor);
            if (ud.c)
            {
                Log.i("stat.HwInfoService", (new StringBuilder()).append("Retrieved carrier info for Phone: carrier[").append(s1).append("]").toString());
            }
            ui.a(a).c();
        }
    }

    private void h()
    {
        if (ud.b)
        {
            Log.d("stat.HwInfoService", "updateWifiInfo()");
        }
        SharedPreferences sharedpreferences = a.getSharedPreferences("h", 1);
        String s = sharedpreferences.getString("d", "");
        String s1 = b(s, gy.b(a));
        if (!a(s, s1))
        {
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putString("d", s1);
            ud.a(editor);
            if (ud.c)
            {
                Log.i("stat.HwInfoService", (new StringBuilder()).append("Retrieved hw info for Phone: WifiMac[").append(s1).append("]").toString());
            }
            ui.a(a).c();
        }
    }

    private void i()
    {
        if (ud.b)
        {
            Log.d("stat.HwInfoService", "Update Preferences!");
        }
        SharedPreferences sharedpreferences = a.getSharedPreferences("h", 1);
        String s = sharedpreferences.getString("b", "");
        String s1 = sharedpreferences.getString("c", "");
        String s2 = sharedpreferences.getString("m", "");
        String s3 = sharedpreferences.getString("a", "");
        String s4 = sharedpreferences.getString("d", "");
        String s5 = sharedpreferences.getString("f", "");
        String s6 = sharedpreferences.getString("k", "");
        String s7 = sharedpreferences.getString("g", "");
        String s8 = sharedpreferences.getString("h", "");
        String s9 = sharedpreferences.getString("i", "");
        String s10 = sharedpreferences.getString("j", "");
        String s11 = b(s, gy.c(a));
        String s12 = b(s1, gy.m(a));
        String s13 = b(s2, gy.o(a));
        String s14 = b(s3, gy.d(a));
        String s15 = b(s4, gy.b(a));
        String s16 = b(s5, gy.n(a));
        String s17 = b(s6, gy.q(a));
        String s18 = b(s7, gy.e(a));
        String s19 = b(s8, gy.r(a));
        String s20 = b(s9, gy.f(a));
        String s21 = b(s10, gy.k(a));
        if (ud.c)
        {
            Log.i("stat.HwInfoService", (new StringBuilder()).append("Retrieved hw info for Phone: [").append(s14).append("]").append(", SN[").append(s11).append("], IMEI[").append(s12).append("]").append(", WifiMac[").append(s15).append("], IMSI[").append(s16).append("], AndroidVersion[").append(s17).append("], carrier[").append(s13).append("], ram[").append(s18).append("], DPI[").append(s19).append("], resolution[").append(s20).append("], manufacturer[").append(s21).append("]").toString());
        }
        if (!a(s, s11) || !a(s1, s12) || !a(s2, s13) || !a(s3, s14) || !a(s4, s15) || !a(s5, s16) || !a(s6, s17) || !a(s7, s18) || !a(s8, s19) || !a(s9, s20) || !a(s10, s21))
        {
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putString("a", s14);
            editor.putString("b", s11);
            editor.putString("c", s12);
            editor.putString("d", s15);
            editor.putString("f", s16);
            editor.putString("k", s17);
            editor.putString("m", s13);
            editor.putString("g", s18);
            editor.putString("h", s19);
            editor.putString("i", s20);
            editor.putString("j", s21);
            ud.a(editor);
            if (!a(s2, s13) || !a(s3, s14) || !a(s4, s15) || !a(s5, s16) || !a(s6, s17) || !a(s7, s18) || !a(s8, s19) || !a(s9, s20) || !a(s10, s21))
            {
                ui.a(a).c();
            }
        }
    }

    public void a()
    {
        if (ud.b)
        {
            Log.d("stat.HwInfoService", "Start!");
        }
        uf.a(b);
        c();
        d();
    }

    public void b()
    {
        if (ud.b)
        {
            Log.d("stat.HwInfoService", "Shutdown!");
        }
        e();
        f();
    }
}
