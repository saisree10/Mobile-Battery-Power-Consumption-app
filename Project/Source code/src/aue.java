// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.ActivityManager;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class aue
{

    private double A;
    private double B;
    private double C;
    private double D;
    private double E;
    private boolean F;
    private boolean G;
    private double H;
    private double I;
    private double J;
    private double K;
    private double L;
    private double M;
    private double N;
    private SparseArray O;
    private asy P;
    private Context a;
    private auc b;
    private ConnectivityManager c;
    private ActivityManager d;
    private String e;
    private ArrayList f;
    private boolean g;
    private boolean h;
    private double i;
    private double j;
    private double k;
    private double l;
    private double m;
    private double n;
    private double o;
    private double p;
    private double q;
    private double r;
    private double s;
    private double t;
    private double u;
    private double v;
    private double w;
    private double x;
    private double y;
    private double z;

    public aue(Context context)
    {
        f = new ArrayList();
        g = false;
        h = false;
        F = true;
        G = true;
        H = 0.10000000000000001D;
        I = 0.10000000000000001D;
        J = 0.10000000000000001D;
        K = 0.10000000000000001D;
        L = 0.01D;
        M = 0.01D;
        O = new SparseArray();
        a = context;
        b = auc.a(context);
        P = asy.a(a);
        atj atj1 = new atj(context);
        c = (ConnectivityManager)context.getSystemService("connectivity");
        d = (ActivityManager)a.getSystemService("activity");
        N = atj1.getAveragePower("battery.capacity");
        double d1 = (3600D * N) / 100D;
        double d2 = atj1.getAveragePower("screen.on");
        t = (1000D * (d2 / 1000D)) / d1;
        n = d2;
        double d3 = atj1.getAveragePower("screen.full");
        u = d3 / d1;
        o = d3;
        double d4 = atj1.getAveragePower("wifi.on");
        v = d4 / d1;
        p = d4;
        w = atj1.getAveragePower("wifi.active") / d1;
        double d5 = atj1.getAveragePower("bluetooth.on");
        x = d5 / d1;
        q = d5;
        y = atj1.getAveragePower("radio.on", 0) / d1;
        double d6 = atj1.getAveragePower("radio.active");
        z = d6 / d1;
        r = d6;
        double d7 = atj1.getAveragePower("dsp.audio");
        A = d7 / d1;
        double d8 = atj1.getAveragePower("dsp.video");
        B = d8 / d1;
        C = atj1.getAveragePower("cpu.idle") / d1;
        double d9 = atj1.getAveragePower("cpu.active", -1 + atj1.getNumSpeedSteps());
        D = d9 / d1;
        double d10 = atj1.getAveragePower("gps.on");
        E = d10 / d1;
        O.put(5, Double.valueOf(d7));
        O.put(6, Double.valueOf(d8));
        O.put(8, Double.valueOf(d10));
        O.put(9, Double.valueOf(d9));
    }

    private double a(double d1)
    {
        List list = d.getRunningAppProcesses();
        if (list == null)
        {
            return 0.0D;
        }
        int i1 = 0;
        double d2 = 0.0D;
        while (i1 < list.size()) 
        {
            android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)list.get(i1);
            if (runningappprocessinfo.uid >= 10000 && runningappprocessinfo.uid <= 0x1869f)
            {
                double d4 = P.a(O, runningappprocessinfo.uid, runningappprocessinfo.processName);
                if (d4 < 0.0D)
                {
                    d4 = 1.0D;
                }
                d2 += d4;
            }
            i1++;
        }
        double d3 = P.a(O, 0, "system");
        if (d3 < 0.0D)
        {
            d3 = 30D;
        }
        return d3 + d2 + P.a(O, 1);
    }

    private boolean a(int i1)
    {
        return i1 == 1;
    }

    public int a(double d1, int i1)
    {
        double d2;
        int j1;
        if (!h)
        {
            azt.d("RemainingTimeImpl", "not in a mode");
            return -1;
        }
        d2 = i;
        j1 = 0;
        i1;
        JVM INSTR tableswitch 1 5: default 64
    //                   1 125
    //                   2 147
    //                   3 169
    //                   4 181
    //                   5 193;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        int i2;
        double d8;
        double d10 = d2;
        i2 = j1;
        d8 = d10;
_L7:
        double d3;
        int k1;
        if (i2 == 0)
        {
            double d4;
            double d5;
            double d6;
            arr arr1;
            int l1;
            double d7;
            double d9;
            int j2;
            double d11;
            double d12;
            double d13;
            double d14;
            boolean flag;
            boolean flag1;
            if (d8 > 0.0D)
            {
                d9 = d1 / d8;
            } else
            {
                d9 = -1D;
            }
            i2 = (int)d9;
        }
        if (i2 != -1 && i2 < 60)
        {
            i2 = 60;
        }
        return 60 * (i2 / 60);
_L2:
        d2 = j;
        flag1 = F;
        j1 = 0;
        if (!flag1)
        {
            return -1;
        }
          goto _L1
_L3:
        d2 = k;
        flag = G;
        j1 = 0;
        if (!flag)
        {
            return -1;
        }
          goto _L1
_L4:
        d8 = l;
        i2 = 0;
          goto _L7
_L5:
        d8 = m;
        i2 = 0;
          goto _L7
_L6:
        d3 = i + 0.01D * m + 0.10000000000000001D * k + 0.02D * l + 0.050000000000000003D * j;
        d4 = d1 / d3;
        d5 = a(d1);
        d6 = 3600D * ((d1 * N) / d5 / 100D);
        k1 = (int)(0.5D * d4 + d6 * 0.5D);
        arr1 = arr.a(a);
        if (arr1.r() != 1)
        {
            k1 = (int)(0.92000000000000004D * (double)k1);
        }
        if (!arr1.l())
        {
            k1 = (int)(0.93000000000000005D * (double)k1);
        }
        if (!arr1.i())
        {
            k1 = (int)(0.93000000000000005D * (double)k1);
        }
        if (!b.a())
        {
            break MISSING_BLOCK_LABEL_497;
        }
        d12 = b.b();
        if (d12 <= 0.0D)
        {
            break MISSING_BLOCK_LABEL_497;
        }
        d13 = 0.59999999999999998D * d12 + d3 * 0.40000000000000002D;
        d14 = d1 / d12;
        j1 = (int)(0.59999999999999998D * (double)k1 + d14 * 0.40000000000000002D);
        d2 = d13;
_L9:
        if ((double)j1 <= 2D * d4)
        {
            continue; /* Loop/switch isn't completed */
        }
        j2 = (int)(d4 * 2D);
        d11 = d2;
        i2 = j2;
        d8 = d11;
          goto _L7
        if ((double)j1 >= d4 / 4D) goto _L1; else goto _L8
_L8:
        l1 = (int)(d4 / 4D);
        d7 = d2;
        i2 = l1;
        d8 = d7;
          goto _L7
        j1 = k1;
        d2 = d3;
          goto _L9
    }

    public void a()
    {
        amp amp1 = amp.a(a);
        anb anb1 = amp1.f();
        a(amp1.e());
        a(0, anb1.b(0));
        a(1, anb1.b(1));
        a(5, anb1.b(2));
        a(6, anb1.b(3));
        a(4, anb1.b(4));
        a(2, anb1.b(10));
        a(3, anb1.b(5));
        a(7, anb1.b(9));
        a(8, anb1.b(6));
        a(9, anb1.b(7));
        a(10, anb1.b(13));
        b();
    }

    public void a(int i1, int j1)
    {
        if (g)
        {
            f.add(new auf(i1, j1));
            return;
        } else
        {
            azt.d("RemainingTimeImpl", "Logic error! Adding settings but not in mode switching.");
            return;
        }
    }

    public void a(String s1)
    {
        if (g)
        {
            azt.c("RemainingTimeImpl", "Discard the pending mode swithcing and start a new one");
        }
        e = s1;
        f.clear();
        g = true;
        h = false;
    }

    public void b()
    {
        boolean flag;
        int i1;
        int j1;
        int k1;
        auf auf1;
        int i2;
        int j2;
        int k2;
        if (!g)
        {
            azt.d("RemainingTimeImpl", "Logic error! Finish but not in pending mode switching.");
            return;
        }
        i = C;
        j = 0.0D;
        k = 0.0D;
        l = 0.0D;
        m = 0.0D;
        F = false;
        G = false;
        Iterator iterator;
        if (android.provider.Settings.System.getInt(a.getContentResolver(), "airplane_mode_on", 0) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!azf.e() && !flag)
        {
            G = true;
        }
        iterator = f.iterator();
        i1 = 128;
        j1 = 30;
        k1 = 1;
_L27:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        auf1 = (auf)iterator.next();
        auf1.a;
        JVM INSTR tableswitch 0 10: default 192
    //                   0 222
    //                   1 244
    //                   2 265
    //                   3 297
    //                   4 329
    //                   5 364
    //                   6 506
    //                   7 643
    //                   8 767
    //                   9 799
    //                   10 831;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14
_L3:
        i2 = k1;
        j2 = j1;
        k2 = i1;
_L15:
        i1 = k2;
        j1 = j2;
        k1 = i2;
        continue; /* Loop/switch isn't completed */
_L4:
        int i3 = auf1.b;
        i2 = k1;
        j2 = j1;
        k2 = i3;
          goto _L15
_L5:
        int l2 = auf1.b;
        i2 = k1;
        j2 = l2;
        k2 = i1;
          goto _L15
_L6:
        if (!a(auf1.b)) goto _L3; else goto _L16
_L16:
        i2 = (int)(0.0050000000000000001D + (double)k1);
        j2 = j1;
        k2 = i1;
          goto _L15
_L7:
        if (!a(auf1.b)) goto _L3; else goto _L17
_L17:
        i2 = (int)(0.0050000000000000001D + (double)k1);
        j2 = j1;
        k2 = i1;
          goto _L15
_L8:
        if (!a(auf1.b) || flag) goto _L3; else goto _L18
_L18:
        G = true;
        i2 = k1;
        j2 = j1;
        k2 = i1;
          goto _L15
_L9:
        if (a(auf1.b))
        {
            i = i + v * H;
            j = j + v;
            k = k + v;
            l = l + v;
            m = m + v;
            G = true;
            O.put(2, Double.valueOf(p));
            i2 = k1;
            j2 = j1;
            k2 = i1;
        } else
        {
            O.put(2, Double.valueOf(0.0D));
            i2 = k1;
            j2 = j1;
            k2 = i1;
        }
          goto _L15
_L10:
        if (a(auf1.b))
        {
            i = i + x * J;
            j = j + x;
            k = k + x;
            l = l + x;
            m = m + x;
            O.put(3, Double.valueOf(q));
            i2 = k1;
            j2 = j1;
            k2 = i1;
        } else
        {
            O.put(3, Double.valueOf(0.0D));
            i2 = k1;
            j2 = j1;
            k2 = i1;
        }
          goto _L15
_L11:
        if (a(auf1.b))
        {
            double d6 = E * M;
            j = d6 + j;
            k = d6 + k;
            l = d6 + l;
            m = d6 + m;
            O.put(7, Double.valueOf(s));
            i2 = k1;
            j2 = j1;
            k2 = i1;
        } else
        {
            O.put(7, Double.valueOf(0.0D));
            i2 = k1;
            j2 = j1;
            k2 = i1;
        }
          goto _L15
_L12:
        if (!a(auf1.b)) goto _L3; else goto _L19
_L19:
        i2 = (int)(0.0050000000000000001D + (double)k1);
        j2 = j1;
        k2 = i1;
          goto _L15
_L13:
        if (!a(auf1.b)) goto _L3; else goto _L20
_L20:
        i2 = (int)(0.01D + (double)k1);
        j2 = j1;
        k2 = i1;
          goto _L15
_L14:
        F = a(auf1.b);
        if (F)
        {
            i = i + y;
            j = j + y;
            k = k + y;
            l = l + y;
            m = m + y;
            j = j + z;
            O.put(4, Double.valueOf(r));
            i2 = k1;
            j2 = j1;
            k2 = i1;
        } else
        {
            O.put(4, Double.valueOf(0.0D));
            i2 = k1;
            j2 = j1;
            k2 = i1;
        }
          goto _L15
_L2:
        int l1;
        double d1 = (L * (double)j1) / 30D;
        i = i + 0.5D * (d1 * t);
        j = j + d1 * t;
        k = k + t;
        l = l + t;
        m = m + d1 * t;
        double d2 = n;
        double d4;
        double d5;
        NetworkInfo networkinfo;
        if (i1 == 120)
        {
            d5 = 0.33000000000000002D * u;
            d4 = d2 + 0.33000000000000002D * o;
        } else
        {
            double d3 = (u * (double)i1) / 100D;
            d4 = d2 + (o * (double)i1) / 100D;
            d5 = d3;
        }
        O.put(1, Double.valueOf(d4));
        i = i + 0.5D * (d5 * d1);
        j = j + d5 * d1;
        k = d5 + k;
        l = d5 + l;
        m = m + d5 * d1;
        m = m + A;
        l = l + A;
        l = l + B;
        networkinfo = c.getActiveNetworkInfo();
        if (networkinfo == null) goto _L22; else goto _L21
_L21:
        l1 = networkinfo.getType();
        if (l1 != 0) goto _L24; else goto _L23
_L23:
        k = k + z * I;
_L22:
        if (F)
        {
            j = j + D * K;
        }
        k = k + D * K;
        l = l + D * K;
        m = m + D * K;
        i = i * (double)k1;
        j = j * (double)k1;
        k = k * (double)k1;
        l = l * (double)k1;
        m = m * (double)k1;
        g = false;
        h = true;
        return;
_L24:
        if (l1 == 1)
        {
            k = k + w * I;
        }
        if (true) goto _L22; else goto _L25
_L25:
        if (true) goto _L27; else goto _L26
_L26:
    }
}
