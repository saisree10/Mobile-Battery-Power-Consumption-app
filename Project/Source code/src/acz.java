// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Build;
import android.os.Looper;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Timer;

public class acz
{

    public static final int a[];
    public static long b = -1L;
    public static long c = -2L;
    private static final String e;
    private static acx q;
    private static acz s;
    private final int d = 0x2bf20;
    private boolean f;
    private Timer g;
    private Context h;
    private add i;
    private aff j;
    private aud k;
    private int l;
    private long m;
    private int n;
    private adg o;
    private azm p;
    private BroadcastReceiver r;
    private List t;
    private List u;

    private acz(Context context)
    {
        f = false;
        l = 100;
        m = 0L;
        p = null;
        r = new ada(this);
        t = new LinkedList();
        u = new LinkedList();
        h = context.getApplicationContext();
        l = azr.a(h).f();
        k = new aud(h);
        k.a();
        o = new adg(h, new c());
        j = aff.a(h);
        p = azm.a();
        q = acx.a(h);
        g();
    }

    public static int a(int i1)
    {
        return i1 > 20 ? 1 : 0;
    }

    public static int a(Context context, int i1)
    {
        return context.getResources().getColor(a[i1]);
    }

    public static acz a(Context context)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        acz;
        JVM INSTR monitorenter ;
        if (s == null)
        {
            s = new acz(context);
        }
        acz;
        JVM INSTR monitorexit ;
_L2:
        return s;
        Exception exception;
        exception;
        acz;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static azm a(acz acz1)
    {
        return acz1.p;
    }

    static azm a(acz acz1, azm azm1)
    {
        acz1.p = azm1;
        return azm1;
    }

    static void a(acz acz1, add add1)
    {
        acz1.a(add1);
    }

    static void a(acz acz1, Intent intent)
    {
        acz1.a(intent);
    }

