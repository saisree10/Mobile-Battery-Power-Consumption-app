// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.menu;

import aao;
import amb;
import amf;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import bal;
import com.dianxinos.powermanager.ui.DXSwitchButton;
import com.dianxinos.powermanager.ui.MainTitle;
import ly;

public class StatusBarSettings extends aao
    implements android.view.View.OnClickListener
{

    private boolean a;
    private amb b;
    private LinearLayout c;
    private LinearLayout d;
    private LinearLayout e;
    private LinearLayout f;
    private ImageView g;
    private ImageView h;
    private ImageView i;
    private ImageView j;
    private View k;
    private DXSwitchButton l;
    private Resources m;
    private Drawable n;
    private Drawable o;
    private int p;
    private MainTitle q;

    public StatusBarSettings()
    {
    }

    private void a()
    {
        if (p == 0)
        {
            g.setImageDrawable(n);
            h.setImageDrawable(o);
            i.setImageDrawable(o);
            j.setImageDrawable(o);
        } else
        {
            if (p == 1)
            {
                h.setImageDrawable(n);
                g.setImageDrawable(o);
                i.setImageDrawable(o);
                j.setImageDrawable(o);
                return;
            }
            if (p == 2)
            {
                i.setImageDrawable(n);
                g.setImageDrawable(o);
                h.setImageDrawable(o);
                j.setImageDrawable(o);
                return;
            }
            if (p == 3)
            {
                j.setImageDrawable(n);
                g.setImageDrawable(o);
                h.setImageDrawable(o);
                i.setImageDrawable(o);
                return;
            }
        }
    }

    private void a(boolean flag)
    {
        a = flag;
        b(a);
    }

    private void b(boolean flag)
    {
        l.setStatus(flag);
        if (flag)
        {
            k.setVisibility(8);
        } else
        {
            k.setVisibility(0);
        }
        a();
        c.setEnabled(flag);
        d.setEnabled(flag);
        e.setEnabled(flag);
        f.setEnabled(flag);
    }

    public void onBackPressed()
    {
        super.onBackPressed();
    }

    public void onClick(View view)
    {
        boolean flag;
        flag = true;
        if (view == k)
        {
            ly.i;
            Toast.makeText(this, 0x7f0a0156, 0).show();
            return;
        }
        if (view != l) goto _L2; else goto _L1
_L1:
        if (a)
        {
            flag = false;
        }
        a(flag);
        b.a(a);
_L4:
        b.a(p);
        a();
        return;
_L2:
        if (view == c)
        {
            bal.a(getApplicationContext(), "statusbar", "cg", Integer.valueOf(flag));
            p = 0;
        } else
        if (view == d)
        {
            bal.a(getApplicationContext(), "statusbar", "cg", Integer.valueOf(flag));
            p = ((flag) ? 1 : 0);
        } else
        if (view == e)
        {
            bal.a(getApplicationContext(), "statusbar", "cg", Integer.valueOf(flag));
            p = 2;
        } else
        if (view == f)
        {
            bal.a(getApplicationContext(), "statusbar", "cg", Integer.valueOf(flag));
            p = 3;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030088);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        q = (MainTitle)findViewById(0x7f070007);
        MainTitle maintitle = q;
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        l = (DXSwitchButton)maintitle.findViewById(0x7f070135);
        l.setVisibility(0);
        l.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        c = (LinearLayout)findViewById(0x7f070229);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        d = (LinearLayout)findViewById(0x7f07022b);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        e = (LinearLayout)findViewById(0x7f07022d);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        f = (LinearLayout)findViewById(0x7f070227);
        com.dianxinos.dxbs.R.id _tmp7 = ly.f;
        g = (ImageView)findViewById(0x7f07022a);
        com.dianxinos.dxbs.R.id _tmp8 = ly.f;
        h = (ImageView)findViewById(0x7f07022c);
        com.dianxinos.dxbs.R.id _tmp9 = ly.f;
        i = (ImageView)findViewById(0x7f07022e);
        com.dianxinos.dxbs.R.id _tmp10 = ly.f;
        j = (ImageView)findViewById(0x7f070228);
        com.dianxinos.dxbs.R.id _tmp11 = ly.f;
        k = findViewById(0x7f07001d);
        k.setOnClickListener(this);
        m = getResources();
        Resources resources = m;
        com.dianxinos.dxbs.R.drawable _tmp12 = ly.e;
        n = resources.getDrawable(0x7f0201f2);
        Resources resources1 = m;
        com.dianxinos.dxbs.R.drawable _tmp13 = ly.e;
        o = resources1.getDrawable(0x7f0201f1);
        b = amb.a(getApplicationContext());
        p = b.b();
        a = b.a();
        a(a);
    }

    public void onPause()
    {
        super.onPause();
        c.setOnClickListener(null);
        d.setOnClickListener(null);
        e.setOnClickListener(null);
        f.setOnClickListener(null);
    }

    public void onResume()
    {
        super.onResume();
        MainTitle maintitle = q;
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        maintitle.setLeftButtonIcon(0x7f020450);
        q.setLeftButtonOnclickListener(new amf(this));
        c.setOnClickListener(this);
        d.setOnClickListener(this);
        e.setOnClickListener(this);
        f.setOnClickListener(this);
    }
}
