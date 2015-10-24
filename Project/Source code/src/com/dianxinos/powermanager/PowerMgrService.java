// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import aaa;
import aap;
import aaq;
import aar;
import abg;
import abh;
import abi;
import abj;
import abk;
import abl;
import acc;
import acx;
import acz;
import adc;
import add;
import adf;
import aff;
import afh;
import afi;
import ago;
import agw;
import ahd;
import ahp;
import aio;
import amb;
import amc;
import amd;
import amh;
import amp;
import amq;
import android.app.Notification;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import android.os.PowerManager;
import apb;
import arr;
import ass;
import atm;
import aty;
import azf;
import azr;
import azt;
import azy;
import bal;
import bao;
import com.dianxinos.common.coins.CoinManager;
import java.util.Timer;
import java.util.TimerTask;
import ly;

public class PowerMgrService extends Service
    implements adc, amc, amd
{

    private static String u;
    private afi A;
    private aio B;
    private abl C;
    private abk D;
    private aff E;
    private Timer F;
    private TimerTask G;
    private aap H;
    private aaq I;
    private agw J;
    private CoinManager K;
    private BroadcastReceiver L;
    public atm a;
    private boolean b;
    private final int c = 10000;
    private Timer d;
    private arr e;
    private ass f;
    private amb g;
    private PowerManager h;
    private boolean i;
    private boolean j[] = {
        1, 1
    };
    private acz k;
    private aty l;
    private amp m;
    private amh n;
    private aar o;
    private boolean p;
    private int q;
    private int r;
    private int s;
    private int t;
    private boolean v;
    private int w;
    private String x;
    private aaa y;
    private Timer z;

    public PowerMgrService()
    {
        b = false;
        i = false;
        w = -1000;
        z = null;
        F = new Timer();
        G = new abg(this);
        J = new agw();
        L = new abi(this);
    }

    private void a(Context context)
    {
        if (e.b())
        {
            boolean aflag[] = e.d();
            ahp ahp1 = n.a(4);
            if (ahp1.a() != aflag[0])
            {
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                apb.a(context, ahp1, context.getString(0x7f0a019d));
            }
            ahp ahp2 = n.a(2);
            if (ahp2.a() != aflag[1] && ahp2.h())
            {
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                apb.a(context, ahp2, context.getString(0x7f0a0197));
                return;
            }
        }
    }

    public static void a(PowerMgrService powermgrservice, Context context)
    {
        powermgrservice.a(context);
    }

    public static boolean a(PowerMgrService powermgrservice)
    {
        return powermgrservice.v;
    }

    public static boolean a(PowerMgrService powermgrservice, String s1)
    {
        return powermgrservice.a(s1);
    }

    public static boolean a(PowerMgrService powermgrservice, boolean flag)
    {
        powermgrservice.b = flag;
        return flag;
    }

    private boolean a(String s1)
    {
        boolean flag = true;
        if (i)
        {
            flag = false;
        } else
        {
            if ("android.intent.action.SCREEN_ON".equalsIgnoreCase(s1) && h != null && h.isScreenOn())
            {
                boolean aflag1[] = j;
                boolean flag3;
                if (!j[0])
                {
                    flag3 = flag;
                } else
                {
                    flag3 = false;
                }
                aflag1[0] = flag3;
                return flag;
            }
            if ("android.intent.action.SCREEN_OFF".equalsIgnoreCase(s1) && h != null && !h.isScreenOn())
            {
                boolean aflag[] = j;
                boolean flag1 = j[flag];
                boolean flag2 = false;
                if (!flag1)
                {
                    flag2 = flag;
                }
                aflag[flag] = flag2;
                return flag;
            }
            if (!"android.intent.action.USER_PRESENT".equalsIgnoreCase(s1) || h == null || !h.isScreenOn() || (!j[0] || !j[flag]) && (j[0] || j[flag]))
            {
                i = flag;
                return false;
            }
        }
        return flag;
    }

    public static aff b(PowerMgrService powermgrservice)
    {
        return powermgrservice.E;
    }

    private void b()
    {
        if (e.c())
        {
            aaa.a(this).a(400, false);
        }
    }

    private void c()
    {
        if (!e.b())
        {
            return;
        }
        ahp ahp1 = n.a(4);
        boolean flag = ahp1.a();
        if (flag)
        {
            apb.a(getApplicationContext(), ahp1, null);
        }
        ahp ahp2 = n.a(2);
        boolean flag1 = ahp2.a();
        if (flag1)
        {
            apb.a(getApplicationContext(), ahp2, null);
        }
        e.a(flag, flag1);
    }

    public static void c(PowerMgrService powermgrservice)
    {
        powermgrservice.e();
    }

    public static aaa d(PowerMgrService powermgrservice)
    {
        return powermgrservice.y;
    }

    private void d()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        if (d != null)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        flag = b;
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        d = new Timer();
        d.schedule(new abj(this), 10000L);
          goto _L1
        Exception exception;
        exception;
        throw exception;
        if (b && !e.a())
        {
            a(this);
            b();
            b = false;
        }
        d.cancel();
        d = null;
          goto _L1
    }

    public static abk e(PowerMgrService powermgrservice)
    {
        return powermgrservice.D;
    }

    private void e()
    {
        if (!azf.o())
        {
            stopForeground(false);
        }
        azy.a(this);
    }

    public static arr f(PowerMgrService powermgrservice)
    {
        return powermgrservice.e;
    }

    private void f()
    {
        boolean flag;
        if (m.b() == amq.d(2))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            boolean flag1 = n.l().a();
            boolean flag2 = n.a(2).a();
            if (flag1 && !flag2)
            {
                acc.a(this).a();
            }
        }
    }

    public static boolean g(PowerMgrService powermgrservice)
    {
        return powermgrservice.b;
    }

    public static void h(PowerMgrService powermgrservice)
    {
        powermgrservice.b();
    }

    public static void i(PowerMgrService powermgrservice)
    {
        powermgrservice.d();
    }

    public static void j(PowerMgrService powermgrservice)
    {
        powermgrservice.c();
    }

    public void a()
    {
        m = amp.a(this);
        n = m.g();
        o = aar.a(this);
        k = acz.a(this);
        l = aty.a(this);
        l.a();
        y = aaa.a(this);
        g = amb.a(this);
        g.a(this);
        a(g.h(), g.i());
        g.a(this);
        v = g.a();
        azr azr1 = azr.a(this);
        if (!azr1.a() && azr1.d() <= 20)
        {
            amb.a(this).p();
        }
        b(v, g.b());
        E = aff.a(getApplicationContext());
        k.a(this);
        a = atm.a(this);
        k.a(a);
        H = aap.a(this);
        k.a(H);
        f = ass.a(getApplicationContext());
        k.a(f);
        A = new afi(this);
        k.a(A);
        B = aio.a(this);
        k.a(B);
        I = aaq.a(this);
        k.a(I);
        k.a(ago.a(getApplicationContext()));
        long l1 = atm.a(this).a();
        C = new abl(this, null);
        C.a(l1 + 10000L, 0x927c0L);
        C.start();
        f();
        F.schedule(G, 10000L, 0xa4cb80L);
        e = arr.a(this);
    }

    public void a(add add1)
    {
        w = add1.j;
        r = add1.k;
        s = E.f().c();
        q = add1.a;
        t = add1.g;
        int i1 = E.e();
        boolean flag;
        if (E.g() && i1 != 100 && i1 != 103)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        p = flag;
        if (v)
        {
            boolean flag1 = n.l().a();
            boolean flag2 = n.a(2).a();
            boolean flag3 = n.a(4).a();
            o.a(flag1, flag2, flag3);
            int j1;
            if (p)
            {
                j1 = s;
            } else
            {
                j1 = r;
            }
            o.a(q, w, j1, m.e(), b(add1), t);
        }
        bal.f(this);
        adf.a(this).a(add1);
    }

    public void a(boolean flag, int i1)
    {
        if (flag)
        {
            long l1 = 60000 * i1;
            z = new Timer();
            z.schedule(new abh(this), 1000L, l1);
        } else
        if (z != null)
        {
            z.cancel();
            return;
        }
    }

    public String b(add add1)
    {
        if (add1.g <= 0)
        {
            x = "";
        } else
        {
            String as[] = bao.a(this, add1.g);
            x = (new StringBuilder()).append(as[0]).append(as[1]).toString();
        }
        if (add1.f > 0)
        {
            if (add1.g > 0)
            {
                x = (new StringBuilder()).append(x).append(" / ").toString();
            }
            x = (new StringBuilder()).append(x).append((float)add1.f / 1000F).append(u).toString();
        }
        return x;
    }

    public void b(boolean flag, int i1)
    {
        v = flag;
        o.a(i1);
        if (flag)
        {
            boolean flag1 = n.l().a();
            boolean flag2 = n.a(2).a();
            boolean flag3 = n.a(4).a();
            o.a(flag1, flag2, flag3);
            int j1;
            if (p)
            {
                j1 = s;
            } else
            {
                j1 = r;
            }
            if (w == -1000)
            {
                w = acx.a(getApplicationContext()).a();
            }
            o.a(q, w, j1, m.e(), x, t);
            return;
        } else
        {
            o.a();
            return;
        }
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        azt.b("PowerMgrService", "create PowerMgrService... ");
        K = CoinManager.a(getApplicationContext());
        CoinManager.a(this, J);
        if (!azf.o())
        {
            startForeground(101, new Notification());
        }
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("com.dianxinos.dxbs.KILLSELF");
        intentfilter.addAction("com.dianxinos.dxbs.ABORTKILL");
        intentfilter.addAction("android.intent.action.USER_PRESENT");
        intentfilter.addAction("android.intent.action.SCREEN_ON");
        intentfilter.addAction("android.intent.action.SCREEN_OFF");
        registerReceiver(L, intentfilter);
        try
        {
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            u = getString(0x7f0a0363);
        }
        catch (Exception exception)
        {
            u = "";
        }
        D = new abk(this, null);
        a();
        h = (PowerManager)getSystemService("power");
    }

    public void onDestroy()
    {
        g.a(null);
        g.a(null);
        l.b();
        C.a();
        CoinManager.b(this, J);
        try
        {
            unregisterReceiver(L);
        }
        catch (Exception exception) { }
        f.b();
        k.b(A);
        k.b(f);
        k.b(a);
        k.b(B);
        k.b(this);
        k.b(I);
        if (d != null)
        {
            d.cancel();
            d = null;
        }
        super.onDestroy();
    }
}