    private void a(add add1)
    {
        List list;
        if (f && add1.j == 100)
        {
            add1.a = 5;
        }
        if (azf.n && add1.k > 0xd2f00)
        {
            add1.k = 0xd2f00;
        }
        j.a(add1);
        add1.l = j.g();
        if (add1.l)
        {
            Exception exception;
            Iterator iterator;
            if (add1.j == 100)
            {
                e();
            } else
            {
                f();
            }
            o.a(add1.j, j.f().c(), j.e(), add1.l, b(add1.e));
        } else
        {
            f();
            o.a(add1.j, add1.k, add1.a, add1.l, b(add1.e));
        }
        list = u;
        list;
        JVM INSTR monitorenter ;
        for (iterator = u.iterator(); iterator.hasNext(); ((ade)iterator.next()).a(add1)) { }
        break MISSING_BLOCK_LABEL_218;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
        LinkedList linkedlist;
        synchronized (t)
        {
            linkedlist = new LinkedList(t);
        }
        for (Iterator iterator1 = linkedlist.iterator(); iterator1.hasNext(); ((adc)iterator1.next()).a(add1)) { }
        break MISSING_BLOCK_LABEL_291;
        exception1;
        list1;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    private void a(Intent intent)
    {
        add add1 = new add();
        add1.a = intent.getIntExtra("status", 1);
        n = add1.a;
        add1.b = intent.getIntExtra("health", 1);
        add.a(add1, intent.getBooleanExtra("present", false));
        add1.c = intent.getIntExtra("level", 0);
        add1.d = intent.getIntExtra("scale", 100);
        add1.e = intent.getIntExtra("plugged", 0);
        add1.f = intent.getIntExtra("voltage", 0);
        add1.g = intent.getIntExtra("temperature", 0);
        add1.h = intent.getStringExtra("technology");
        b(add1);
        add1.i = false;
        int i1;
        if (add1.d < 1)
        {
            i1 = add1.c;
        } else
        {
            i1 = (100 * add1.c) / add1.d;
        }
        add.a(add1, i1);
        if (add.a(add1) >= 0 && add.a(add1) <= 100)
        {
            add1.j = add.a(add1);
        } else
        if (add.a(add1) < 0)
        {
            add1.j = 0;
        } else
        if (add.a(add1) > 100)
        {
            add1.j = 100;
        }
        if (Thread.currentThread() == Looper.getMainLooper().getThread() && !q.d())
        {
            if (n == 5 && (m != 0L || add1.j < 100))
            {
                if (bal.a(h, add1.j, m))
                {
                    q.c();
                }
            } else
            if (m == 0L && add1.j == 100)
            {
                m = System.currentTimeMillis();
            }
        }
        if (i == null || i.j != add1.j)
        {
            add1.k = k.a(add1.j, 5);
        } else
        {
            add1.k = i.k;
        }
        a(add1);
        i = add1;
    }

    static boolean a(acz acz1, boolean flag)
    {
        acz1.f = flag;
        return flag;
    }

    static add b(acz acz1)
    {
        return acz1.i;
    }

    private void b(add add1)
    {
        int i1 = 600;
        if (e.equalsIgnoreCase("SCH-i909") && android.os.Build.VERSION.SDK_INT <= 8 && !android.os.Build.VERSION.RELEASE.equals("2.2.2"))
        {
            add1.d = 1000;
            l = 1000;
            azr.a(h).b(l);
        }
        if (add1.c > add1.d)
        {
            azt.d("BatteryInfoHelper", (new StringBuilder()).append("Bad phone!!! battery level: ").append(add1.c).append(", battery scale: ").append(add1.d).append(", mBatteryScale: ").append(l).toString());
            if (add1.c % 100 == 0)
            {
                l = add1.c;
                azr.a(h).b(l);
            }
        }
        if (add1.d < l)
        {
            add1.d = l;
        }
        if (add1.g < 80)
        {
            add1.g = 10 * add1.g;
        }
        int j1 = add1.g;
        if (j1 <= i1)
        {
            if (j1 < 0)
            {
                i1 = 0;
            } else
            {
                i1 = j1;
            }
        }
        add1.g = i1;
        if (add1.f < 10)
        {
            add1.f = 1000 * add1.f;
        }
    }

    static Context c(acz acz1)
    {
        return acz1.h;
    }

    static adg d(acz acz1)
    {
        return acz1.o;
    }

    public static boolean d(int i1)
    {
        return i1 <= 5000 && i1 >= 2800;
    }

    static aff e(acz acz1)
    {
        return acz1.j;
    }

    private void e()
    {
        this;
        JVM INSTR monitorenter ;
        if (g == null)
        {
            g = new Timer();
            g.schedule(new adb(this), 0x2bf20L);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static aud f(acz acz1)
    {
        return acz1.k;
    }

    private void f()
    {
        this;
        JVM INSTR monitorenter ;
        if (g != null)
        {
            f = false;
            g.cancel();
            g = null;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void g()
    {
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.intent.action.BATTERY_CHANGED");
        intentfilter.addAction("com.dianxinos.dxbs.MODECHANGE");
        intentfilter.addAction("com.dianxinos.dxbs.MODEMODIFIED");
        intentfilter.addAction("com.dianxinos.dxbs.action.RemainingTimeUpate");
        intentfilter.addAction("com.dianxinos.dxbs.BATTERY_UPDATE");
        intentfilter.addAction("com.dianxinos.dxbs.test.batterychanged");
        Intent intent = h.registerReceiver(r, intentfilter);
        if (intent != null)
        {
            a(intent);
        }
        azt.b("BatteryInfoHelper", "BatteryInfoHelper, service started");
    }

    private void h()
    {
        try
        {
            h.unregisterReceiver(r);
        }
        catch (Exception exception) { }
        azt.b("BatteryInfoHelper", "BatteryInfoHelper, service stopped");
    }

    public int a()
    {
        int i1 = -1;
        if (i != null)
        {
            int j1 = i.k;
            i1 = k.a(i.j, 5);
            if (i1 - j1 < 300)
            {
                i1 = j1 + 300;
            }
            i.k = i1;
            a(i);
        }
        return i1;
    }

    public void a(adc adc1)
    {
label0:
        {
            synchronized (t)
            {
                if (t.contains(adc1))
                {
                    break label0;
                }
                t.add(adc1);
            }
            adc1.a(i);
            return;
        }
        list;
        JVM INSTR monitorexit ;
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(ade ade1)
    {
        synchronized (u)
        {
            if (!u.contains(ade1))
            {
                u.add(ade1);
            }
        }
        ade1.a(i);
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int b()
    {
        if (azf.n && i.k > 0xd2f00)
        {
            i.k = 0xd2f00;
        }
        return i.k;
    }

    public void b(adc adc1)
    {
        synchronized (t)
        {
            t.remove(adc1);
        }
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean b(int i1)
    {
        return i1 == 1 || i1 == 2;
    }

    public add c()
    {
        return i;
    }

    public boolean c(int i1)
    {
        return true;
    }

    public void d()
    {
        if (i != null)
        {
            a(i);
        }
    }

    protected void finalize()
    {
        h();
    }

    static 
    {
        int ai[] = new int[2];
        com.dianxinos.dxbs.R.color _tmp = ly.c;
        ai[0] = 0x7f090053;
        com.dianxinos.dxbs.R.color _tmp1 = ly.c;
        ai[1] = 0x7f090054;
        a = ai;
        e = Build.DEVICE;
    }
}
