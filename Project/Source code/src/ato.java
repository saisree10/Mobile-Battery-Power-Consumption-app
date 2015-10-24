// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.BatteryStats;
import android.os.Parcel;
import android.os.SystemClock;
import android.util.SparseArray;
import com.android.internal.app.IBatteryStats;
import com.android.internal.os.BatteryStatsImpl;
import com.android.internal.os.PowerProfile;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ato
{

    private static ato n;
    private Context a;
    private PowerProfile b;
    private IBatteryStats c;
    private Method d;
    private Method e;
    private Method f;
    private Method g;
    private Method h;
    private Method i;
    private int j;
    private Object k;
    private atr l;
    private List m;
    private boolean o;
    private Object p;
    private long q;

    private ato(Context context)
    {
        k = new Object();
        m = new LinkedList();
        o = false;
        p = new Object();
        q = 0L;
        j = azf.a();
        a = context.getApplicationContext();
        b = new atj(a);
        c = com.android.internal.app.IBatteryStats.Stub.asInterface(gl.a("batteryinfo"));
    }

    public static ato a(Context context)
    {
        if (n != null) goto _L2; else goto _L1
_L1:
        ato;
        JVM INSTR monitorenter ;
        if (n == null)
        {
            n = new ato(context);
        }
        ato;
        JVM INSTR monitorexit ;
_L2:
        return n;
        Exception exception;
        exception;
        ato;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static void a(ato ato1)
    {
        ato1.h();
    }

    private void a(atr atr1)
    {
        long l1 = atr.a(atr1).computeBatteryRealtime(1000L * SystemClock.elapsedRealtime(), j);
        atr1.a = System.currentTimeMillis();
        agi agi1 = atr1.e;
        long l2 = l1 / 1000L;
        agi1.a = l2;
        atr1.b = l2;
        a(atr1, l1);
        b(atr1, l1);
    }

    private void a(atr atr1, long l1)
    {
        agi agi1 = atr1.e;
        SensorManager sensormanager1 = (SensorManager)a.getSystemService("sensor");
        SensorManager sensormanager = sensormanager1;
_L2:
        int i1;
        int j1;
        double ad[];
        i1 = j;
        j1 = b.getNumSpeedSteps();
        ad = new double[j1];
        agi1.d = new double[j1];
        agi1.F = new double[j1];
        for (int k1 = 0; k1 < j1; k1++)
        {
            double ad1[] = agi1.d;
            double d26 = b.getAveragePower("cpu.active", k1);
            ad[k1] = d26;
            ad1[k1] = d26;
            agi1.F[k1] = b.getAveragePower("cpu.speeds", k1);
        }

        break; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        azt.d("PowerUsageStats", (new StringBuilder()).append("Failed to get sensor service: ").append(exception).toString());
        sensormanager = null;
        if (true) goto _L2; else goto _L1
_L1:
        double d1;
        double d2;
        double d3;
        double d4;
        double d5;
        double d6;
        ats ats1;
        atd atd1;
        atd atd2;
        atd atd3;
        atd atd4;
        atd atd5;
        atd atd6;
        SparseArray sparsearray;
        int i2;
        int j2;
        d1 = ad[j1 - 1];
        d2 = b.getAveragePower("cpu.awake");
        agi1.c = d2;
        d3 = b.getAveragePower("wifi.on");
        agi1.f = d3;
        d4 = b.getAveragePower("gps.on");
        agi1.j = d4;
        d5 = b.getAveragePower("dsp.audio");
        agi1.D = d5;
        d6 = b.getAveragePower("dsp.video");
        agi1.E = d6;
        agi1.G = b.getAveragePower("battery.capacity");
        ats1 = atr1.c;
        atc atc1 = (atc)atr1.d;
        atd1 = atc1.a(2);
        atd2 = atc1.a(5);
        atd3 = atc1.a(6);
        atd4 = atc1.a(7);
        atd5 = atc1.a(8);
        atd6 = atc1.a(9);
        sparsearray = atr.a(atr1).getUidStats();
        i2 = sparsearray.size();
        j2 = 0;
_L21:
        if (j2 >= i2) goto _L4; else goto _L3
_L3:
        android.os.BatteryStats.Uid uid;
        int k2;
        atu atu1;
        Iterator iterator3;
        double d22;
        String s1;
        long l25;
        long l26;
        double d23;
        uid = (android.os.BatteryStats.Uid)sparsearray.valueAt(j2);
        k2 = uid.getUid();
        atu1 = new atu(k2);
        Map map = uid.getProcessStats();
        if (map.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_2320;
        }
        iterator3 = map.entrySet().iterator();
        d22 = 0.0D;
        s1 = null;
        l25 = 0L;
        l26 = 0L;
        d23 = 0.0D;
_L7:
        if (!iterator3.hasNext()) goto _L6; else goto _L5
_L5:
        long l2;
        double d7;
        long l3;
        String s;
        java.util.Map.Entry entry = (java.util.Map.Entry)iterator3.next();
        String s2 = (String)entry.getKey();
        android.os.BatteryStats.Uid.Proc proc = (android.os.BatteryStats.Uid.Proc)entry.getValue();
        long l28 = 10L * (proc.getUserTime(i1) + proc.getSystemTime(i1));
        if (l28 >= 0L)
        {
            l25 += l28;
            l26 += 10L * proc.getForegroundTime(i1);
            long al[] = new long[j1];
            int k3 = 0;
            for (int i4 = 0; i4 < j1;)
            {
                al[i4] = proc.getTimeAtCpuSpeedStep(i4, i1);
                int i5 = (int)((long)k3 + al[i4]);
                i4++;
                k3 = i5;
            }

            long l4;
            double d8;
            long l5;
            long l6;
            Iterator iterator;
            long l7;
            double d9;
            double d10;
            long l8;
            double d11;
            long l9;
            long l10;
            long l11;
            long l12;
            long l13;
            long l14;
            long l15;
            double d12;
            double d13;
            long l16;
            double d14;
            double d15;
            Iterator iterator1;
            long l17;
            long l18;
            double d16;
            long l19;
            double d17;
            double d18;
            long l20;
            double d19;
            double d20;
            Iterator iterator2;
            int i3;
            android.os.BatteryStats.Uid.Sensor sensor;
            int j3;
            android.os.BatteryStats.Timer timer;
            long l21;
            long l22;
            Sensor sensor1;
            double d21;
            long l23;
            Exception exception1;
            Method method;
            Object aobj[];
            Method method1;
            Object aobj1[];
            Method method2;
            Object aobj2[];
            long l24;
            Class aclass[];
            Class aclass1[];
            Class aclass2[];
            android.os.BatteryStats.Uid.Wakelock wakelock;
            android.os.BatteryStats.Timer timer1;
            android.os.BatteryStats.Timer timer2;
            android.os.BatteryStats.Timer timer3;
            long l27;
            int j4;
            double d24;
            String s3;
            double d25;
            if (k3 == 0)
            {
                j4 = 1;
            } else
            {
                j4 = k3;
            }
            d24 = 0.0D;
            for (int k4 = 0; k4 < j1; k4++)
            {
                d24 += ((double)al[k4] / (double)j4) * (double)l28 * ad[k4];
            }

            d23 += d24;
            if (s1 == null || s1.startsWith("*"))
            {
                s3 = s2;
                d25 = d24;
            } else
            if (d22 < d24 && !s2.startsWith("*"))
            {
                s3 = s2;
                d25 = d24;
            } else
            {
                s3 = s1;
                d25 = d22;
            }
            if (d24 > 0.0D && !s2.startsWith("*"))
            {
                atu1.h.add(s2);
            }
            d22 = d25;
            s1 = s3;
        }
        if (true) goto _L7; else goto _L6
_L6:
        l3 = l26;
        s = s1;
        l27 = l25;
        d7 = d23;
        l2 = l27;
_L22:
        if (l3 < 0L)
        {
            azt.d("PowerUsageStats", (new StringBuilder()).append("UID: ").append(k2).append(", proc: ").append(s).append(", uidCpuTime: ").append(l2).append(", uidFgTime: ").append(l3).toString());
            l3 = 0L;
        }
        if (l3 > l2)
        {
            l4 = l2;
        } else
        {
            l4 = l3;
        }
        atu1.b = s;
        d8 = d7 / 1000D;
        atu1.i = l2;
        atu1.j = l4;
        l5 = l2 - l4;
        atu1.k = l5;
        if (l2 > 0L)
        {
            atu1.v = atu1.v + (d8 * (double)l5) / (double)l2;
        }
        l6 = 0L;
        iterator = uid.getWakelockStats().entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            wakelock = (android.os.BatteryStats.Uid.Wakelock)((java.util.Map.Entry)iterator.next()).getValue();
            timer1 = wakelock.getWakeTime(0);
            if (timer1 != null)
            {
                l6 += timer1.getTotalTimeLocked(l1, i1);
            }
            timer2 = wakelock.getWakeTime(1);
            if (timer2 != null)
            {
                atr.a(atr1, timer2.getTotalTimeLocked(l1, i1) / 1000L);
            }
            timer3 = wakelock.getWakeTime(2);
            if (timer3 != null)
            {
                atr.b(atr1, timer3.getTotalTimeLocked(l1, i1) / 1000L);
            }
        } while (true);
        l7 = l6 / 1000L;
        d9 = (d2 * (double)l7) / 1000D;
        atu1.m = l7;
        atu1.v = d9 + atu1.v;
        atr.c(atr1, l4);
        atr.d(atr1, l2);
        atr.e(atr1, l7);
        d10 = d8 + d9;
        l8 = (long)((1000D * d10) / d1);
        if (d10 > 0.0D)
        {
            atu1.b(new atx(9, d10, l8));
            atd6.b(new atf(k2, s, d10));
        }
        d11 = 0.0D + d10;
        l9 = uid.getTcpBytesReceived(j);
        l10 = uid.getTcpBytesSent(j);
        atu1.t = l9;
        atu1.u = l10;
        l11 = 0L;
        l12 = 0L;
        if (!azf.b()) goto _L9; else goto _L8
_L8:
        if (g == null)
        {
            aclass2 = new Class[2];
            aclass2[0] = Long.TYPE;
            aclass2[1] = Integer.TYPE;
            g = android/os/BatteryStats$Uid.getMethod("getWifiRunningTime", aclass2);
        }
        method = g;
        aobj = new Object[2];
        aobj[0] = Long.valueOf(l1);
        aobj[1] = Integer.valueOf(i1);
        l11 = ((Long)method.invoke(uid, aobj)).longValue() / 1000L;
        if (h == null)
        {
            aclass1 = new Class[2];
            aclass1[0] = Long.TYPE;
            aclass1[1] = Integer.TYPE;
            h = android/os/BatteryStats$Uid.getMethod("getScanWifiLockTime", aclass1);
        }
        method1 = h;
        aobj1 = new Object[2];
        aobj1[0] = Long.valueOf(l1);
        aobj1[1] = Integer.valueOf(i1);
        l12 = ((Long)method1.invoke(uid, aobj1)).longValue() / 1000L;
        if (i == null)
        {
            aclass = new Class[2];
            aclass[0] = Long.TYPE;
            aclass[1] = Integer.TYPE;
            i = android/os/BatteryStats$Uid.getMethod("getFullWifiLockTime", aclass);
        }
        method2 = i;
        aobj2 = new Object[2];
        aobj2[0] = Long.valueOf(l1);
        aobj2[1] = Integer.valueOf(i1);
        l24 = ((Long)method2.invoke(uid, aobj2)).longValue() / 1000L;
        l13 = l12;
        l14 = l11;
        l15 = l24;
_L17:
        d12 = (d3 * (double)l14) / 1000D;
        atr.f(atr1, l14);
        atu1.p = l14;
        atu1.q = l13;
        atu1.r = l15;
        if (d12 > 0.0D)
        {
            atu1.b(new atx(2, d12, l14));
            atd1.b(new atf(k2, s, d12));
        }
        if (l14 <= 0L && l13 <= 0L)
        {
            if (l15 <= 0L);
        }
        d13 = d11 + d12;
        l16 = 0L;
        d14 = 0.0D;
        d15 = 0.0D;
        iterator1 = uid.getSensorStats().entrySet().iterator();
        l17 = 0L;
_L16:
        if (!iterator1.hasNext()) goto _L11; else goto _L10
_L10:
        sensor = (android.os.BatteryStats.Uid.Sensor)((java.util.Map.Entry)iterator1.next()).getValue();
        j3 = sensor.getHandle();
        timer = sensor.getSensorTime();
        if (timer == null) goto _L13; else goto _L12
_L12:
        l22 = timer.getTotalTimeLocked(l1, i1) / 1000L;
        if (j3 != -10000) goto _L15; else goto _L14
_L14:
        d14 = (d4 * (double)l22) / 1000D;
        l16 = l22;
        l21 = l17;
_L20:
        l17 = l21;
          goto _L16
        exception1;
        exception1.printStackTrace();
_L9:
        l13 = l12;
        l14 = l11;
        l15 = 0L;
          goto _L17
_L15:
        if (sensormanager == null) goto _L13; else goto _L18
_L18:
        sensor1 = sensormanager.getDefaultSensor(j3);
        if (sensor1 == null) goto _L13; else goto _L19
_L19:
        d21 = sensor1.getPower();
        l23 = l17 + l22;
        d15 += (d21 * (double)l22) / 1000D;
        l21 = l23;
          goto _L20
_L11:
        atu1.n = l16;
        atu1.o = l17;
        if (d14 > 0.0D)
        {
            atu1.b(new atx(7, d14, l16));
            atd4.b(new atf(uid.getUid(), s, d14));
        }
        l18 = (long)((1000D * d15) / d4);
        if (d15 > 0.0D)
        {
            atu1.b(new atx(8, d15, l18));
            atd5.b(new atf(uid.getUid(), s, d15));
        }
        atd4.b = l16 + atd4.b;
        atd5.b = l17 + atd5.b;
        d16 = d15 + (d13 + d14);
        l19 = uid.getAudioTurnedOnTime(l1, i1) / 1000L;
        d17 = (d5 * (double)l19) / 1000D;
        if (d17 > 0.0D)
        {
            atu1.b(new atx(5, d17, l19));
            atd2.b(new atf(uid.getUid(), s, d17));
        }
        atd2.b = l19 + atd2.b;
        d18 = d16 + d17;
        l20 = uid.getVideoTurnedOnTime(l1, i1) / 1000L;
        d19 = (d6 * (double)l20) / 1000D;
        if (d19 > 0.0D)
        {
            atu1.b(new atx(6, d19, l20));
            atd3.b(new atf(uid.getUid(), s, d19));
        }
        atd3.b = l20 + atd3.b;
        d20 = d19 + d18;
        iterator2 = uid.getPackageStats().entrySet().iterator();
        for (i3 = 0; iterator2.hasNext(); i3 += ((android.os.BatteryStats.Uid.Pkg)((java.util.Map.Entry)iterator2.next()).getValue()).getWakeups(i1)) { }
        atu1.s = i3;
        atr1.e.H.add(atu1);
        if (d20 > 0.0D)
        {
            ats1.b(atu1);
        } else
        {
            atu1.a();
        }
        j2++;
          goto _L21
_L4:
        return;
_L13:
        l21 = l17;
          goto _L20
        l2 = 0L;
        d7 = 0.0D;
        l3 = 0L;
        s = null;
          goto _L22
    }

    static boolean a(ato ato1, boolean flag)
    {
        ato1.o = flag;
        return flag;
    }

    static Object b(ato ato1)
    {
        return ato1.p;
    }

    private void b(atr atr1, long l1)
    {
        c(atr1, l1);
        d(atr1, l1);
        e(atr1, l1);
        f(atr1, l1);
        g(atr1, l1);
        i(atr1, l1);
        h(atr1, l1);
        if (atr.b(atr1) > 0.0D)
        {
            double d2 = b.getAveragePower("radio.active");
            long l3 = (long)((1000D * atr.b(atr1)) / d2);
            atr1.c.a(4, atr.b(atr1), l3);
        }
        if (atr.c(atr1) > 0.0D)
        {
            atr1.c.a(2, atr.c(atr1), atr.d(atr1));
        }
        if (atr.e(atr1) > 0.0D)
        {
            int i1 = b.getNumSpeedSteps();
            double d1 = b.getAveragePower("cpu.active", i1 - 1);
            long l2 = (long)((1000D * atr.e(atr1)) / d1);
            atr1.c.a(9, atr.e(atr1), l2);
        }
        if (atr.f(atr1) > 0.0D)
        {
            atr1.c.a(3, atr.f(atr1), atr.g(atr1));
        }
    }

    private void c(atr atr1, long l1)
    {
        agi agi1 = atr1.e;
        long l2;
        double d1;
        double d2;
        double d3;
        int i1;
        long l3;
        double d4;
        double d5;
        ats ats1;
        try
        {
            l2 = atr.a(atr1).getScreenOnTime(l1, j) / 1000L;
            agi1.B = l2;
        }
        catch (Exception exception)
        {
            return;
        }
        d1 = b.getAveragePower("screen.on");
        agi1.p = d1;
        d2 = d1 * (double)l2;
        d3 = b.getAveragePower("screen.full");
        agi1.A = d3;
        agi1.C = new long[5];
        i1 = 0;
        l3 = 0L;
        double d7;
        for (d4 = 0.0D; i1 < 5; d4 = d7)
        {
            double d6 = (d3 * (double)(i1 + 1)) / 5D;
            long al[] = agi1.C;
            long l4 = atr.a(atr1).getScreenBrightnessTime(i1, l1, j) / 1000L;
            al[i1] = l4;
            d7 = d4 + d6 * (double)l4;
            long l5 = l3 + l4;
            i1++;
            l3 = l5;
        }

        if (l3 > 0L)
        {
            d5 = d4 / (double)l3;
        } else
        {
            d5 = 0.0D;
        }
        double _tmp = d4 + d2;
        ((atc)atr1.d).a(1).b = l2;
        ats1 = atr1.c;
        ats1.j = atr.h(atr1);
        ats1.l = d1;
        ats1.k = l2;
        ats1.n = d5;
        ats1.m = l3;
    }

    private void d(atr atr1, long l1)
    {
        agi agi1 = atr1.e;
        double d1 = b.getAveragePower("radio.active");
        agi1.y = d1;
        agi agi2 = atr1.e;
        long l2 = atr.a(atr1).getPhoneOnTime(l1, j) / 1000L;
        agi2.r = l2;
        double d2 = (d1 * (double)l2) / 1000D;
        Context context = a;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        String s = context.getString(0x7f0a0065);
        ((atc)atr1.d).a(4).b(new ate(4, s, d2));
        atr.a(atr1, d2);
    }

    private void e(atr atr1, long l1)
    {
        agi agi1 = atr1.e;
        long l2 = atr.a(atr1).getRadioDataUptime() / 1000L;
        agi1.z = l2;
        double d1 = (b.getAveragePower("radio.active") * (double)l2) / 1000D;
        Context context = a;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        String s = context.getString(0x7f0a0066);
        ((atc)atr1.d).a(4).b(new ate(4, s, d1));
        atr.a(atr1, d1);
    }

    private void f()
    {
        List list = m;
        list;
        JVM INSTR monitorenter ;
        for (Iterator iterator = m.iterator(); iterator.hasNext(); ((atq)iterator.next()).b()) { }
        break MISSING_BLOCK_LABEL_48;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
    }

    private void f(atr atr1, long l1)
    {
        agi agi1;
        long l2;
        double d1;
        long l3;
        agi1 = atr1.e;
        l2 = atr.a(atr1).getPhoneSignalScanningTime(l1, j) / 1000L;
        agi1.t = l2;
        if (l2 >= l1 / 1000L)
        {
            return;
        }
        agi1.q = new double[5];
        agi1.s = new long[5];
        agi1.u = new int[5];
        int i1 = 0;
        d1 = 0.0D;
        long l5;
        for (l3 = 0L; i1 < 5; l3 = l5)
        {
            double ad[] = agi1.q;
            double d4 = b.getAveragePower("radio.on", i1);
            ad[i1] = d4;
            long al[] = agi1.s;
            long l4 = atr.a(atr1).getPhoneSignalStrengthTime(i1, l1, j) / 1000L;
            al[i1] = l4;
            agi1.u[i1] = atr.a(atr1).getPhoneSignalStrengthCount(i1, j);
            d1 += (d4 * (double)l4) / 1000D;
            l5 = l3 + l4;
            i1++;
        }

        Field field = android/os/BatteryStats.getField("NUM_DATA_CONNECTION_TYPES");
        if (field == null) goto _L2; else goto _L1
_L1:
        int i2 = field.getInt(null);
        int j1 = i2;
_L4:
        agi1.w = new int[j1];
        agi1.v = new long[j1];
        for (int k1 = 0; k1 < j1; k1++)
        {
            agi1.w[k1] = atr.a(atr1).getPhoneDataConnectionCount(k1, j);
            agi1.v[k1] = atr.a(atr1).getPhoneDataConnectionTime(k1, l1, j) / 1000L;
        }

        break; /* Loop/switch isn't completed */
_L2:
        j1 = 0;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        exception.printStackTrace();
        j1 = 0;
        if (true) goto _L4; else goto _L3
_L3:
        double d2 = b.getAveragePower("radio.scanning");
        agi1.x = d2;
        double d3 = d1 + (d2 * (double)l2) / 1000D;
        Context context = a;
        ly.i;
        String s = context.getString(0x7f0a0067);
        atd atd1 = ((atc)atr1.d).a(4);
        atd1.b = l3;
        atd1.b(new ate(4, s, d3));
        atr.a(atr1, d3);
        return;
    }

    private BatteryStatsImpl g()
    {
        BatteryStatsImpl batterystatsimpl;
        Parcel parcel;
        byte abyte0[] = c.getStatistics();
        parcel = Parcel.obtain();
        parcel.unmarshall(abyte0, 0, abyte0.length);
        parcel.setDataPosition(0);
        batterystatsimpl = (BatteryStatsImpl)BatteryStatsImpl.CREATOR.createFromParcel(parcel);
        boolean flag = azf.c();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_123;
        }
        if (d == null)
        {
            Class aclass[] = new Class[1];
            aclass[0] = Integer.TYPE;
            d = com/android/internal/os/BatteryStatsImpl.getMethod("distributeWorkLocked", aclass);
        }
        Method method = d;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(j);
        method.invoke(batterystatsimpl, aobj);
_L1:
        parcel.recycle();
        return batterystatsimpl;
        Exception exception2;
        exception2;
        exception2.printStackTrace();
          goto _L1
        Exception exception1;
        exception1;
_L5:
        azt.d("PowerUsageStats", (new StringBuilder()).append("Exception:").append(exception1).toString());
        return batterystatsimpl;
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
        OutOfMemoryError outofmemoryerror1;
        batterystatsimpl = null;
        outofmemoryerror1 = outofmemoryerror;
_L3:
        azt.d("PowerUsageStats", (new StringBuilder()).append("oom:").append(outofmemoryerror1).toString());
        return batterystatsimpl;
        outofmemoryerror1;
        if (true) goto _L3; else goto _L2
_L2:
        Exception exception;
        exception;
        exception1 = exception;
        batterystatsimpl = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private void g(atr atr1, long l1)
    {
        long l2;
        agi agi1 = atr1.e;
        l2 = atr.a(atr1).getWifiOnTime(l1, j) / 1000L;
        agi1.g = l2;
        if (!azf.b()) goto _L2; else goto _L1
_L1:
        Method method;
        if (e == null)
        {
            Class aclass1[] = new Class[2];
            aclass1[0] = Long.TYPE;
            aclass1[1] = Integer.TYPE;
            e = com/android/internal/os/BatteryStatsImpl.getMethod("getGlobalWifiRunningTime", aclass1);
        }
        method = e;
_L3:
        long l3;
        BatteryStatsImpl batterystatsimpl = atr.a(atr1);
        Object aobj[] = new Object[2];
        aobj[0] = Long.valueOf(l1);
        aobj[1] = Integer.valueOf(j);
        l3 = ((Long)method.invoke(batterystatsimpl, aobj)).longValue() / 1000L;
_L4:
        atr1.e.h = l3;
        long l4 = l3 - atr.i(atr1);
        Exception exception;
        long l5;
        double d1;
        double d2;
        Context context;
        String s;
        atd atd1;
        Class aclass[];
        if (l4 < 0L)
        {
            l5 = 0L;
        } else
        {
            l5 = l4;
        }
        d1 = b.getAveragePower("wifi.on");
        atr1.e.e = b.getAveragePower("wifi.scan");
        atr1.e.i = b.getAveragePower("wifi.active");
        d2 = (d1 * (double)(0L * l2) + d1 * (double)l5) / 1000D;
        context = a;
        ly.i;
        s = context.getString(0x7f0a0062);
        atd1 = ((atc)atr1.d).a(2);
        atd1.b = l2;
        atd1.b(new ate(2, s, d2));
        atr.b(atr1, d2);
        atr.g(atr1, l5);
        return;
_L2:
        if (f == null)
        {
            aclass = new Class[2];
            aclass[0] = Long.TYPE;
            aclass[1] = Integer.TYPE;
            f = com/android/internal/os/BatteryStatsImpl.getMethod("getWifiRunningTime", aclass);
        }
        method = f;
          goto _L3
        exception;
        exception.printStackTrace();
        l3 = 0L;
          goto _L4
    }

    private void h()
    {
        atr atr1 = new atr();
        atr.a(atr1, g());
        if (atr.a(atr1) == null)
        {
            f();
            return;
        }
        a(atr1);
        atd atd1 = ((atc)atr1.d).a(1);
        atr1.c.a(atd1);
        atr1.c.a(a);
        atr1.c.a(a, 20, 0.10000000000000001D);
        atr1.d.a(a);
        atr1.d.a(a, 20, 0.10000000000000001D);
        atr.a(atr1, null);
        ago.a(a).a(atr1);
        synchronized (k)
        {
            l = atr1;
        }
        f();
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void h(atr atr1, long l1)
    {
        agi agi1 = atr1.e;
        double d1 = b.getAveragePower("cpu.idle");
        agi1.b = d1;
        long l2;
        long l3;
        double d2;
        Context context;
        String s;
        atd atd1;
        try
        {
            l2 = atr.a(atr1).getScreenOnTime(l1, j);
        }
        catch (Exception exception)
        {
            return;
        }
        l3 = (l1 - l2) / 1000L;
        d2 = (d1 * (double)l3) / 1000D;
        context = a;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        s = context.getString(0x7f0a0064);
        atd1 = ((atc)atr1.d).a(9);
        atd1.b = atr.j(atr1);
        atd1.b(new ate(9, s, d2));
        atr.c(atr1, d2);
        atr.h(atr1, l3);
    }

    private void i(atr atr1, long l1)
    {
        agi agi1 = atr1.e;
        double d1 = b.getAveragePower("bluetooth.on");
        agi1.k = d1;
        double d2 = b.getAveragePower("bluetooth.at");
        agi1.n = d2;
        agi1.m = b.getAveragePower("bluetooth.active");
        long l2 = atr.a(atr1).getBluetoothOnTime(l1, j) / 1000L;
        agi1.l = l2;
        double d3 = (d1 * (double)l2) / 1000D;
        int i1 = atr.a(atr1).getBluetoothPingCount();
        agi1.o = i1;
        double d4 = d3 + (d2 * (double)i1) / 1000D;
        Context context = a;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        String s = context.getString(0x7f0a0063);
        atd atd1 = ((atc)atr1.d).a(3);
        atd1.b = l2;
        atd1.b(new ate(3, s, d4));
        atr.d(atr1, d4);
        atr.i(atr1, (long)((d4 * 1000D) / d1));
    }

    public atr a()
    {
        atr atr1;
        synchronized (k)
        {
            atr1 = l;
        }
        return atr1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(atq atq1)
    {
        synchronized (m)
        {
            m.add(atq1);
        }
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b()
    {
label0:
        {
            synchronized (p)
            {
                if (!o)
                {
                    break label0;
                }
            }
            return;
        }
        o = true;
        q = System.currentTimeMillis();
        obj;
        JVM INSTR monitorexit ;
        (new atp(this)).start();
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(atq atq1)
    {
        synchronized (m)
        {
            m.remove(atq1);
        }
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void c()
    {
        if (System.currentTimeMillis() - q > 0x493e0L)
        {
            b();
        }
    }

    public boolean d()
    {
        if (azf.j() && !azf.b)
        {
            BatteryStatsImpl batterystatsimpl = g();
            ArrayList arraylist = new ArrayList();
            if (batterystatsimpl != null && batterystatsimpl.startIteratingHistoryLocked())
            {
                android.os.BatteryStats.HistoryItem historyitem = new android.os.BatteryStats.HistoryItem();
                boolean flag = true;
                long l1 = 0L;
                int i1 = 0;
                do
                {
                    if (!batterystatsimpl.getNextHistoryLocked(historyitem))
                    {
                        break;
                    }
                    if (azf.a(historyitem.cmd))
                    {
                        if (flag)
                        {
                            l1 = historyitem.time;
                            flag = false;
                        }
                        if (historyitem.time >= l1 + (long)(1000 * (i1 * 3600)))
                        {
                            i1++;
                            arraylist.add(Integer.valueOf(historyitem.batteryLevel));
                        }
                    }
                } while (true);
                if (i1 >= 2)
                {
                    aio aio1 = aio.a(a);
                    long l2 = System.currentTimeMillis();
                    for (int j1 = 0; j1 < i1; j1++)
                    {
                        aio1.a(((Integer)arraylist.get(j1)).intValue(), l2 - (long)(3600 * (1000 * (-1 + (i1 - j1)))));
                    }

                    return true;
                }
            }
        }
        return false;
    }

    public atr e()
    {
        atr atr1 = new atr();
        atr.a(atr1, g());
        if (atr.a(atr1) == null)
        {
            return null;
        } else
        {
            a(atr1);
            atr.a(atr1, null);
            return atr1;
        }
    }
}
