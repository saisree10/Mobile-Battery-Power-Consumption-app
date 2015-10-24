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
import android.widget.TextView;
import android.widget.Toast;
import arr;
import asf;
import asg;
import ash;
import asi;
import asj;
import ask;
import ass;
import avg;
import avh;
import awz;
import com.dianxinos.powermanager.ui.DXSwitchButton;
import com.dianxinos.powermanager.ui.DxGotoPreference;
import com.dianxinos.powermanager.ui.MainTitle;
import com.dianxinos.powermanager.ui.TimePickerView;
import ly;

public class SmartModeTimeSettings extends aao
    implements android.view.View.OnClickListener, avh, awz
{

    private static boolean b = false;
    Handler a;
    private TimePickerView c;
    private TimePickerView d;
    private DXSwitchButton e;
    private boolean f;
    private arr g;
    private int h;
    private int i;
    private amp j;
    private int k;
    private int l;
    private int m;
    private int n;
    private ImageView o;
    private DxGotoPreference p;
    private DxGotoPreference q;
    private int r;
    private int s;
    private Dialog t;
    private int u;
    private int v;
    private aml w;
    private MainTitle x;

    public SmartModeTimeSettings()
    {
        a = new asi(this);
    }

    public static int a(SmartModeTimeSettings smartmodetimesettings, int i1)
    {
        smartmodetimesettings.h = i1;
        return i1;
    }

    public static Dialog a(SmartModeTimeSettings smartmodetimesettings)
    {
        return smartmodetimesettings.t;
    }

    private void a()
    {
        if (isFinishing())
        {
            return;
        }
        if (t == null)
        {
            com.dianxinos.dxbs.R.style _tmp = ly.j;
            t = new Dialog(this, 0x7f0b0007);
            Dialog dialog4 = t;
            com.dianxinos.dxbs.R.layout _tmp1 = ly.g;
            dialog4.setContentView(0x7f030013);
        }
        Dialog dialog = t;
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        TextView textview = (TextView)(TextView)dialog.findViewById(0x7f070018);
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        textview.setText(getString(0x7f0a00f2));
        Dialog dialog1 = t;
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        TextView textview1 = (TextView)(TextView)dialog1.findViewById(0x7f07005c);
        com.dianxinos.dxbs.R.string _tmp5 = ly.i;
        textview1.setText(Html.fromHtml(getString(0x7f0a00fe)));
        Dialog dialog2 = t;
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        ((Button)(Button)dialog2.findViewById(0x7f070060)).setOnClickListener(new asg(this));
        Dialog dialog3 = t;
        com.dianxinos.dxbs.R.id _tmp7 = ly.f;
        Button button = (Button)(Button)dialog3.findViewById(0x7f07005e);
        com.dianxinos.dxbs.R.string _tmp8 = ly.i;
        button.setText(0x7f0a0100);
        button.setOnClickListener(new ash(this));
        t.show();
    }

    private void a(boolean flag)
    {
        if (flag)
        {
            e.setStatus(flag);
            p.setFocusable(true);
            q.setFocusable(true);
            o.setVisibility(8);
            return;
        } else
        {
            e.setStatus(flag);
            p.setFocusable(false);
            q.setFocusable(false);
            o.setVisibility(0);
            return;
        }
    }

    public static int b(SmartModeTimeSettings smartmodetimesettings)
    {
        return smartmodetimesettings.v;
    }

    public static int b(SmartModeTimeSettings smartmodetimesettings, int i1)
    {
        smartmodetimesettings.i = i1;
        return i1;
    }

    public static int c(SmartModeTimeSettings smartmodetimesettings)
    {
        return smartmodetimesettings.u;
    }

    public static int c(SmartModeTimeSettings smartmodetimesettings, int i1)
    {
        smartmodetimesettings.r = i1;
        return i1;
    }

    public static int d(SmartModeTimeSettings smartmodetimesettings, int i1)
    {
        smartmodetimesettings.s = i1;
        return i1;
    }

    public static amp d(SmartModeTimeSettings smartmodetimesettings)
    {
        return smartmodetimesettings.j;
    }

    public static int e(SmartModeTimeSettings smartmodetimesettings, int i1)
    {
        smartmodetimesettings.u = i1;
        return i1;
    }

    public static DxGotoPreference e(SmartModeTimeSettings smartmodetimesettings)
    {
        return smartmodetimesettings.p;
    }

    public static int f(SmartModeTimeSettings smartmodetimesettings, int i1)
    {
        smartmodetimesettings.v = i1;
        return i1;
    }

    public static DxGotoPreference f(SmartModeTimeSettings smartmodetimesettings)
    {
        return smartmodetimesettings.q;
    }

    public static void g(SmartModeTimeSettings smartmodetimesettings)
    {
        smartmodetimesettings.a();
    }

    public void a(avg avg)
    {
        if (avg == p)
        {
            w = new aml(this, h, a, new asj(this));
            w.show();
        } else
        if (avg == q)
        {
            w = new aml(this, r, a, new ask(this));
            w.show();
            return;
        }
    }

    public void a(TimePickerView timepickerview, int i1, int j1)
    {
        if (c == timepickerview)
        {
            k = i1;
            l = j1;
            return;
        } else
        {
            m = i1;
            n = j1;
            return;
        }
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        if (j1 == -1 && i1 == 1)
        {
            String s1 = intent.getExtras().getString("ModeName");
            w.a(s1);
        }
        super.onActivityResult(i1, j1, intent);
    }

    public void onBackPressed()
    {
        super.onBackPressed();
        if (k == m && l == n)
        {
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Toast.makeText(this, 0x7f0a0155, 0).show();
            return;
        } else
        {
            g.e(i);
            g.g(s);
            g.a(k, l);
            g.b(m, n);
            g.a(j.c(h));
            ass.a(getApplicationContext()).d();
            return;
        }
    }

    public void onClick(View view)
    {
        if (view == e)
        {
            if (!e.getStatus())
            {
                f = true;
                a(true);
            } else
            {
                f = false;
                a(false);
            }
            g.e(f);
            sendBroadcast(new Intent("com.dianxinos.dxbs.action.RemainingTimeUpate"));
        } else
        if (view == o)
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
        setContentView(0x7f030082);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        x = (MainTitle)findViewById(0x7f070007);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        TextView textview = (TextView)findViewById(0x7f070134);
        Resources resources = getResources();
        com.dianxinos.dxbs.R.dimen _tmp3 = ly.d;
        textview.setTextSize(0, resources.getDimension(0x7f0801b7));
        MainTitle maintitle = x;
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        e = (DXSwitchButton)maintitle.findViewById(0x7f070135);
        e.setVisibility(0);
        e.setOnClickListener(this);
        g = arr.a(this);
        j = amp.a(this);
        g = arr.a(this);
        i = g.m();
        h = j.g(i);
        if (h == -1)
        {
            h = j.g(0);
        }
        s = g.f(j.c());
        r = j.g(s);
        if (r == -1)
        {
            r = j.g(0);
        }
        int ai[] = g.n();
        int ai1[] = g.o();
        k = ai[0];
        l = ai[1];
        m = ai1[0];
        n = ai1[1];
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        c = (TimePickerView)findViewById(0x7f0701e2);
        c.setListener(this);
        c.a(k, l);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        d = (TimePickerView)findViewById(0x7f0701e5);
        d.setListener(this);
        d.a(m, n);
        com.dianxinos.dxbs.R.id _tmp7 = ly.f;
        o = (ImageView)findViewById(0x7f07001d);
        o.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp8 = ly.f;
        p = (DxGotoPreference)findViewById(0x7f070211);
        p.setSummary(j.c(h));
        p.setOnPreferenceChangeListener(this);
        com.dianxinos.dxbs.R.id _tmp9 = ly.f;
        q = (DxGotoPreference)findViewById(0x7f070212);
        q.setSummary(j.c(r));
        q.setOnPreferenceChangeListener(this);
    }

    protected void onDestroy()
    {
        if (w != null)
        {
            w.dismiss();
        }
        if (t != null)
        {
            t.dismiss();
        }
        super.onDestroy();
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
        f = g.l();
        MainTitle maintitle = x;
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        maintitle.setLeftButtonIcon(0x7f020450);
        x.setLeftButtonOnclickListener(new asf(this));
        a(f);
    }

}
