// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.smart;

import aao;
import aml;
import amp;
import android.app.Dialog;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import arr;
import arv;
import arw;
import arx;
import ary;
import arz;
import asa;
import asb;
import ass;
import avg;
import avh;
import azf;
import com.dianxinos.powermanager.ui.DXSwitchButton;
import com.dianxinos.powermanager.ui.DxGotoPreference;
import com.dianxinos.powermanager.ui.MainTitle;
import ly;

public class SmartModeBatterySettings extends aao
    implements android.view.View.OnClickListener, avh
{

    private static boolean b = false;
    Handler a;
    private arr c;
    private SeekBar d;
    private boolean e;
    private int f;
    private DXSwitchButton g;
    private boolean h;
    private int i;
    private int j;
    private amp k;
    private TextView l;
    private ImageView m;
    private Dialog n;
    private int o;
    private DxGotoPreference p;
    private DxGotoPreference q;
    private int r;
    private int s;
    private int t;
    private aml u;
    private MainTitle v;
    private android.widget.SeekBar.OnSeekBarChangeListener w;

    public SmartModeBatterySettings()
    {
        w = new arw(this);
        a = new arz(this);
    }

    public static int a(SmartModeBatterySettings smartmodebatterysettings)
    {
        return smartmodebatterysettings.f;
    }

    public static int a(SmartModeBatterySettings smartmodebatterysettings, int i1)
    {
        smartmodebatterysettings.f = i1;
        return i1;
    }

    private void a()
    {
        if (n == null)
        {
            com.dianxinos.dxbs.R.style _tmp = ly.j;
            n = new Dialog(this, 0x7f0b0007);
            Dialog dialog4 = n;
            com.dianxinos.dxbs.R.layout _tmp1 = ly.g;
            dialog4.setContentView(0x7f030013);
        }
        Dialog dialog = n;
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        TextView textview = (TextView)(TextView)dialog.findViewById(0x7f070018);
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        textview.setText(getString(0x7f0a00f2));
        Dialog dialog1 = n;
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        TextView textview1 = (TextView)(TextView)dialog1.findViewById(0x7f07005c);
        com.dianxinos.dxbs.R.string _tmp5 = ly.i;
        textview1.setText(Html.fromHtml(getString(0x7f0a00fc)));
        Dialog dialog2 = n;
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        ((Button)(Button)dialog2.findViewById(0x7f070060)).setOnClickListener(new arx(this));
        Dialog dialog3 = n;
        com.dianxinos.dxbs.R.id _tmp7 = ly.f;
        Button button = (Button)(Button)dialog3.findViewById(0x7f07005e);
        com.dianxinos.dxbs.R.string _tmp8 = ly.i;
        button.setText(0x7f0a0100);
        button.setOnClickListener(new ary(this));
        n.show();
    }

    private void a(boolean flag)
    {
        if (flag)
        {
            g.setStatus(flag);
            p.setFocusable(true);
            m.setVisibility(8);
        } else
        {
            g.setStatus(flag);
            p.setFocusable(false);
            m.setVisibility(0);
        }
        q.setSummary(k.c(r));
        p.setSummary(k.c(i));
    }

    public static int b(SmartModeBatterySettings smartmodebatterysettings, int i1)
    {
        smartmodebatterysettings.i = i1;
        return i1;
    }

    public static TextView b(SmartModeBatterySettings smartmodebatterysettings)
    {
        return smartmodebatterysettings.l;
    }

    public static int c(SmartModeBatterySettings smartmodebatterysettings, int i1)
    {
        smartmodebatterysettings.j = i1;
        return i1;
    }

    public static DxGotoPreference c(SmartModeBatterySettings smartmodebatterysettings)
    {
        return smartmodebatterysettings.p;
    }

    public static int d(SmartModeBatterySettings smartmodebatterysettings, int i1)
    {
        smartmodebatterysettings.r = i1;
        return i1;
    }

    public static DxGotoPreference d(SmartModeBatterySettings smartmodebatterysettings)
    {
        return smartmodebatterysettings.q;
    }

    public static int e(SmartModeBatterySettings smartmodebatterysettings, int i1)
    {
        smartmodebatterysettings.s = i1;
        return i1;
    }

    public static boolean e(SmartModeBatterySettings smartmodebatterysettings)
    {
        return smartmodebatterysettings.e;
    }

    public static int f(SmartModeBatterySettings smartmodebatterysettings, int i1)
    {
        smartmodebatterysettings.o = i1;
        return i1;
    }

    public static Dialog f(SmartModeBatterySettings smartmodebatterysettings)
    {
        return smartmodebatterysettings.n;
    }

    public static int g(SmartModeBatterySettings smartmodebatterysettings)
    {
        return smartmodebatterysettings.t;
    }

    public static int g(SmartModeBatterySettings smartmodebatterysettings, int i1)
    {
        smartmodebatterysettings.t = i1;
        return i1;
    }

    public static int h(SmartModeBatterySettings smartmodebatterysettings)
    {
        return smartmodebatterysettings.o;
    }

    public static amp i(SmartModeBatterySettings smartmodebatterysettings)
    {
        return smartmodebatterysettings.k;
    }

    public static void j(SmartModeBatterySettings smartmodebatterysettings)
    {
        smartmodebatterysettings.a();
    }

    public void a(avg avg)
    {
        if (avg == p)
        {
            u = new aml(this, i, a, new asa(this));
            u.show();
        } else
        if (avg == q)
        {
            u = new aml(this, r, a, new asb(this));
            u.show();
            return;
        }
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        if (j1 == -1 && i1 == 1)
        {
            String s1 = intent.getExtras().getString("ModeName");
            u.a(s1);
        }
        super.onActivityResult(i1, j1, intent);
    }

    public void onBackPressed()
    {
        c.d(j);
        c.i(s);
        c.c(f);
        c.f();
        ass.a(getApplicationContext()).c();
        super.onBackPressed();
    }

    public void onClick(View view)
    {
        if (view == g)
        {
            if (!g.getStatus())
            {
                h = true;
                a(true);
            } else
            {
                h = false;
                a(false);
            }
            c.d(h);
            sendBroadcast(new Intent("com.dianxinos.dxbs.action.RemainingTimeUpate"));
        } else
        if (view == m)
        {
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Toast.makeText(this, 0x7f0a0156, 0).show();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030081);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        v = (MainTitle)findViewById(0x7f070007);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        TextView textview = (TextView)findViewById(0x7f070134);
        Resources resources = getResources();
        com.dianxinos.dxbs.R.dimen _tmp3 = ly.d;
        textview.setTextSize(0, resources.getDimension(0x7f0801b7));
        MainTitle maintitle = v;
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        g = (DXSwitchButton)maintitle.findViewById(0x7f070135);
        g.setVisibility(0);
        g.setOnClickListener(this);
        k = amp.a(this);
        c = arr.a(this);
        j = c.k();
        i = k.g(j);
        if (i == -1)
        {
            i = k.g(0);
        }
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        p = (DxGotoPreference)findViewById(0x7f07020e);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        q = (DxGotoPreference)findViewById(0x7f07020f);
        p.setOnPreferenceChangeListener(this);
        q.setOnPreferenceChangeListener(this);
        s = c.h(k.c());
        r = k.g(s);
        if (r == -1)
        {
            r = k.g(1);
        }
        com.dianxinos.dxbs.R.id _tmp7 = ly.f;
        m = (ImageView)findViewById(0x7f07001d);
        m.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp8 = ly.f;
        d = (SeekBar)findViewById(0x7f07020d);
        com.dianxinos.dxbs.R.id _tmp9 = ly.f;
        l = (TextView)findViewById(0x7f07020c);
        SeekBar seekbar = d;
        Resources resources1 = getResources();
        com.dianxinos.dxbs.R.drawable _tmp10 = ly.e;
        seekbar.setProgressDrawable(resources1.getDrawable(0x7f0203d4));
        SeekBar seekbar1 = d;
        Resources resources2 = getResources();
        com.dianxinos.dxbs.R.drawable _tmp11 = ly.e;
        seekbar1.setThumb(resources2.getDrawable(0x7f0203d5));
        e = azf.d;
        DxGotoPreference dxgotopreference;
        Object aobj[];
        DxGotoPreference dxgotopreference1;
        Object aobj1[];
        if (e)
        {
            d.setMax(4);
            f = c.j();
            int j1 = -1 + f / 10;
            d.setProgress(j1);
        } else
        {
            d.setMax(40);
            f = c.j();
            int i1 = -10 + f;
            d.setProgress(i1);
        }
        l.setText((new StringBuilder()).append(" ").append(f).append("%").toString());
        dxgotopreference = p;
        com.dianxinos.dxbs.R.string _tmp12 = ly.i;
        aobj = new Object[1];
        aobj[0] = (new StringBuilder()).append(f).append("%").toString();
        dxgotopreference.setTitle(getString(0x7f0a0147, aobj));
        dxgotopreference1 = q;
        com.dianxinos.dxbs.R.string _tmp13 = ly.i;
        aobj1 = new Object[1];
        aobj1[0] = (new StringBuilder()).append(f).append("%").toString();
        dxgotopreference1.setTitle(getString(0x7f0a0148, aobj1));
        d.setOnSeekBarChangeListener(w);
        p.setOnClickListener(this);
        q.setOnClickListener(this);
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
        MainTitle maintitle = v;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        maintitle.setTitleText(0x7f0a0145);
        MainTitle maintitle1 = v;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        maintitle1.setLeftButtonIcon(0x7f020450);
        v.setLeftButtonOnclickListener(new arv(this));
        h = c.i();
        a(h);
    }

}
