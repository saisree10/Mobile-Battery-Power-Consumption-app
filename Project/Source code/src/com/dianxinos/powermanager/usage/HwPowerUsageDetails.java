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
import android.widget.Toast;
import atd;
import ate;
import atf;
import atg;
import ath;
import ati;
import atl;
import ato;
import atr;
import awc;
import ayl;
import ayp;
import ayq;
import ayr;
import ayu;
import azf;
import azh;
import azq;
import azt;
import azy;
import com.dianxinos.powermanager.smart.CpuSelectDialog;
import com.dianxinos.powermanager.ui.MainTitle;
import iq;
import java.util.ArrayList;
import ly;

// Referenced classes of package com.dianxinos.powermanager.usage:
//            MonitorTitleView

public class HwPowerUsageDetails extends aao
    implements ayu
{

    private LayoutInflater a;
    private ato b;
    private MainTitle c;
    private MonitorTitleView d;
    private ViewGroup e;
    private MonitorTitleView f;
    private ViewGroup g;
    private MonitorTitleView h;
    private ViewGroup i;
    private Button j;
    private int k;
    private int l;

    public HwPowerUsageDetails()
    {
    }

    public static int a(HwPowerUsageDetails hwpowerusagedetails)
    {
        return hwpowerusagedetails.k;
    }

    private void a()
    {
        atd atd1;
        TextView textview2;
        Intent intent = getIntent();
        l = intent.getIntExtra("position", 0);
        double d1 = intent.getDoubleExtra("bar_percent", 0.0D);
        a = LayoutInflater.from(this);
        b = ato.a(this);
        atd1 = (atd)b.a().d.g.get(l);
        k = atd1.a;
        ly.f;
        View view = findViewById(0x7f0701b8);
        ly.f;
        ImageView imageview = (ImageView)view.findViewById(0x7f070014);
        ly.f;
        TextView textview = (TextView)view.findViewById(0x7f07001f);
        ly.f;
        ImageView imageview1 = (ImageView)view.findViewById(0x7f0701b6);
        ly.f;
        TextView textview1 = (TextView)view.findViewById(0x7f0701b5);
        imageview.setImageResource(atg.b(k));
        imageview.setBackgroundResource(ayl.a[l % 9]);
        textview.setText(atg.a(k));
        ly.f;
        c = (MainTitle)findViewById(0x7f0701b7);
        MainTitle maintitle = c;
        ly.i;
        maintitle.setTitleText(0x7f0a025b);
        c.a();
        MainTitle maintitle1 = c;
        ly.e;
        maintitle1.setLeftButtonIcon(0x7f020450);
        c.setLeftButtonOnclickListener(new ayp(this));
        Object aobj[] = new Object[1];
        aobj[0] = Double.valueOf(atd1.e);
        textview1.setText(azq.a("%.1f%%", aobj));
        Resources resources = getResources();
        ly.e;
        android.graphics.drawable.Drawable drawable = resources.getDrawable(0x7f0201e4);
        Resources resources1 = getResources();
        ly.e;
        imageview1.setImageDrawable(new awc(drawable, resources1.getDrawable(0x7f0201e5), d1));
        ly.f;
        d = (MonitorTitleView)findViewById(0x7f0701b9);
        d.setOnClickListener(this);
        ly.f;
        e = (ViewGroup)findViewById(0x7f0701ba);
        ly.f;
        f = (MonitorTitleView)findViewById(0x7f0701bb);
        f.setOnClickListener(this);
        ly.f;
        g = (ViewGroup)findViewById(0x7f0701bc);
        ly.f;
        h = (MonitorTitleView)findViewById(0x7f0701bf);
        h.setOnClickListener(this);
        ly.f;
        i = (ViewGroup)findViewById(0x7f0701c0);
        ViewGroup viewgroup = e;
        long l1 = atd1.b;
        ly.i;
        a(viewgroup, l1, 0x7f0a00a8);
        if (e.getChildCount() == 0)
        {
            d.setVisibility(8);
            e.setVisibility(8);
        }
        ly.f;
        textview2 = (TextView)findViewById(0x7f0701bd);
        ly.f;
        j = (Button)findViewById(0x7f0701be);
        j.setOnClickListener(new ayq(this));
        Button button = j;
        ly.i;
        button.setText(0x7f0a00a9);
        if (k != 2) goto _L2; else goto _L1
_L1:
        ly.i;
        textview2.setText(0x7f0a00aa);
_L4:
        a(atd1);
        ly.f;
        findViewById(0x7f0701c1).setVisibility(8);
        ly.f;
        findViewById(0x7f0701c3).setVisibility(8);
        return;
_L2:
        if (k == 1)
        {
            ly.i;
            textview2.setText(0x7f0a00ab);
        } else
        if (k == 3)
        {
            ly.i;
            textview2.setText(0x7f0a00ad);
        } else
        if (k == 7)
        {
            ly.i;
            textview2.setText(0x7f0a00ac);
        } else
        if (k == 9)
        {
            ly.i;
            textview2.setText(0x7f0a00ae);
            if (azh.a(this).c() == 0)
            {
                j.setVisibility(8);
            }
        } else
        {
            f.setVisibility(8);
            g.setVisibility(8);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void a(int i1)
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
            if (i1 == 9)
            {
                azh azh1 = azh.a(this);
                azh1.e();
                if (azh1.a() == 0)
                {
                    com.dianxinos.dxbs.R.string _tmp = ly.i;
                    Toast.makeText(this, 0x7f0a007a, 0).show();
                    return;
                } else
                {
                    startActivity(new Intent(this, com/dianxinos/powermanager/smart/CpuSelectDialog));
                    return;
                }
            }
        }
    }

    private void a(ViewGroup viewgroup, long l1, int i1)
    {
        int j1 = (int)(l1 / 1000L);
        if (j1 == 0)
        {
            j1 = 1;
        }
        a(viewgroup, azq.a(this, j1), i1);
    }

    private void a(ViewGroup viewgroup, String s, int i1)
    {
        LayoutInflater layoutinflater = a;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f03005e, null);
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        view.setBackgroundResource(0x7f0203d8);
        viewgroup.addView(view);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        ((TextView)view.findViewById(0x7f07018b)).setText(i1);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        ((TextView)view.findViewById(0x7f070156)).setText(s);
    }

    private void a(atd atd1)
    {
        ayr ayr1 = new ayr(this);
        ath ath1 = ath.a(this);
        int i1 = atd1.g.size();
        int j1 = 0;
        View view = null;
        do
        {
            atl atl1;
label0:
            {
                if (j1 < i1 && j1 < 10)
                {
                    atl1 = (atl)atd1.g.get(j1);
                    if (atl1.e >= 0.10000000149011612D)
                    {
                        break label0;
                    }
                }
                if (view != null)
                {
                    com.dianxinos.dxbs.R.drawable _tmp = ly.e;
                    view.setBackgroundResource(0x7f0203d7);
                    i.removeViewAt(-1 + i.getChildCount());
                }
                if (i.getChildCount() == 0)
                {
                    h.setVisibility(8);
                    i.setVisibility(8);
                }
                return;
            }
            LayoutInflater layoutinflater = a;
            com.dianxinos.dxbs.R.layout _tmp1 = ly.g;
            View view1 = layoutinflater.inflate(0x7f030067, null);
            com.dianxinos.dxbs.R.id _tmp2 = ly.f;
            ImageView imageview = (ImageView)view1.findViewById(0x7f070014);
            String s;
            android.graphics.drawable.Drawable drawable;
            String s1;
            TextView textview;
            Object aobj[];
            if (atl1 instanceof atf)
            {
                atf atf1 = (atf)atl1;
                ati ati1 = ath1.a(atf1.a, atf1.b);
                s = ati1.a;
                s1 = ati1.b;
                drawable = ati1.c;
            } else
            {
                ate ate1 = (ate)atl1;
                s = ate1.b;
                drawable = getResources().getDrawable(atg.b(ate1.a));
                imageview.setBackgroundResource(ayl.a[l % 9]);
                s1 = null;
            }
            imageview.setImageDrawable(drawable);
            com.dianxinos.dxbs.R.id _tmp3 = ly.f;
            ((TextView)view1.findViewById(0x7f07001f)).setText(s);
            com.dianxinos.dxbs.R.id _tmp4 = ly.f;
            textview = (TextView)view1.findViewById(0x7f0701b5);
            aobj = new Object[1];
            aobj[0] = Double.valueOf(atl1.e);
            textview.setText(azq.a("%.1f%%", aobj));
            view1.setTag(s1);
            view1.setOnClickListener(ayr1);
            i.addView(view1);
            i.addView(b());
            j1++;
            view = view1;
        } while (true);
    }

    public static void a(HwPowerUsageDetails hwpowerusagedetails, int i1)
    {
        hwpowerusagedetails.a(i1);
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

    public void a(MonitorTitleView monitortitleview)
    {
        byte byte0 = 8;
        boolean flag = true;
        if (monitortitleview == d)
        {
            ViewGroup viewgroup2;
            byte byte1;
            if (e.getVisibility() != 0)
            {
                flag = false;
            }
            viewgroup2 = e;
            byte1 = 0;
            if (flag)
            {
                byte1 = byte0;
            }
            viewgroup2.setVisibility(byte1);
        } else
        {
            if (monitortitleview == f)
            {
                ViewGroup viewgroup1;
                if (g.getVisibility() != 0)
                {
                    flag = false;
                }
                viewgroup1 = g;
                if (!flag)
                {
                    byte0 = 0;
                }
                viewgroup1.setVisibility(byte0);
                return;
            }
            if (monitortitleview == h)
            {
                ViewGroup viewgroup;
                if (i.getVisibility() != 0)
                {
                    flag = false;
                }
                viewgroup = i;
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
            azt.c("HwPowerUsageDetails", (new StringBuilder()).append("Process killed??? Exception: ").append(exception).toString());
            return;
        }
    }

    protected void onDestroy()
    {
        b = null;
        super.onDestroy();
    }

    protected void onResume()
    {
        super.onResume();
        int i1 = i.getChildCount();
        int j1 = 0;
        boolean flag = true;
        while (j1 < i1) 
        {
            View view1 = i.getChildAt(j1);
            boolean flag2;
            if (view1 instanceof ImageView)
            {
                flag2 = flag;
            } else
            {
                String s = (String)view1.getTag();
                int k1;
                View view;
                boolean flag1;
                View view2;
                int l1;
                if (s != null)
                {
                    if (azy.a(this, s) && azf.a(getApplicationContext()))
                    {
                        flag1 = true;
                    } else
                    {
                        flag1 = false;
                    }
                } else
                {
                    flag1 = false;
                }
                view1.setFocusable(flag1);
                view1.setClickable(flag1);
                com.dianxinos.dxbs.R.id _tmp = ly.f;
                view2 = view1.findViewById(0x7f0700ed);
                if (flag1)
                {
                    l1 = 0;
                } else
                {
                    l1 = 4;
                }
                view2.setVisibility(l1);
                if (flag1)
                {
                    flag2 = false;
                } else
                {
                    flag2 = flag;
                }
            }
            j1++;
            flag = flag2;
        }
        k1 = 0;
        if (flag)
        {
            while (k1 < i1) 
            {
                view = i.getChildAt(k1);
                if (view instanceof ImageView)
                {
                    view.setVisibility(8);
                } else
                {
                    com.dianxinos.dxbs.R.id _tmp1 = ly.f;
                    view.findViewById(0x7f0700ed).setVisibility(8);
                }
                k1++;
            }
        }
    }
}
