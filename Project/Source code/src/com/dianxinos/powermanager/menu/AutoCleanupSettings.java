// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.menu;

import aao;
import alo;
import alp;
import amb;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import com.dianxinos.powermanager.ui.DXSwitchButton;
import com.dianxinos.powermanager.ui.MainTitle;
import ly;

public class AutoCleanupSettings extends aao
    implements android.view.View.OnClickListener
{

    private amb a;
    private SeekBar b;
    private DXSwitchButton c;
    private ImageView d;
    private TextView e;
    private boolean f;
    private int g;
    private MainTitle h;
    private android.widget.SeekBar.OnSeekBarChangeListener i;

    public AutoCleanupSettings()
    {
        i = new alp(this);
    }

    public static int a(AutoCleanupSettings autocleanupsettings)
    {
        return autocleanupsettings.g;
    }

    public static int a(AutoCleanupSettings autocleanupsettings, int j)
    {
        autocleanupsettings.g = j;
        return j;
    }

    private void a(boolean flag)
    {
        if (flag)
        {
            c.setStatus(flag);
            d.setVisibility(8);
            return;
        } else
        {
            c.setStatus(flag);
            d.setVisibility(0);
            return;
        }
    }

    public static TextView b(AutoCleanupSettings autocleanupsettings)
    {
        return autocleanupsettings.e;
    }

    public void onBackPressed()
    {
        a.g(f);
        a.b(g);
        super.onBackPressed();
    }

    public void onClick(View view)
    {
        if (view == c)
        {
            if (!c.getStatus())
            {
                f = true;
                a(true);
            } else
            {
                f = false;
                a(false);
            }
            a.g(f);
        } else
        if (view == d)
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
        setContentView(0x7f030005);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        h = (MainTitle)findViewById(0x7f070007);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        TextView textview = (TextView)findViewById(0x7f070134);
        Resources resources = getResources();
        com.dianxinos.dxbs.R.dimen _tmp3 = ly.d;
        textview.setTextSize(0, resources.getDimension(0x7f0801b7));
        MainTitle maintitle = h;
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        c = (DXSwitchButton)maintitle.findViewById(0x7f070135);
        c.setVisibility(0);
        c.setOnClickListener(this);
        a = amb.a(this);
        f = a.h();
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        e = (TextView)findViewById(0x7f07001b);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        b = (SeekBar)findViewById(0x7f07001c);
        SeekBar seekbar = b;
        Resources resources1 = getResources();
        com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
        seekbar.setProgressDrawable(resources1.getDrawable(0x7f0203d4));
        SeekBar seekbar1 = b;
        Resources resources2 = getResources();
        com.dianxinos.dxbs.R.drawable _tmp8 = ly.e;
        seekbar1.setThumb(resources2.getDrawable(0x7f0203d5));
        g = a.i();
        com.dianxinos.dxbs.R.string _tmp9 = ly.i;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(g);
        String s = getString(0x7f0a016d, aobj);
        e.setText(s);
        b.setProgress(-1 + g / 5);
        b.setOnSeekBarChangeListener(i);
        com.dianxinos.dxbs.R.id _tmp10 = ly.f;
        d = (ImageView)findViewById(0x7f07001d);
        d.setOnClickListener(this);
    }

    public void onResume()
    {
        super.onResume();
        MainTitle maintitle = h;
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        maintitle.setLeftButtonIcon(0x7f020450);
        h.setLeftButtonOnclickListener(new alo(this));
        a(f);
    }
}
