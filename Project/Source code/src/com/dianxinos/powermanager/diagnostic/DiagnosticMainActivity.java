// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.diagnostic;

import aao;
import aaq;
import acz;
import adc;
import add;
import aff;
import afh;
import ait;
import aiu;
import aiv;
import aiw;
import aix;
import aiy;
import aje;
import ajf;
import ajg;
import ajh;
import aji;
import ajj;
import ajk;
import ajm;
import ajn;
import ajo;
import ajq;
import ajr;
import ajs;
import ajt;
import aju;
import ajv;
import akx;
import amb;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import awg;
import ayv;
import azf;
import azr;
import azz;
import bag;
import bal;
import com.dianxinos.powermanager.PowerMgrTabActivity;
import com.dianxinos.powermanager.ui.DxBatteryGraph;
import com.dianxinos.powermanager.ui.MainTitle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ly;

// Referenced classes of package com.dianxinos.powermanager.diagnostic:
//            DiagnosticDetail, DiagnosticTitle, StateButton

public class DiagnosticMainActivity extends aao
    implements adc, android.view.View.OnClickListener
{

    private static int d = 0;
    private akx A;
    private int B;
    private volatile boolean C;
    private int D;
    private int E;
    private int F;
    private aff G;
    private azr H;
    private aje I;
    private amb J;
    private aji K;
    private boolean L;
    private azz M;
    private awg N;
    private Handler O;
    private boolean a;
    private boolean b;
    private int c;
    private int e;
    private int f;
    private int g;
    private boolean h;
    private acz i;
    private DxBatteryGraph j;
    private ProgressBar k;
    private DiagnosticDetail l;
    private DiagnosticTitle m;
    private LayoutInflater n;
    private List o;
    private List p;
    private List q;
    private List r;
    private List s;
    private List t;
    private StateButton u;
    private LinearLayout v;
    private LinearLayout w;
    private LinearLayout x;
    private LinearLayout y;
    private LinearLayout z;

    public DiagnosticMainActivity()
    {
        c = -1;
        e = 1;
        f = 0;
        g = 0;
        h = false;
        o = new ArrayList();
        p = new ArrayList();
        q = new ArrayList();
        r = new ArrayList();
        s = new ArrayList();
        t = new ArrayList();
        E = -1;
        K = new aji(this, null);
        L = false;
        O = new ajf(this);
    }

    public static LinearLayout A(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.w;
    }

    public static azr B(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.H;
    }

    public static List C(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.q;
    }

    public static int a()
    {
        return d;
    }

    public static int a(DiagnosticMainActivity diagnosticmainactivity, int i1)
    {
        diagnosticmainactivity.e = i1;
        return i1;
    }

    public static int a(DiagnosticMainActivity diagnosticmainactivity, List list)
    {
        return diagnosticmainactivity.a(list);
    }

    private int a(List list)
    {
        Iterator iterator = list.iterator();
        int i1 = 0;
        while (iterator.hasNext()) 
        {
            int j1;
            if (((ajk)iterator.next()).l())
            {
                j1 = i1 + 1;
            } else
            {
                j1 = i1;
            }
            i1 = j1;
        }
        return i1;
    }

    public static awg a(DiagnosticMainActivity diagnosticmainactivity, awg awg1)
    {
        diagnosticmainactivity.N = awg1;
        return awg1;
    }

    public static void a(DiagnosticMainActivity diagnosticmainactivity, add add1)
    {
        diagnosticmainactivity.b(add1);
    }

    private void a(List list, boolean flag)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext(); ((ajk)iterator.next()).a(flag)) { }
    }

    private void a(boolean flag)
    {
        a(o, flag);
        a(p, flag);
        a(q, flag);
        a(r, flag);
        a(s, flag);
        a(t, flag);
    }

    public static boolean a(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.h;
    }

    public static boolean a(DiagnosticMainActivity diagnosticmainactivity, boolean flag)
    {
        diagnosticmainactivity.C = flag;
        return flag;
    }

    public static int b(DiagnosticMainActivity diagnosticmainactivity, int i1)
    {
        int j1 = i1 + diagnosticmainactivity.g;
        diagnosticmainactivity.g = j1;
        return j1;
    }

    public static DiagnosticDetail b(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.l;
    }

    private void b()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        j = (DxBatteryGraph)findViewById(0x7f0700b9);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        k = (ProgressBar)findViewById(0x7f0700bb);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        l = (DiagnosticDetail)findViewById(0x7f0700ba);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        m = (DiagnosticTitle)findViewById(0x7f0700bc);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        u = (StateButton)findViewById(0x7f0700bd);
        StateButton statebutton = u;
        com.dianxinos.dxbs.R.string _tmp5 = ly.i;
        statebutton.setText(0x7f0a0313);
        u.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        v = (LinearLayout)findViewById(0x7f0700c0);
        com.dianxinos.dxbs.R.id _tmp7 = ly.f;
        w = (LinearLayout)findViewById(0x7f0700c2);
        com.dianxinos.dxbs.R.id _tmp8 = ly.f;
        x = (LinearLayout)findViewById(0x7f0700c5);
        com.dianxinos.dxbs.R.id _tmp9 = ly.f;
        y = (LinearLayout)findViewById(0x7f0700c8);
        com.dianxinos.dxbs.R.id _tmp10 = ly.f;
        z = (LinearLayout)findViewById(0x7f0700ce);
        o.add(new ajn(this, O, v));
        o.add(new aiu(this, O, v));
        o.add(new ajo(this, O, v));
        o.add(new ajv(this, O, v, true));
        o.add(new aix(this, O, v, true));
        if (H.h())
        {
            q.add(new ait(this, O, x));
            q.add(new ajt(this, O, x));
        }
        if (b)
        {
            r.add(new aiy(this, O, y));
        }
        r.add(new ajs(this, O, y));
        r.add(new aju(this, O, y));
        r.add(new aiv(this, O, y));
        t.add(new ajq(this, O, z));
        t.add(new ajr(this, O, z));
        t.add(new ajv(this, O, z, false));
        t.add(new aix(this, O, z, false));
        t.add(new ajm(this, O, z));
        t.add(new aiw(this, O, z));
        n = LayoutInflater.from(this);
        if (a)
        {
            y.setVisibility(0);
            return;
        } else
        {
            y.setVisibility(8);
            return;
        }
    }

    private void b(add add1)
    {
        int i1 = G.f().c();
        if (i1 > 0)
        {
            F = i1;
        }
        boolean flag;
        int j1;
        if (G == null)
        {
            flag = add1.l;
        } else
        if (add1.l && G.e() != 100 && G.e() != 103)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j1 = acz.a(add1.j);
        j.a(add1.j, flag, j1);
        if (j1 != c)
        {
            int k1 = acz.a(this, j1);
            c = j1;
            j.a(k1);
        }
        if (B == 0)
        {
            B = add1.k;
        }
        if (E == -1)
        {
            E = add1.a;
        }
        if (C || add1.a != E)
        {
            D = add1.k - B;
            O.sendEmptyMessage(15);
            C = false;
        }
        E = add1.a;
    }

    public static void b(DiagnosticMainActivity diagnosticmainactivity, boolean flag)
    {
        diagnosticmainactivity.a(flag);
    }

    public static LayoutInflater c(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.n;
    }

    private void c()
    {
        f();
        u.setEnabled(false);
        a(false);
        K.a(true);
        ayv.a(K);
    }

    public static boolean c(DiagnosticMainActivity diagnosticmainactivity, boolean flag)
    {
        diagnosticmainactivity.L = flag;
        return flag;
    }

    public static int d(DiagnosticMainActivity diagnosticmainactivity)
    {
        int i1 = diagnosticmainactivity.f;
        diagnosticmainactivity.f = i1 + 1;
        return i1;
    }

    private void d()
    {
        J.c(D);
        startActivity(new Intent(this, com/dianxinos/powermanager/PowerMgrTabActivity));
        finish();
    }

    public static int e(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.f;
    }

    private void e()
    {
        f();
        f = 0;
        k.setMax(o.size() + p.size() + q.size() + r.size() + s.size() + t.size() + d);
        k.setProgress(f + d);
        k.setVisibility(0);
        m.setVisibility(8);
        e = 1;
        u.setState(1);
        K.a(false);
        ayv.a(K, 200L);
    }

    public static ProgressBar f(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.k;
    }

    private void f()
    {
        g = 0;
        if (!a)
        {
            g = 3 + g;
            g = 2 + g;
            g = 5 + g;
            g = 5 + g;
        } else
        if (!b)
        {
            g = 3 + g;
            return;
        }
    }

    public static List g(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.t;
    }

    private void g()
    {
        f = 0;
        k.setMax(o.size() + d);
        k.setProgress(f + d);
        k.setVisibility(0);
        m.setVisibility(8);
        a(false);
        e = 3;
        l.setState(5);
        u.setState(3);
        h();
    }

    public static StateButton h(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.u;
    }

    private void h()
    {
        ayv.a(new ajh(this));
    }

    private int i()
    {
        f();
        for (Iterator iterator = o.iterator(); iterator.hasNext();)
        {
            ajk ajk4 = (ajk)iterator.next();
            g = g + ajk4.k();
        }

        for (Iterator iterator1 = r.iterator(); iterator1.hasNext();)
        {
            ajk ajk3 = (ajk)iterator1.next();
            g = g + ajk3.k();
        }

        for (Iterator iterator2 = s.iterator(); iterator2.hasNext();)
        {
            ajk ajk2 = (ajk)iterator2.next();
            g = g + ajk2.k();
        }

        for (Iterator iterator3 = t.iterator(); iterator3.hasNext();)
        {
            ajk ajk1 = (ajk)iterator3.next();
            g = g + ajk1.k();
        }

        int i1 = ajj.b(g);
        if (i1 >= 3)
        {
            ajj.a(this, 3);
        }
        return i1;
    }

    public static int i(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.i();
    }

    public static List j(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.o;
    }

    public static List k(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.r;
    }

    public static List l(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.s;
    }

    public static boolean m(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.a;
    }

    public static int n(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.e;
    }

    public static acz o(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.i;
    }

    public static DiagnosticTitle p(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.m;
    }

    public static int q(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.g;
    }

    public static int r(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.F;
    }

    public static int s(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.D;
    }

    public static boolean t(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.L;
    }

    public static azz u(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.M;
    }

    public static awg v(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.N;
    }

    public static void w(DiagnosticMainActivity diagnosticmainactivity)
    {
        diagnosticmainactivity.d();
    }

    public static aje x(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.I;
    }

    public static List y(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.p;
    }

    public static Handler z(DiagnosticMainActivity diagnosticmainactivity)
    {
        return diagnosticmainactivity.O;
    }

    public void a(add add1)
    {
        Message message = new Message();
        message.what = 21;
        message.obj = add1;
        O.sendMessage(message);
    }

    public void onBackPressed()
    {
        J.c(D);
        finish();
    }

    public void onClick(View view)
    {
        if (view == u)
        {
            int i1 = u.getSate();
            if (i1 == 1)
            {
                h = true;
                d();
            } else
            {
                if (i1 == 4)
                {
                    ajj.b(this);
                    bal.a(this, "home", "finopt", Integer.valueOf(1));
                    d();
                    return;
                }
                if (i1 == 2)
                {
                    L = true;
                    bal.a(this, "home", "coptn", Integer.valueOf(1));
                    g();
                    return;
                }
            }
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        H = azr.a(this);
        I = aje.a(this);
        J = amb.a(this);
        Intent intent = getIntent();
        if (intent != null && aaq.getName().equalsIgnoreCase(intent.getStringExtra("from_where")))
        {
            bal.a(this, "birc", "lbnc", Integer.valueOf(1));
        }
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030031);
        B = 0;
        if (azf.b && !azf.l())
        {
            d = 6;
        }
        i = acz.a(this);
        G = aff.a(getApplicationContext());
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        MainTitle maintitle = (MainTitle)findViewById(0x7f070007);
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        maintitle.setTitleText(0x7f0a023e);
        maintitle.a();
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        maintitle.setLeftButtonIcon(0x7f020450);
        maintitle.setLeftButtonOnclickListener(new ajg(this));
        A = akx.a(this);
        a = A.b();
        b = bag.a(getApplicationContext());
        b();
        e();
        M = azz.a(this);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        if (K != null)
        {
            K.a();
        }
        if (N != null)
        {
            N.dismiss();
        }
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        if (i1 == 82)
        {
            return true;
        } else
        {
            return super.onKeyDown(i1, keyevent);
        }
    }

    protected void onPause()
    {
        super.onPause();
        i.b(this);
    }

    protected void onResume()
    {
        super.onResume();
        i.a(this);
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        if (flag && (e == 2 || e == 4 || e == 5))
        {
            c();
        }
    }

}
