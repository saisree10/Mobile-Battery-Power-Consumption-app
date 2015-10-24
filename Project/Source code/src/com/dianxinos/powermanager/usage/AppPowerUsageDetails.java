// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.usage;

import aao;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import atg;
import ath;
import ati;
import atm;
import ato;
import atr;
import ats;
import atu;
import atx;
import awc;
import axv;
import axw;
import axx;
import ayl;
import ayu;
import azf;
import azq;
import azt;
import azy;
import com.dianxinos.powermanager.ui.MainTitle;
import iq;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import ly;

// Referenced classes of package com.dianxinos.powermanager.usage:
//            MonitorTitleView

public class AppPowerUsageDetails extends aao
    implements ayu
{

    private String a;
    private LayoutInflater b;
    private String c;
    private MainTitle d;
    private MonitorTitleView e;
    private ViewGroup f;
    private MonitorTitleView g;
    private ViewGroup h;
    private MonitorTitleView i;
    private ViewGroup j;
    private MonitorTitleView k;
    private ViewGroup l;
    private MonitorTitleView m;
    private ViewGroup n;
    private Button o;
    private boolean p;
    private double q;
    private boolean r;
    private double s;

    public AppPowerUsageDetails()
    {
    }

    private double a(double d1)
    {
        if (r)
        {
            return d1 + (d1 / (100D - s)) * s;
        } else
        {
            return d1 * q;
        }
    }

    private View a(ViewGroup viewgroup, String s1, int i1)
    {
        LayoutInflater layoutinflater = b;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f03005e, null);
        viewgroup.addView(view);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        ((TextView)view.findViewById(0x7f07018b)).setText(i1);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        ((TextView)view.findViewById(0x7f070156)).setText(s1);
        return view;
    }

    public static String a(AppPowerUsageDetails apppowerusagedetails)
    {
        return apppowerusagedetails.c;
    }

    private void a()
    {
        Intent intent = getIntent();
        boolean flag = intent.getBooleanExtra("recent", false);
        int i1 = intent.getIntExtra("position", 0);
        double d1 = intent.getDoubleExtra("bar_percent", 0.0D);
        q = intent.getDoubleExtra("growth_rate", 1.0D);
        r = intent.getBooleanExtra("only_has_system", false);
        s = intent.getDoubleExtra("commu_module_percent", 0.0D);
        boolean flag1 = intent.getBooleanExtra("bg", false);
        Resources resources = getResources();
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        a = resources.getString(0x7f0a006c);
        b = LayoutInflater.from(this);
        ats ats1;
        double d2;
        atu atu2;
        View view;
        ImageView imageview;
        TextView textview;
        ImageView imageview1;
        TextView textview1;
        ath ath1;
        ati ati1;
        MainTitle maintitle;
        MainTitle maintitle1;
        Object aobj[];
        Resources resources1;
        android.graphics.drawable.Drawable drawable;
        Resources resources2;
        ViewGroup viewgroup;
        long l1;
        ViewGroup viewgroup1;
        long l2;
        ViewGroup viewgroup2;
        long l3;
        ViewGroup viewgroup3;
        long l4;
        ViewGroup viewgroup4;
        long l5;
        ViewGroup viewgroup5;
        long l6;
        ViewGroup viewgroup6;
        int j1;
        ViewGroup viewgroup7;
        long l7;
        ViewGroup viewgroup8;
        long l8;
        double d3;
        ViewGroup viewgroup9;
        Object aobj1[];
        String s1;
        View view1;
        TextView textview2;
        LinkedList linkedlist;
        Iterator iterator;
        if (flag)
        {
            ats1 = atm.a(this).c();
        } else
        {
            ats1 = ato.a(this).a().c;
        }
        if (flag1)
        {
            atu atu3 = (atu)ats1.b.get(i1);
            d2 = atu3.w;
            atu2 = atu3;
        } else
        {
            atu atu1 = (atu)ats1.g.get(i1);
            d2 = atu1.f;
            atu2 = atu1;
        }
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        view = findViewById(0x7f0701b8);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        imageview = (ImageView)view.findViewById(0x7f070014);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        textview = (TextView)view.findViewById(0x7f07001f);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        imageview1 = (ImageView)view.findViewById(0x7f0701b6);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        textview1 = (TextView)view.findViewById(0x7f0701b5);
        ath1 = ath.a(this);
        ati1 = ath1.a(atu2.a, atu2.b);
        c = ati1.b;
        imageview.setImageDrawable(ati1.c);
        textview.setText(ati1.a);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        d = (MainTitle)findViewById(0x7f0701b7);
        maintitle = d;
        com.dianxinos.dxbs.R.string _tmp7 = ly.i;
        maintitle.setTitleText(0x7f0a025b);
        d.a();
        maintitle1 = d;
        com.dianxinos.dxbs.R.drawable _tmp8 = ly.e;
        maintitle1.setLeftButtonIcon(0x7f020450);
        d.setLeftButtonOnclickListener(new axv(this));
        aobj = new Object[1];
        aobj[0] = Double.valueOf(d2);
        textview1.setText(azq.a("%.1f%%", aobj));
        resources1 = getResources();
        com.dianxinos.dxbs.R.drawable _tmp9 = ly.e;
        drawable = resources1.getDrawable(0x7f0201e4);
        resources2 = getResources();
        com.dianxinos.dxbs.R.drawable _tmp10 = ly.e;
        imageview1.setImageDrawable(new awc(drawable, resources2.getDrawable(0x7f0201e5), d1));
        com.dianxinos.dxbs.R.id _tmp11 = ly.f;
        e = (MonitorTitleView)findViewById(0x7f0701b9);
        e.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp12 = ly.f;
        f = (ViewGroup)findViewById(0x7f0701ba);
        com.dianxinos.dxbs.R.id _tmp13 = ly.f;
        g = (MonitorTitleView)findViewById(0x7f0701bb);
        g.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp14 = ly.f;
        h = (ViewGroup)findViewById(0x7f0701bc);
        com.dianxinos.dxbs.R.id _tmp15 = ly.f;
        i = (MonitorTitleView)findViewById(0x7f0701bf);
        i.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp16 = ly.f;
        j = (ViewGroup)findViewById(0x7f0701c0);
        com.dianxinos.dxbs.R.id _tmp17 = ly.f;
        k = (MonitorTitleView)findViewById(0x7f0701c1);
        k.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp18 = ly.f;
        l = (ViewGroup)findViewById(0x7f0701c2);
        com.dianxinos.dxbs.R.id _tmp19 = ly.f;
        m = (MonitorTitleView)findViewById(0x7f0701c3);
        m.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp20 = ly.f;
        n = (ViewGroup)findViewById(0x7f0701c4);
        viewgroup = f;
        l1 = atu2.i;
        com.dianxinos.dxbs.R.string _tmp21 = ly.i;
        a(viewgroup, l1, 0x7f0a009a);
        viewgroup1 = f;
        l2 = atu2.m;
        com.dianxinos.dxbs.R.string _tmp22 = ly.i;
        a(viewgroup1, l2, 0x7f0a009d);
        viewgroup2 = f;
        l3 = atu2.l;
        com.dianxinos.dxbs.R.string _tmp23 = ly.i;
        a(viewgroup2, l3, 0x7f0a009c);
        viewgroup3 = f;
        l4 = atu2.n;
        com.dianxinos.dxbs.R.string _tmp24 = ly.i;
        a(viewgroup3, l4, 0x7f0a009e);
        viewgroup4 = f;
        l5 = atu2.o;
        com.dianxinos.dxbs.R.string _tmp25 = ly.i;
        a(viewgroup4, l5, 0x7f0a009f);
        viewgroup5 = f;
        l6 = atu2.p;
        com.dianxinos.dxbs.R.string _tmp26 = ly.i;
        a(viewgroup5, l6, 0x7f0a00a0);
        viewgroup6 = f;
        j1 = atu2.s;
        com.dianxinos.dxbs.R.string _tmp27 = ly.i;
        a(viewgroup6, j1, 0x7f0a00a1, false);
        viewgroup7 = f;
        l7 = atu2.t;
        com.dianxinos.dxbs.R.string _tmp28 = ly.i;
        b(viewgroup7, l7, 0x7f0a00a2);
        viewgroup8 = f;
        l8 = atu2.u;
        com.dianxinos.dxbs.R.string _tmp29 = ly.i;
        b(viewgroup8, l8, 0x7f0a00a3);
        if (atu2.d > 0.0D)
        {
            d3 = 100D * (atu2.v / atu2.d);
        } else
        {
            d3 = 0.0D;
        }
        viewgroup9 = f;
        aobj1 = new Object[1];
        aobj1[0] = Double.valueOf(d3);
        s1 = azq.a("%.1f%%", aobj1);
        com.dianxinos.dxbs.R.string _tmp30 = ly.i;
        view1 = a(viewgroup9, s1, 0x7f0a00a4);
        com.dianxinos.dxbs.R.drawable _tmp31 = ly.e;
        view1.setBackgroundResource(0x7f0203d8);
        if (f.getChildCount() == 0)
        {
            e.setVisibility(8);
            f.setVisibility(8);
        }
        com.dianxinos.dxbs.R.id _tmp32 = ly.f;
        textview2 = (TextView)findViewById(0x7f0701bd);
        com.dianxinos.dxbs.R.id _tmp33 = ly.f;
        o = (Button)findViewById(0x7f0701be);
        o.setOnClickListener(new axw(this));
        if (c == null || !azf.a(getApplicationContext()))
        {
            g.setVisibility(8);
            h.setVisibility(8);
        } else
        {
            com.dianxinos.dxbs.R.string _tmp34 = ly.i;
            textview2.setText(0x7f0a00a5);
            Button button = o;
            com.dianxinos.dxbs.R.string _tmp35 = ly.i;
            button.setText(0x7f0a00a6);
        }
        a(atu2);
        linkedlist = new LinkedList();
        iterator = atu2.h.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s3 = ath1.a((String)iterator.next());
            if (s3 != null)
            {
                linkedlist.add(s3);
            }
        } while (true);
        if (linkedlist.size() > 1)
        {
            View view2 = null;
            for (Iterator iterator1 = linkedlist.iterator(); iterator1.hasNext();)
            {
                String s2 = (String)iterator1.next();
                LayoutInflater layoutinflater = b;
                com.dianxinos.dxbs.R.layout _tmp36 = ly.g;
                View view3 = layoutinflater.inflate(0x7f03005e, null);
                com.dianxinos.dxbs.R.id _tmp37 = ly.f;
                view3.findViewById(0x7f070156).setVisibility(8);
                l.addView(view3);
                com.dianxinos.dxbs.R.id _tmp38 = ly.f;
                ((TextView)view3.findViewById(0x7f07018b)).setText(s2);
                view2 = view3;
            }

            if (view2 != null)
            {
                com.dianxinos.dxbs.R.drawable _tmp39 = ly.e;
                view2.setBackgroundResource(0x7f0203d8);
            }
        } else
        {
            k.setVisibility(8);
            l.setVisibility(8);
        }
        m.setVisibility(8);
        n.setVisibility(8);
    }

    private void a(ViewGroup viewgroup, int i1, int j1, boolean flag)
    {
        if (flag || i1 > 0)
        {
            a(viewgroup, String.valueOf(i1), j1);
        }
    }

    private void a(ViewGroup viewgroup, long l1, int i1)
    {
        int j1 = (int)(l1 / 1000L);
        if (l1 > 0L)
        {
            if (j1 == 0)
            {
                j1 = 1;
            }
            a(viewgroup, azq.a(this, j1), i1);
        }
    }

    private void a(atu atu1)
    {
        axx axx1;
        boolean flag;
        int i1;
        int j1;
        View view;
        axx1 = new axx(this);
        flag = true;
        i1 = atu1.g.size();
        j1 = 0;
        view = null;
_L5:
        if (j1 >= i1) goto _L2; else goto _L1
_L1:
        atx atx1 = (atx)atu1.g.get(j1);
        if (atx1.e >= 0.10000000149011612D) goto _L3; else goto _L2
_L2:
        boolean flag1;
        if (view != null)
        {
            ly.e;
            view.setBackgroundResource(0x7f0203d7);
            j.removeViewAt(-1 + j.getChildCount());
        }
        if (flag)
        {
            int k1 = j.getChildCount();
            int l1 = 0;
            while (l1 < k1) 
            {
                View view1 = j.getChildAt(l1);
                LayoutInflater layoutinflater;
                View view2;
                ImageView imageview;
                TextView textview;
                double d1;
                Object aobj[];
                if (view1 instanceof ImageView)
                {
                    view1.setVisibility(8);
                } else
                {
                    ly.f;
                    view1.findViewById(0x7f0700ed).setVisibility(8);
                }
                l1++;
            }
        }
          goto _L4
_L3:
        layoutinflater = b;
        ly.g;
        view2 = layoutinflater.inflate(0x7f030067, null);
        ly.f;
        imageview = (ImageView)view2.findViewById(0x7f070014);
        imageview.setImageResource(atg.b(atx1.a));
        imageview.setBackgroundResource(ayl.a[j1]);
        ly.f;
        ((TextView)view2.findViewById(0x7f07001f)).setText(atg.a(atx1.a));
        ly.f;
        textview = (TextView)view2.findViewById(0x7f0701b5);
        if (atu1.a != 0 || r)
        {
            d1 = a(atx1.e);
        } else
        {
            d1 = atx1.e;
        }
        aobj = new Object[1];
        aobj[0] = Double.valueOf(d1);
        textview.setText(azq.a("%.1f%%", aobj));
        if (a(atx1.a))
        {
            view2.setFocusable(true);
            view2.setClickable(true);
            view2.setTag(Integer.valueOf(atx1.a));
            view2.setOnClickListener(axx1);
            ly.f;
            view2.findViewById(0x7f0700ed).setVisibility(0);
            flag1 = false;
        } else
        {
            flag1 = flag;
        }
        if (atu1.a == 0 && a.equals(getResources().getString(atg.a(atx1.a))))
        {
            p = true;
        } else
        {
            j.addView(view2);
            j.addView(b());
        }
        j1++;
        view = view2;
        flag = flag1;
        if (true) goto _L5; else goto _L4
_L4:
        if (j.getChildCount() == 0 || atu1.a == 0 && p && j.getChildCount() == 1)
        {
            i.setVisibility(8);
            j.setVisibility(8);
        }
        return;
    }

    public static void a(AppPowerUsageDetails apppowerusagedetails, int i1)
    {
        apppowerusagedetails.b(i1);
    }

    private boolean a(int i1)
    {
        return i1 == 2 || i1 == 1 || i1 == 3 || i1 == 7;
    }

    private View b()
    {
        int i1 = iq.a(this, 1);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        layoutparams.setMargins(i1, 0, i1, 0);
        ImageView imageview = new ImageView(this);
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        imageview.setBackgroundResource(0x7f0203e1);
        imageview.setLayoutParams(layoutparams);
        return imageview;
    }

    private void b(int i1)
    {
        if (i1 == 2)
        {
            startActivity(new Intent("android.settings.WIFI_SETTINGS"));
        } else
        {
            if (i1 == 1)
            {
                startActivity(new Intent("android.settings.DISPLAY_SETTINGS"));
                return;
            }
            if (i1 == 3)
            {
                startActivity(new Intent("android.settings.BLUETOOTH_SETTINGS"));
                return;
            }
            if (i1 == 7)
            {
                startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
                return;
            }
        }
    }

    private void b(ViewGroup viewgroup, long l1, int i1)
    {
        if (l1 > 0L)
        {
            a(viewgroup, azq.a(this, l1), i1);
        }
    }

    public void a(MonitorTitleView monitortitleview)
    {
        byte byte0 = 8;
        boolean flag = true;
        if (monitortitleview == e)
        {
            ViewGroup viewgroup4;
            byte byte1;
            if (f.getVisibility() != 0)
            {
                flag = false;
            }
            viewgroup4 = f;
            byte1 = 0;
            if (flag)
            {
                byte1 = byte0;
            }
            viewgroup4.setVisibility(byte1);
        } else
        {
            if (monitortitleview == g)
            {
                ViewGroup viewgroup3;
                if (h.getVisibility() != 0)
                {
                    flag = false;
                }
                viewgroup3 = h;
                if (!flag)
                {
                    byte0 = 0;
                }
                viewgroup3.setVisibility(byte0);
                return;
            }
            if (monitortitleview == i)
            {
                ViewGroup viewgroup2;
                if (j.getVisibility() != 0)
                {
                    flag = false;
                }
                viewgroup2 = j;
                if (!flag)
                {
                    byte0 = 0;
                }
                viewgroup2.setVisibility(byte0);
                return;
            }
            if (monitortitleview == k)
            {
                ViewGroup viewgroup1;
                if (l.getVisibility() != 0)
                {
                    flag = false;
                }
                viewgroup1 = l;
                if (!flag)
                {
                    byte0 = 0;
                }
                viewgroup1.setVisibility(byte0);
                return;
            }
            if (monitortitleview == m)
            {
                ViewGroup viewgroup;
                if (n.getVisibility() != 0)
                {
                    flag = false;
                }
                viewgroup = n;
                if (!flag)
                {
                    byte0 = 0;
                }
                viewgroup.setVisibility(byte0);
                return;
            }
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030064);
        try
        {
            a();
            return;
        }
        catch (Exception exception)
        {
            finish();
            azt.c("AppPowerUsageDetails", (new StringBuilder()).append("Process killed??? Exception: ").append(exception).toString());
            return;
        }
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

    protected void onResume()
    {
        super.onResume();
        if (c == null || !azy.a(this, c) || !azf.a(getApplicationContext()))
        {
            g.setVisibility(8);
            h.setVisibility(8);
            return;
        } else
        {
            g.setVisibility(0);
            h.setVisibility(0);
            return;
        }
    }
}
