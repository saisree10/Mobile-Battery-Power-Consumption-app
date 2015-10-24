// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.Calendar;

public class ass
    implements adc, art, aru
{

    private static String c = "SmartSettingsMgr";
    private static boolean d = false;
    private static volatile ass e;
    protected boolean a;
    protected boolean b;
    private arr f;
    private Context g;
    private AlarmManager h;
    private PendingIntent i;
    private PendingIntent j;
    private PendingIntent k;
    private long l;
    private amp m;
    private arp n;
    private aap o;
    private arm p;
    private AlarmManager q;
    private add r;
    private amh s;
    private IntentFilter t;
    private IntentFilter u;
    private asv v;
    private BroadcastReceiver w;
    private BroadcastReceiver x;

    private ass(Context context)
    {
        a = false;
        w = new ast(this);
        x = new asu(this);
        f = arr.a(context);
        g = context;
        h = (AlarmManager)g.getSystemService("alarm");
        a();
        f.a(this);
        f.a(this);
        m = amp.a(g);
        s = amh.a(g, m);
        n = new arp();
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.intent.action.SCREEN_OFF");
        intentfilter.addAction("android.intent.action.SCREEN_ON");
        g.registerReceiver(n, intentfilter);
        p = arm.a(g);
        q = (AlarmManager)g.getSystemService("alarm");
        t = new IntentFilter();
        t.addAction("android.intent.action.SCREEN_OFF");
        t.addAction("android.intent.action.SCREEN_ON");
        t.addAction("com.dianxinos.dxbs.ALARMCHECKER");
        u = new IntentFilter();
        u.addAction("com.dianxinos.dxbs.HANGUPPHONE");
        g.registerReceiver(x, t);
        g.registerReceiver(w, u);
        o = aap.a(g);
    }

    public static ass a(Context context)
    {
        if (e != null) goto _L2; else goto _L1
_L1:
        ass;
        JVM INSTR monitorenter ;
        if (e == null)
        {
            e = new ass(context);
        }
        ass;
        JVM INSTR monitorexit ;
_L2:
        return e;
        Exception exception;
        exception;
        ass;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static asv a(ass ass1)
    {
        return ass1.v;
    }

    private String a(int i1, int j1)
    {
        String s1;
        if (i1 < 10)
        {
            s1 = (new StringBuilder()).append("0").append(i1).append(":").toString();
        } else
        {
            s1 = (new StringBuilder()).append(i1).append(":").toString();
        }
        if (j1 < 10)
        {
            return (new StringBuilder()).append(s1).append("0").append(j1).toString();
        } else
        {
            return (new StringBuilder()).append(s1).append(j1).toString();
        }
    }

    static void a(ass ass1, asv asv1)
    {
        ass1.d(asv1);
    }

    static void a(String s1)
    {
        b(s1);
    }

    private boolean a(int i1)
    {
        return i1 == 2 || i1 == 4;
    }

    static arm b(ass ass1)
    {
        return ass1.p;
    }

    private ase b(int i1)
    {
        if (i1 == 1 || i1 == 2)
        {
            return new ase("switch_by_battery", i1);
        }
        if (i1 == 3 || i1 == 4)
        {
            return new ase("switch_by_time", i1);
        } else
        {
            return null;
        }
    }

    private void b(asv asv1)
    {
        int i1 = amq.d(asv1.a);
        int j1 = s.b(i1, 2);
        int k1 = s.b(i1, 4);
        int l1 = s.b(i1, 13);
        boolean flag;
        if (l1 == -1 || l1 == 1 || j1 == 1 || k1 == 1 || j1 == -1 || k1 == -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b((new StringBuilder()).append("wifi:").append(j1).append(" mobileData:").append(k1).append(" module:").append(l1).toString());
        if (flag)
        {
            b((new StringBuilder()).append("dangerous:").append(flag).append(" isCalling:").append(asx.a(g).b()).toString());
            if (l1 == -1 && asx.a(g).b())
            {
                b("delayedSwitchShow");
                e(asv1);
                return;
            }
            if (k1 == 1 || l1 == -1 && !asx.a(g).b() || j1 == -1 && j() || k1 == -1 && i())
            {
                d(asv1);
                return;
            } else
            {
                c(asv1);
                return;
            }
        } else
        {
            c(asv1);
            return;
        }
    }

    private static void b(String s1)
    {
        if (d)
        {
            azt.a(c, s1);
        }
    }

    static Context c(ass ass1)
    {
        return ass1.g;
    }

    private void c(asv asv1)
    {
        if (asv1.b != 4)
        {
            if (asv1.b != 2);
        }
        asc.a(g).a(b(asv1.b), amq.d(asv1.a));
    }

    private boolean c(int i1)
    {
        return m.c() == i1 && !m.i();
    }

    static void d(ass ass1)
    {
        ass1.e();
    }

    private void d(asv asv1)
    {
        f(asv1);
        Intent intent = new Intent("com.dianxinos.dxbs.ALARMCHECKER");
        intent.setPackage(g.getPackageName());
        if (k == null)
        {
            k = PendingIntent.getBroadcast(g, 0, intent, 0);
        }
        q.cancel(k);
        b = true;
        q.set(0, 0x1d4c0L + System.currentTimeMillis(), k);
    }

    private void e()
    {
        g();
        if (k != null)
        {
            b = true;
            q.set(0, 0x1d4c0L + System.currentTimeMillis(), k);
        }
    }

    private void e(asv asv1)
    {
        v = asv1;
        a = true;
    }

    private void f()
    {
        g();
        b = false;
        a = false;
    }

    private void f(asv asv1)
    {
        int i1 = asv1.b;
        int j1 = asv1.a;
        int k1 = m.g(j1);
        p.c();
        String s2;
        if (i1 == 1)
        {
            Context context2 = g;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Object aobj2[] = new Object[2];
            aobj2[0] = (new StringBuilder()).append(String.valueOf(f.j())).append("%").toString();
            aobj2[1] = m.c(k1);
            s2 = context2.getString(0x7f0a0173, aobj2);
            p.a(0);
            p.b(1);
        } else
        if (i1 == 4)
        {
            int ai1[] = f.o();
            String s3 = a(ai1[0], ai1[1]);
            Context context1 = g;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            Object aobj1[] = new Object[2];
            aobj1[0] = s3;
            aobj1[1] = m.c(k1);
            s2 = context1.getString(0x7f0a0174, aobj1);
            b("SWITCH_BY_TIME_END");
            p.a(0);
            p.b(1);
        } else
        {
            int ai[] = f.n();
            String s1 = a(ai[0], ai[1]);
            Context context = g;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            Object aobj[] = new Object[2];
            aobj[0] = s1;
            aobj[1] = m.c(k1);
            s2 = context.getString(0x7f0a0174, aobj);
            p.a(0);
            p.b(1);
        }
        p.a(b(i1));
        p.a(j1, m);
        p.a(s2);
        p.b();
    }

    private void g()
    {
        if (k != null)
        {
            b = false;
            q.cancel(k);
        }
    }

    private asv h()
    {
        boolean flag = f.i();
        asv asv1 = null;
        if (flag)
        {
            int i1 = f.j();
            if (o.a(i1))
            {
                asv1 = new asv();
                asv1.b = 1;
                asv1.a = f.k();
            } else
            {
                boolean flag1 = o.b(i1);
                asv1 = null;
                if (flag1)
                {
                    asv asv2 = new asv();
                    asv2.b = 2;
                    asv2.a = f.h(1);
                    return asv2;
                }
            }
        }
        return asv1;
    }

    private boolean i()
    {
        return azx.b(g) && !azx.c(g);
    }

    private boolean j()
    {
        return azx.c(g);
    }

    private void k()
    {
        if (i == null)
        {
            Intent intent = new Intent("com.dianxinos.dxbs.ALARMSWITCH");
            i = PendingIntent.getBroadcast(g, 0, intent, 0);
        }
        int ai[] = f.n();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        long l1 = calendar.getTimeInMillis();
        calendar.set(11, ai[0]);
        calendar.set(12, ai[1]);
        calendar.set(13, 0);
        if (l1 > calendar.getTimeInMillis())
        {
            calendar.add(10, 24);
        }
        if (d)
        {
            azt.a(c, (new StringBuilder()).append("set start time : ").append(calendar.getTime()).toString());
        }
        l = calendar.getTimeInMillis();
        h.setRepeating(0, azf.a(l), 0x5265c00L, i);
    }

    private void l()
    {
        if (j == null)
        {
            Intent intent = new Intent("com.dianxinos.dxbs.ALARMRESTORE");
            j = PendingIntent.getBroadcast(g, 0, intent, 0);
        }
        int ai[] = f.o();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        long l1 = calendar.getTimeInMillis();
        calendar.set(11, ai[0]);
        calendar.set(12, ai[1]);
        calendar.set(13, 0);
        if (l1 > calendar.getTimeInMillis())
        {
            calendar.add(10, 24);
        }
        if (d)
        {
            azt.a(c, (new StringBuilder()).append("set end time: ").append(calendar.getTime()).toString());
        }
        h.setRepeating(0, azf.a(calendar.getTimeInMillis()), 0x5265c00L, j);
    }

    private void m()
    {
        if (i == null)
        {
            Intent intent = new Intent("com.dianxinos.dxbs.ALARMSWITCH");
            i = PendingIntent.getBroadcast(g, 0, intent, 0);
        }
        h.cancel(i);
        if (j == null)
        {
            Intent intent1 = new Intent("com.dianxinos.dxbs.ALARMRESTORE");
            j = PendingIntent.getBroadcast(g, 0, intent1, 0);
        }
        h.cancel(j);
    }

    public void a()
    {
        if (f.l())
        {
            k();
            l();
            return;
        } else
        {
            m();
            return;
        }
    }

    public void a(add add)
    {
        r = add;
        b("onBatteryInfoDataUpdated");
        asv asv1 = h();
        if (asv1 != null)
        {
            a(asv1);
        }
    }

    public void a(asv asv1)
    {
        int i1 = asv1.a;
        int j1 = asv1.b;
        if (a(j1))
        {
            c(asv1);
            return;
        }
        if (c(i1) || j1 == 1 && c(2))
        {
            b((new StringBuilder()).append("smart switch ignore, inmode:").append(c(i1)).append(" Sleep Mode:").append(c(2)).toString());
            return;
        } else
        {
            f();
            b(asv1);
            return;
        }
    }

    public void b()
    {
        try
        {
            g.unregisterReceiver(n);
        }
        catch (Exception exception) { }
        azt.b(c, "CpuSettingsScreenReceiver, stopped");
    }

    public void c()
    {
        asc.a(g).a("switch_by_battery");
    }

    public void d()
    {
        asc.a(g).a("switch_by_time");
    }

}
