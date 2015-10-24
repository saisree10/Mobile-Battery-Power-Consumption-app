// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.mode;

import acz;
import adc;
import add;
import aff;
import ahd;
import ahl;
import ahp;
import amg;
import amh;
import amk;
import amn;
import amo;
import amp;
import amr;
import ams;
import amt;
import amu;
import amv;
import amw;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import arr;
import auu;
import azf;
import azw;
import bal;
import java.util.ArrayList;
import ly;
import n;
import rc;

// Referenced classes of package com.dianxinos.powermanager.mode:
//            NewModeActivity

public class ModeMgrActivity extends rc
    implements adc, amk, amo, android.view.View.OnClickListener
{

    private boolean A;
    private boolean B;
    private aff C;
    private BroadcastReceiver D;
    private final int e = -1;
    private amv f;
    private int g;
    private int h;
    private LinearLayout i;
    private ArrayList j;
    private LayoutInflater k;
    private int l;
    private auu m;
    private int n;
    private amh o;
    private boolean p;
    private amp q;
    private boolean r;
    private arr s;
    private TextView t;
    private boolean u;
    private acz v;
    private add w;
    private boolean x;
    private int y;
    private amw z;

    public ModeMgrActivity()
    {
        f = new amv(this, null);
        g = 3;
        h = 0;
        r = false;
        y = -1;
        A = false;
        B = false;
        D = new amt(this);
    }

    private View a(int i1, String s1)
    {
        amn amn1 = new amn(getActivity());
        amn1.setTitle(s1);
        if (i1 >= 3)
        {
            amn1.setEditDelPanelVisiable(0);
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            if (s1.equals(getString(0x7f0a00b0)) && q.j())
            {
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                amn1.setSummary(getString(0x7f0a015a));
                amn1.setSummaryVisibility(0);
            }
        } else
        {
            amn1.setSummaryVisibility(0);
            amn1.setEditDelPanelVisiable(8);
            String s2 = q.d(i1);
            if (s2 != null && !s2.equals(""))
            {
                amn1.setSummary(q.d(i1));
            } else
            {
                amn1.setSummary("");
            }
        }
        if (i1 == h)
        {
            amn1.setSelected(true);
        }
        amn1.setOnActionListener(this);
        amn1.setOnClickListener(this);
        j.add(amn1);
        return amn1;
    }

    private View a(String s1, String s2, boolean flag)
    {
        LayoutInflater layoutinflater = k;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f030051, null);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        ((TextView)view.findViewById(0x7f070155)).setText(s1);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        TextView textview = (TextView)view.findViewById(0x7f070156);
        textview.setText(s2);
        if (flag)
        {
            Resources resources = getResources();
            com.dianxinos.dxbs.R.color _tmp3 = ly.c;
            textview.setTextColor(resources.getColor(0x7f090038));
        }
        return view;
    }

    public static auu a(ModeMgrActivity modemgractivity)
    {
        return modemgractivity.m;
    }

    private void a(int i1, boolean flag)
    {
        if (!flag)
        {
            int j1 = w.k;
            if (j1 != -1)
            {
                if (y == -1)
                {
                    y = j1;
                } else
                {
                    y = j1;
                    if (A && B)
                    {
                        if (z != null)
                        {
                            z.a();
                        }
                        z = new amw(this, null);
                        z.execute(new Void[0]);
                        A = false;
                        return;
                    }
                }
            }
        }
    }

    private void a(LinearLayout linearlayout, boolean flag)
    {
        ArrayList arraylist = o.d(n);
        int i1 = arraylist.size();
        int j1 = 0;
        while (j1 < i1) 
        {
            int k1 = amg.a(j1);
            if (o.a(k1).h())
            {
                String s4 = o.a(k1).c();
                String s5;
                boolean flag1;
                if (!flag || ((Integer)arraylist.get(k1)).intValue() == -1)
                {
                    if (k1 == 0 || k1 == 6 || k1 == 1)
                    {
                        s5 = o.a(k1).b();
                        flag1 = false;
                    } else
                    {
                        s5 = c(o.a(k1).g());
                        flag1 = false;
                    }
                } else
                {
                    int l1 = ((Integer)arraylist.get(k1)).intValue();
                    int i2 = o.a(k1).e(l1);
                    if (k1 == 0 || k1 == 1)
                    {
                        s5 = o.a(k1).b(i2);
                        flag1 = true;
                    } else
                    if (k1 == 6)
                    {
                        String s7 = o.a(k1).b(i2);
                        com.dianxinos.dxbs.R.string _tmp = ly.i;
                        String s1;
                        String s2;
                        StringBuilder stringbuilder;
                        String s3;
                        View view;
                        String s6;
                        StringBuilder stringbuilder1;
                        if (!s7.equalsIgnoreCase(getString(0x7f0a00e7)))
                        {
                            StringBuilder stringbuilder2 = new StringBuilder();
                            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                            s5 = stringbuilder2.append(getString(0x7f0a00f8)).append(s7).toString();
                            flag1 = true;
                        } else
                        {
                            s5 = s7;
                            flag1 = true;
                        }
                    } else
                    {
                        s6 = c(((Integer)arraylist.get(k1)).intValue());
                        stringbuilder1 = new StringBuilder();
                        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
                        s5 = stringbuilder1.append(getString(0x7f0a00f8)).append(s6).toString();
                        flag1 = true;
                    }
                }
                linearlayout.addView(a(s4, s5, flag1));
            }
            j1++;
        }
        if (n == 2 && u)
        {
            com.dianxinos.dxbs.R.string _tmp3 = ly.i;
            s1 = getString(0x7f0a0103);
            com.dianxinos.dxbs.R.string _tmp4 = ly.i;
            s2 = getString(0x7f0a00fa);
            if (flag)
            {
                stringbuilder = new StringBuilder();
                com.dianxinos.dxbs.R.string _tmp5 = ly.i;
                s3 = stringbuilder.append(getString(0x7f0a00f8)).append(s2).toString();
                if (o.a.a())
                {
                    view = a(s1, s3, false);
                } else
                {
                    view = a(s1, s3, true);
                }
            } else
            {
                if (!o.a.a())
                {
                    com.dianxinos.dxbs.R.string _tmp6 = ly.i;
                    s2 = getString(0x7f0a00f9);
                }
                view = a(s1, s2, false);
            }
            linearlayout.addView(view);
        }
    }

    public static void a(ModeMgrActivity modemgractivity, int i1)
    {
        modemgractivity.e(i1);
    }

    public static void a(ModeMgrActivity modemgractivity, int i1, boolean flag)
    {
        modemgractivity.a(i1, flag);
    }

    private void a(boolean flag)
    {
        if (m == null)
        {
            n n1 = getActivity();
            com.dianxinos.dxbs.R.layout _tmp = ly.g;
            m = new auu(n1, 0x7f030014);
        }
        auu auu1 = m;
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        ((TextView)(TextView)auu1.findViewById(0x7f070018)).setText(q.c(n));
        auu auu2 = m;
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        LinearLayout linearlayout = (LinearLayout)(LinearLayout)auu2.findViewById(0x7f070064);
        linearlayout.removeAllViews();
        a(linearlayout, flag);
        auu auu3 = m;
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        ((Button)(Button)auu3.findViewById(0x7f070066)).setOnClickListener(new amr(this));
        auu auu4 = m;
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        ((Button)(Button)auu4.findViewById(0x7f070065)).setOnClickListener(new ams(this));
        if (flag)
        {
            auu auu6 = m;
            com.dianxinos.dxbs.R.id _tmp5 = ly.f;
            auu6.findViewById(0x7f07005d).setVisibility(0);
        } else
        {
            auu auu5 = m;
            com.dianxinos.dxbs.R.id _tmp6 = ly.f;
            auu5.findViewById(0x7f07005d).setVisibility(8);
        }
        m.show();
    }

    public static boolean a(ModeMgrActivity modemgractivity, boolean flag)
    {
        modemgractivity.A = flag;
        return flag;
    }

    public static int b(ModeMgrActivity modemgractivity)
    {
        return modemgractivity.n;
    }

    public static int b(ModeMgrActivity modemgractivity, int i1)
    {
        modemgractivity.h = i1;
        return i1;
    }

    private void b(int i1)
    {
        if (o.a(i1, 0))
        {
            int j1 = ((Integer)o.e().get(0)).intValue();
            String s1;
            Object obj;
            if (getActivity().getParent() == null)
            {
                obj = getActivity();
            } else
            {
                obj = getActivity().getParent();
            }
            ahl.a(((Activity) (obj)).getWindow(), j1);
        }
        p = false;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        s1 = getString(0x7f0a00f4);
        Toast.makeText(getActivity(), s1, 0).show();
    }

    public static boolean b(ModeMgrActivity modemgractivity, boolean flag)
    {
        modemgractivity.B = flag;
        return flag;
    }

    public static amp c(ModeMgrActivity modemgractivity)
    {
        return modemgractivity.q;
    }

    private String c(int i1)
    {
        if (i1 == 1)
        {
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            return getString(0x7f0a00f9);
        } else
        {
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            return getString(0x7f0a00fa);
        }
    }

    public static void c(ModeMgrActivity modemgractivity, int i1)
    {
        modemgractivity.f(i1);
    }

    public static ArrayList d(ModeMgrActivity modemgractivity)
    {
        return modemgractivity.j;
    }

    private boolean d(int i1)
    {
        boolean flag = s.i();
        boolean flag1 = s.l();
        if (flag || flag1)
        {
            int j1 = q.g(s.k());
            int k1 = q.g(s.h(h));
            if (flag && (j1 == i1 || k1 == i1))
            {
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                String s2 = getString(0x7f0a014a);
                Toast.makeText(getActivity(), s2, 0).show();
                return true;
            }
            int l1 = q.g(s.m());
            int i2 = q.g(s.f(h));
            if (flag1 && (l1 == i1 || i2 == i1))
            {
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                String s1 = getString(0x7f0a014a);
                Toast.makeText(getActivity(), s1, 0).show();
                return true;
            }
        }
        return false;
    }

    public static int e(ModeMgrActivity modemgractivity)
    {
        return modemgractivity.h;
    }

    private void e(int i1)
    {
        ((amn)j.get(h)).setSelected(false);
        ((amn)j.get(i1)).setSelected(true);
        h = i1;
        q.a(h);
        o.a(p);
        o.c(h);
        b(i1);
    }

    public static aff f(ModeMgrActivity modemgractivity)
    {
        return modemgractivity.C;
    }

    private void f()
    {
        for (int i1 = 0; i1 < g; i1++)
        {
            View view1 = a(i1, q.c(i1));
            i.addView(view1);
            i.addView(h());
        }

        View view = g();
        i.addView(view);
        i.addView(i());
    }

    private void f(int i1)
    {
        if (q.h(i1) == 3)
        {
            q.k();
        }
        if (h > i1)
        {
            h = -1 + h;
            q.a(h);
        }
        j.remove(i1);
        i.removeViewAt(i1 * 2);
        i.removeViewAt(i1 * 2);
        q.b(i1);
        g = -1 + g;
    }

    private View g()
    {
        amn amn1 = new amn(getActivity());
        amn1.setTag("addNew");
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        amn1.setIcon(0x7f02000c);
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        amn1.setTitle(getString(0x7f0a00b8));
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        amn1.setSummary(getString(0x7f0a00b9));
        amn1.setOnClickListener(this);
        return amn1;
    }

    public static boolean g(ModeMgrActivity modemgractivity)
    {
        return modemgractivity.x;
    }

    public static add h(ModeMgrActivity modemgractivity)
    {
        return modemgractivity.w;
    }

    private View h()
    {
        ImageView imageview = new ImageView(getActivity());
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        imageview.setBackgroundResource(0x7f0203bf);
        imageview.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -2));
        return imageview;
    }

    public static int i(ModeMgrActivity modemgractivity)
    {
        return modemgractivity.l;
    }

    private View i()
    {
        ImageView imageview = new ImageView(getActivity());
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        imageview.setBackgroundResource(0x7f0201ca);
        Resources resources = getActivity().getResources();
        com.dianxinos.dxbs.R.dimen _tmp1 = ly.d;
        imageview.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, resources.getDimensionPixelSize(0x7f08010b)));
        return imageview;
    }

    private void j()
    {
        o.g();
        o.c(h);
        if (!o.h())
        {
            p = true;
            return;
        } else
        {
            p = false;
            return;
        }
    }

    private void k()
    {
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("com.dianxinos.dxbs.MODECHANGE");
        getActivity().registerReceiver(D, intentfilter);
    }

    public void a(int i1, int j1)
    {
        Intent intent = new Intent(getActivity(), com/dianxinos/powermanager/mode/NewModeActivity);
        Bundle bundle = new Bundle();
        bundle.putInt("index", i1);
        bundle.putInt("counts", g);
        if (j1 == 1)
        {
            intent.putExtra("isadd", true);
        }
        intent.putExtras(bundle);
        startActivityForResult(intent, j1);
    }

    public void a(add add1)
    {
        w = add1;
        if (add1.i)
        {
            B = add1.i;
        }
        x = add1.l;
        f.sendEmptyMessage(1);
    }

    public void a(amn amn1, int i1)
    {
        int j1 = 3;
_L7:
        if (j1 >= g) goto _L2; else goto _L1
_L1:
        if (amn1 != j.get(j1))
        {
            break MISSING_BLOCK_LABEL_183;
        }
        if (i1 != amn.a) goto _L4; else goto _L3
_L3:
        a(j1, 2);
_L2:
        return;
_L4:
        if (i1 != amn.b)
        {
            break MISSING_BLOCK_LABEL_183;
        }
        if (h == j1)
        {
            ly.i;
            String s1 = getString(0x7f0a0105);
            Toast.makeText(getActivity(), s1, 0).show();
            return;
        }
        if (d(j1)) goto _L2; else goto _L5
_L5:
        l = j1;
        auu auu1 = new auu(getActivity());
        bal.a(getActivity(), "mode", "cdelete", Integer.valueOf(1));
        ly.i;
        auu1.setTitle(0x7f0a00f0);
        ly.i;
        auu1.c(0x7f0a00f1);
        ly.i;
        auu1.a(0x7f0a00d2, new amu(this));
        ly.i;
        auu1.b(0x7f0a00d3, null);
        auu1.show();
        j1++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public boolean a()
    {
        Activity activity = getActivity().getParent();
        if (activity != null)
        {
            activity.onBackPressed();
        } else
        {
            super.a();
        }
        return true;
    }

    public void b()
    {
        if (!p)
        {
            p = true;
            f.sendEmptyMessage(2);
        }
    }

    public void c()
    {
        if (p)
        {
            p = false;
            f.sendEmptyMessage(3);
        }
    }

    public void onActivityResult(int i1, int j1, Intent intent)
    {
        if (i1 != 1) goto _L2; else goto _L1
_L1:
        if (r)
        {
            e(n);
            r = false;
        }
        j1;
        JVM INSTR tableswitch -1 -1: default 44
    //                   -1 45;
           goto _L3 _L4
_L3:
        return;
_L4:
        String s2 = intent.getExtras().getString("ModeName");
        View view = a(g, s2);
        i.addView(view, 2 * g);
        i.addView(h(), 1 + 2 * g);
        q.a(s2);
        g = 1 + g;
        return;
_L2:
        if (i1 == 2)
        {
            Bundle bundle;
            switch (j1)
            {
            default:
                return;

            case -1: 
                bundle = intent.getExtras();
                break;
            }
            String s1 = bundle.getString("ModeName");
            int k1 = bundle.getInt("index");
            boolean flag = bundle.getBoolean("settings_changed", false);
            if (flag && q.h(k1) == 3)
            {
                q.k();
                if (t != null)
                {
                    t.setVisibility(8);
                }
            }
            if (!q.c(h).equalsIgnoreCase(s1))
            {
                q.f(-1);
            }
            q.a(k1, s1);
            ((amn)j.get(k1)).setTitle(s1);
            if (k1 == h && flag)
            {
                A = true;
                o.a(p);
                o.c(h);
                b(h);
                return;
            }
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public void onClick(View view)
    {
        String s1 = (String)view.getTag();
        if (s1 != null && s1.equals("addNew"))
        {
            a(g, 1);
            bal.a(getActivity(), "mode", "add", Integer.valueOf(1));
        } else
        {
            int i1 = 0;
            while (i1 < g) 
            {
                if (view == j.get(i1))
                {
                    n = i1;
                    if (h != i1)
                    {
                        a(true);
                    } else
                    {
                        a(false);
                    }
                }
                i1++;
            }
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        d = layoutinflater.inflate(0x7f03004e, viewgroup, false);
        v = acz.a(getActivity());
        boolean flag = azw.i;
        boolean flag1 = false;
        if (flag)
        {
            boolean flag2 = azf.b(getActivity());
            flag1 = false;
            if (flag2)
            {
                boolean flag3 = azf.n();
                flag1 = false;
                if (!flag3)
                {
                    flag1 = true;
                }
            }
        }
        u = flag1;
        q = amp.a(getActivity());
        j = new ArrayList();
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        i = (LinearLayout)a(0x7f07014f);
        g = q.a();
        h = q.b();
        k = LayoutInflater.from(getActivity());
        f();
        o = q.g();
        o.a(this);
        s = arr.a(getActivity());
        C = aff.a(getActivity().getApplicationContext());
        k();
        return d;
    }

    public void onDestroy()
    {
        try
        {
            getActivity().unregisterReceiver(D);
        }
        catch (Exception exception) { }
        o.a(null);
        super.onDestroy();
    }

    public void onPause()
    {
        super.onPause();
        if (z != null && z.getStatus() == android.os.AsyncTask.Status.RUNNING)
        {
            z.a();
        }
        v.b(this);
        f.removeMessages(1);
    }

    public void onResume()
    {
        y = -1;
        v.a(this);
        j();
        o.k();
        if (q.a() > g)
        {
            i.removeAllViews();
            j.clear();
            g = q.a();
            f();
        }
        super.onResume();
    }

    public void startActivityForResult(Intent intent, int i1)
    {
        super.startActivityForResult(intent, i1);
        Activity activity = getActivity().getParent();
        com.dianxinos.dxbs.R.anim _tmp = ly.a;
        com.dianxinos.dxbs.R.anim _tmp1 = ly.a;
        activity.overridePendingTransition(0x7f040006, 0x7f040007);
    }
}
