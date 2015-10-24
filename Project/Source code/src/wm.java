// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.database.sqlite.SQLiteException;
import android.os.PowerManager;
import android.os.SystemClock;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class wm extends Thread
{

    private Context a;
    private ActivityManager b;
    private ws c;
    private boolean d;
    private String e;
    private int f;
    private boolean g;
    private int h;
    private boolean i;
    private long j;
    private long k;
    private long l;
    private boolean m;
    private zn n;
    private FileWriter o;
    private long p;
    private boolean q;
    private BroadcastReceiver r;

    public wm(Context context)
    {
        super("PerfFgMonitor");
        d = true;
        f = -1;
        g = false;
        h = -1;
        i = true;
        m = false;
        q = false;
        r = new wn(this);
        a = context.getApplicationContext();
        b = (ActivityManager)a.getSystemService("activity");
        c = ws.a();
        d = xm.a();
    }

    static int a(wm wm1, int i1)
    {
        wm1.h = i1;
        return i1;
    }

    static Context a(wm wm1)
    {
        return wm1.a;
    }

    private String a(android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo)
    {
        String s;
        String as[];
        String s1;
        s = runningappprocessinfo.processName;
        as = runningappprocessinfo.pkgList;
        s1 = null;
        if (as == null) goto _L2; else goto _L1
_L1:
        String as1[];
        int i1;
        int j1;
        as1 = runningappprocessinfo.pkgList;
        i1 = as1.length;
        j1 = 0;
_L8:
        if (j1 >= i1) goto _L2; else goto _L3
_L3:
        String s2 = as1[j1];
        if (!s2.equals(s)) goto _L5; else goto _L4
_L4:
        return s;
_L5:
        j1++;
        s1 = s2;
        continue; /* Loop/switch isn't completed */
_L2:
        if (s1 == null) goto _L4; else goto _L6
_L6:
        return s1;
        if (true) goto _L8; else goto _L7
_L7:
    }

    static void a(String s)
    {
        b(s);
    }

    private void a(String s, int i1, boolean flag, int j1, int k1)
    {
        if (j1 == -1 || j1 == 1)
        {
            if (k1 == 4)
            {
                xn xn = null;
                if (!flag)
                {
                    xn = xm.a(i1);
                }
                List list = xm.b();
                if (xn != null || list != null)
                {
                    a(xn, list, true);
                }
            }
        } else
        if (j1 == 4)
        {
            xn xn1 = null;
            if (!flag)
            {
                xn1 = xm.a(i1);
            }
            List list1 = xm.b();
            if (xn1 != null || list1 != null)
            {
                a(xn1, list1, false);
                return;
            }
        }
    }

    private void a(String s, int i1, boolean flag, String s1, int j1, boolean flag1)
    {
        xn xn;
        xn xn1;
        xq xq;
        xq xq1;
        int k1;
        if (xc.f())
        {
            wo wo1;
            HashSet hashset;
            int l1;
            xp xp1;
            xn xn2;
            if (h == 4 && s != null && !flag)
            {
                xn2 = xm.a(i1);
            } else
            {
                xn2 = null;
            }
            if (h == 4 && !flag1)
            {
                xn1 = xm.a(j1);
                xn = xn2;
            } else
            {
                xn = xn2;
                xn1 = null;
            }
        } else
        {
            xn = null;
            xn1 = null;
        }
        if (xc.d() && !m)
        {
            hashset = new HashSet();
            if (i1 != -1 && !flag)
            {
                hashset.add(Integer.valueOf(i1));
            }
            if (!flag1)
            {
                hashset.add(Integer.valueOf(j1));
            }
            l1 = hashset.size();
            xp1 = null;
            if (l1 > 0)
            {
                xp1 = xo.a(a, hashset);
            }
            xq xq2;
            xq xq3;
            if (xp1 != null)
            {
                if (i1 != -1 && !flag)
                {
                    xq3 = xp1.a(i1);
                } else
                {
                    b((new StringBuilder()).append("set old power snap to null old Uid: ").append(i1).toString());
                    xq3 = null;
                }
                if (!flag1)
                {
                    xq2 = xp1.a(j1);
                } else
                {
                    b("set new power snap to null");
                    xq2 = null;
                }
            } else
            {
                b("No powerstats data.");
                xq2 = null;
                xq3 = null;
            }
            xq1 = xq2;
            xq = xq3;
        } else
        {
            b((new StringBuilder()).append("Do not support power stats. power source:").append(m).toString());
            xq = null;
            xq1 = null;
        }
        if (xc.c() && !flag1)
        {
            k1 = zt.a(a, j1);
        } else
        {
            k1 = 0;
        }
        wo1 = new wo(this, flag, s, flag1, s1, xn, xn1, xq, xq1, k1);
        c.a(wo1);
    }

    private void a(String s, boolean flag, boolean flag1)
    {
        if (!flag1)
        {
            c.b(s, flag);
        }
    }

    static void a(wm wm1, String s, int i1, boolean flag, int j1, int k1)
    {
        wm1.a(s, i1, flag, j1, k1);
    }

    static void a(wm wm1, String s, boolean flag, boolean flag1)
    {
        wm1.a(s, flag, flag1);
    }

    private void a(xn xn, List list, boolean flag)
    {
        wp wp1 = new wp(this, flag, xn, list);
        c.a(wp1);
    }

    private void a(boolean flag)
    {
        int i1 = f;
        boolean flag1 = g;
        m = flag;
        xp xp1 = xo.a(a, null);
        if (xp1 == null)
        {
            return;
        }
        xq xq = null;
        if (i1 != -1)
        {
            xq = null;
            if (!flag1)
            {
                xq = xp1.a(i1);
            }
        }
        wq wq1 = new wq(this, flag, xq, xp1);
        c.a(wq1);
    }

    static boolean a(wm wm1, boolean flag)
    {
        wm1.i = flag;
        return flag;
    }

    static int b(wm wm1)
    {
        return wm1.h;
    }

    private static void b(String s)
    {
    }

    static void b(wm wm1, boolean flag)
    {
        wm1.a(flag);
    }

    static String c(wm wm1)
    {
        return wm1.e;
    }

    private void c()
    {
        ComponentName componentname = zk.a(b);
        if (componentname == null) goto _L2; else goto _L1
_L1:
        String s = componentname.getPackageName();
        int i1;
        acn acn1;
        acn1 = acq.f(s);
        i1 = acn1.b;
        boolean flag = acn1.c;
_L5:
        if (e != null || i1 < 0) goto _L4; else goto _L3
_L3:
        e = s;
        f = i1;
        g = flag;
        a(((String) (null)), -1, false, s, i1, flag);
_L2:
        return;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        i1 = -1;
_L7:
        zs.a("AppsMonitor", "unexpected exception", namenotfoundexception);
        flag = false;
          goto _L5
_L4:
        if (e == null || e.equals(s) || i1 < 0) goto _L2; else goto _L6
_L6:
        a(e, f, g, s, i1, flag);
        e = s;
        f = i1;
        g = flag;
        return;
        namenotfoundexception;
          goto _L7
    }

    static int d(wm wm1)
    {
        return wm1.f;
    }

    private void d()
    {
        int i1 = 0;
        String s = e;
        List list = b.getRunningAppProcesses();
        if (list != null && list.size() != 0)
        {
            int j1 = list.size();
            String as[] = new String[j1];
            int ai[] = new int[j1];
            Iterator iterator = list.iterator();
            int k1 = 0;
            while (iterator.hasNext()) 
            {
                android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)iterator.next();
                HashMap hashmap;
                List list1;
                boolean flag;
                xp xp1;
                wr wr1;
                boolean flag1;
                int ai1[];
                int ai2[];
                Integer integer;
                int l1;
                if (!c.b(runningappprocessinfo.uid))
                {
                    as[k1] = a(runningappprocessinfo);
                    ai[k1] = runningappprocessinfo.pid;
                    l1 = k1 + 1;
                } else
                {
                    l1 = k1;
                }
                k1 = l1;
            }
            if (k1 != 0)
            {
                hashmap = new HashMap();
                if (xc.c())
                {
                    ai1 = new int[k1];
                    System.arraycopy(ai, 0, ai1, 0, k1);
                    ai2 = zt.a(a, ai1);
                    while (i1 < k1) 
                    {
                        integer = (Integer)hashmap.get(as[i1]);
                        if (integer != null)
                        {
                            hashmap.put(as[i1], Integer.valueOf(integer.intValue() + ai2[i1]));
                        } else
                        {
                            hashmap.put(as[i1], Integer.valueOf(ai2[i1]));
                        }
                        i1++;
                    }
                }
                if (xc.f() && h == 4)
                {
                    list1 = xm.b();
                } else
                {
                    list1 = null;
                }
                flag = xc.d();
                xp1 = null;
                if (flag)
                {
                    flag1 = m;
                    xp1 = null;
                    if (!flag1)
                    {
                        xp1 = xo.a(a, null);
                        if (xp1 == null);
                    }
                }
                wr1 = new wr(this, hashmap, s, list1, xp1);
                c.a(wr1);
                return;
            }
        }
    }

    private void e()
    {
        zn zn1 = zm.a();
        if (zn1 == null)
        {
            return;
        } else
        {
            int i1 = zn1.a(n);
            int j1 = zt.a()[0] / 1024;
            c.a(i1, j1);
            n = zn1;
            return;
        }
    }

    static boolean e(wm wm1)
    {
        return wm1.g;
    }

    static boolean f(wm wm1)
    {
        return wm1.i;
    }

    static ws g(wm wm1)
    {
        return wm1.c;
    }

    public void a()
    {
        start();
    }

    public void b()
    {
        q = true;
        interrupt();
    }

    public void run()
    {
        h = zv.b(a);
        i = ((PowerManager)a.getSystemService("power")).isScreenOn();
        m = zu.a(a);
        n = zm.a();
        long l1 = SystemClock.uptimeMillis();
        j = l1;
        k = l1;
        l = l1;
        p = l1;
        IntentFilter intentfilter = new IntentFilter();
        if (d)
        {
            intentfilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        }
        intentfilter.addAction("android.intent.action.SCREEN_ON");
        intentfilter.addAction("android.intent.action.SCREEN_OFF");
        intentfilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
        intentfilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        a.registerReceiver(r, intentfilter);
        long l2 = 0L;
        do
        {
            if (q)
            {
                break;
            }
            long l3 = SystemClock.uptimeMillis();
            if (xc.b() && l3 > 0x493e0L + l)
            {
                e();
                l = l3;
            }
            if (i || l3 > 0x927c0L + j)
            {
                c();
                j = l3;
            }
            if (l3 > 0x927c0L + k)
            {
                d();
                if (xc.e() && e != null && !g)
                {
                    c.a(e, i);
                }
                try
                {
                    c.c();
                }
                catch (SQLiteException sqliteexception)
                {
                    zs.a("AppsMonitor", "unexpected exception", sqliteexception);
                }
                k = l3;
            }
            if (o != null)
            {
                long l4 = SystemClock.uptimeMillis();
                long l5 = l4 - l3;
                long l6 = l2 + l5;
                long l7 = l4 - l1;
                StringBuilder stringbuilder = new StringBuilder();
                stringbuilder.append("loop: ").append(l5);
                stringbuilder.append(", monitor: ").append(l6);
                stringbuilder.append(", total: ").append(l7);
                stringbuilder.append(", p: ").append((100D * (double)l6) / (double)l7);
                stringbuilder.append(", fg: ").append(0L);
                stringbuilder.append(", bg: ").append(0L);
                stringbuilder.append(", sys: ").append(0L);
                stringbuilder.append(", sync: ").append(0L);
                if (l3 > 0x36ee80L + p)
                {
                    InterruptedException interruptedexception;
                    try
                    {
                        o.write("time: ");
                        o.write(zo.a(System.currentTimeMillis()));
                        o.append(", data: ");
                        o.write(stringbuilder.toString());
                        o.write("\n");
                        o.flush();
                    }
                    catch (IOException ioexception) { }
                    p = l3;
                }
                l2 = l6;
            }
            try
            {
                Thread.sleep(3000L);
            }
            // Misplaced declaration of an exception variable
            catch (InterruptedException interruptedexception) { }
        } while (!q && !isInterrupted());
        a.unregisterReceiver(r);
    }
}
