// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui;

import aio;
import aiq;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import ato;
import avk;
import bap;
import bdm;
import bdv;
import bec;
import bed;
import beh;
import bei;
import bek;
import ly;

public class HistoryChartView extends FrameLayout
{

    private bec a;
    private bei b;
    private bed c;
    private bdm d;
    private double e[];
    private double f[];
    private double g[] = {
        -24D, 24D, 0.0D, 100D
    };
    private boolean h;
    private ImageView i;
    private Context j;

    public HistoryChartView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = new bec();
        b = new bei();
        h = false;
        com.dianxinos.dxbs.R.styleable _tmp = ly.k;
        context.obtainStyledAttributes(attributeset, com.dianxinos.dxbs.R.styleable.MainTitle).recycle();
        j = context.getApplicationContext();
        c();
    }

    private int a(double ad[])
    {
        int k = 0;
        int l = ad.length;
        for (int i1 = 0; i1 < l; i1++)
        {
            if (ad[i1] != 0.0D)
            {
                k++;
            }
        }

        return k;
    }

    public static ImageView a(HistoryChartView historychartview)
    {
        return historychartview.i;
    }

    private void a(String s)
    {
        bed bed1 = new bed(s);
        a.a(bed1);
        c = bed1;
        bek bek1 = new bek();
        b.a(bek1);
        Resources resources = j.getResources();
        com.dianxinos.dxbs.R.dimen _tmp = ly.d;
        bek1.b(resources.getDimensionPixelSize(0x7f0800cd));
        bek1.c(true);
        bek1.a(2.0F);
        bek1.a(true);
        bek1.a(bdv.b);
    }

    private void b(double ad[])
    {
        int k = 0;
        int l = 0;
        int i1 = 0;
        int j1 = -1;
        while (k < ad.length) 
        {
            if (ad[k] != 0.0D)
            {
                l++;
                if (i1 != 0 && j1 != -1)
                {
                    double d1 = (ad[k] - ad[j1]) / (double)(i1 + 1);
                    for (; i1 != 0; i1--)
                    {
                        ad[k - i1] = d1 + ad[-1 + (k - i1)];
                    }

                }
                j1 = k;
            } else
            if (j1 != -1)
            {
                i1++;
            }
            k++;
        }
        if (l >= 2)
        {
            h = true;
        }
    }

    private void c()
    {
        d();
        e();
        f();
    }

    private void d()
    {
        Resources resources = getResources();
        com.dianxinos.dxbs.R.dimen _tmp = ly.d;
        int k = resources.getDimensionPixelSize(0x7f08009b);
        Resources resources1 = getResources();
        com.dianxinos.dxbs.R.color _tmp1 = ly.c;
        int l = resources1.getColor(0x7f090044);
        Resources resources2 = getResources();
        com.dianxinos.dxbs.R.color _tmp2 = ly.c;
        int i1 = resources2.getColor(0x7f090048);
        Resources resources3 = getResources();
        com.dianxinos.dxbs.R.dimen _tmp3 = ly.d;
        int j1 = resources3.getDimensionPixelSize(0x7f0800ce);
        b.a(k);
        b.w(l);
        b.c(i1);
        b.b(false);
        b.o(0);
        b.d(2);
        b.a(0.0D, 0);
        b.b(24D, 0);
        String[] _tmp4 = new String[17];
        String as[];
        int k1;
        if (bap.b(j))
        {
            Resources resources5 = j.getResources();
            com.dianxinos.dxbs.R.array _tmp5 = ly.m;
            as = resources5.getStringArray(0x7f0d000e);
        } else
        {
            Resources resources4 = j.getResources();
            com.dianxinos.dxbs.R.array _tmp6 = ly.m;
            as = resources4.getStringArray(0x7f0d000f);
        }
        for (k1 = 0; k1 < 17; k1++)
        {
            b.a(-24 + k1 * 3, as[k1]);
        }

        b.r(0);
        b.d(j1);
        b.a(0.0D);
        b.b(100D);
        b.b(0.0D, "");
        b.b(20D, "");
        b.b(40D, "");
        b.b(60D, "");
        b.b(80D, "");
        bei bei1 = b;
        StringBuilder stringbuilder = (new StringBuilder()).append("100%");
        Context context = j;
        com.dianxinos.dxbs.R.string _tmp7 = ly.i;
        bei1.b(100D, stringbuilder.append(context.getString(0x7f0a0235)).toString());
        b.a(0, l);
        b.a(android.graphics.Paint.Align.LEFT);
        b.c(true);
        b.d(false);
        b.b(false, false);
        b.c(6F);
        b.a(true, false);
        b.a(g);
        bei bei2 = b;
        int ai[] = new int[4];
        ai[0] = j1 + 25;
        ai[1] = 0;
        ai[2] = 0;
        ai[3] = 0;
        bei2.a(ai);
        b.s(Color.argb(0, 255, 0, 0));
        b.b(0);
        b.a(true);
        b.a(new avk(this));
    }

    private void e()
    {
        d = new bdm(j, new aiq(a, b, j));
        addView(d, new android.widget.FrameLayout.LayoutParams(-1, -1));
        i = new ImageView(j);
        ImageView imageview = i;
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        imageview.setImageResource(0x7f02013d);
        i.setScaleType(android.widget.ImageView.ScaleType.CENTER_INSIDE);
        i.setVisibility(8);
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-2, -1);
        i.setLayoutParams(layoutparams);
        addView(i);
    }

    private void f()
    {
        aio aio1;
        aio1 = aio.a(j);
        e = aio1.a();
        f = aio1.b();
        if (e != null && f != null && a(e) + a(f) >= 2) goto _L2; else goto _L1
_L1:
        if (!ato.a(j).d()) goto _L4; else goto _L3
_L3:
        e = aio1.a();
        f = aio1.b();
        if (e != null && f != null) goto _L2; else goto _L4
_L4:
        return;
_L2:
        double ad[] = new double[49];
        System.arraycopy(f, 0, ad, 0, f.length);
        System.arraycopy(e, 0, ad, -1 + f.length, e.length);
        b(ad);
        if (h)
        {
            a("forwholechart");
            b.a(-1 + b.d()).a(0);
            c.a(0.0D, 0.0D);
            c.a(24D, 0.0D);
            Context context = j;
            ly.i;
            a(context.getString(0x7f0a01aa));
            bek bek1 = (bek)b.a(-1 + b.d());
            bek1.b(true);
            Resources resources = j.getResources();
            ly.c;
            bek1.a(resources.getColor(0x7f090045));
            int k = bap.a(System.currentTimeMillis());
            int l = 0;
            while (l < 24 + (k + 1)) 
            {
                if (ad[l] != 0.0D)
                {
                    c.a(l - 24, ad[l]);
                }
                l++;
            }
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public void a()
    {
        a.a();
        b.N();
        b.O();
        d();
        f();
    }

    public boolean b()
    {
        return h;
    }
}
