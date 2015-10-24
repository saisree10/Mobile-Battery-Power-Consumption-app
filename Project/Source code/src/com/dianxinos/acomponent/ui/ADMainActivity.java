// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.acomponent.ui;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import hb;
import hc;
import hd;
import hj;
import hk;
import hn;
import hs;
import hv;
import hy;
import hz;
import ia;
import ib;
import im;
import in;
import iq;
import ly;

public class ADMainActivity extends Activity
{

    private String a;
    private LinearLayout b;
    private LinearLayout c;
    private ImageView d;
    private ImageView e;
    private TextView f;
    private TextView g;
    private ImageView h;
    private TextView i;
    private TextView j;
    private hc k;
    private int l;
    private long m;
    private boolean n;
    private Handler o;
    private hk p;
    private android.view.View.OnTouchListener q;

    public ADMainActivity()
    {
        n = true;
        o = new Handler();
        p = new hv(this);
        q = new ia(this);
    }

    public static Handler a(ADMainActivity admainactivity)
    {
        return admainactivity.o;
    }

    private ImageView a(boolean flag)
    {
        LayoutInflater.from(this);
        ImageView imageview = new ImageView(this);
        if (flag)
        {
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            imageview.setImageResource(0x7f02019e);
            return imageview;
        } else
        {
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            imageview.setImageResource(0x7f02019f);
            return imageview;
        }
    }

    private void a()
    {
        b();
        DisplayMetrics displaymetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        l = 0;
        ly.f;
        b = (LinearLayout)findViewById(0x7f0700da);
        ly.f;
        c = (LinearLayout)findViewById(0x7f0700df);
        ly.f;
        d = (ImageView)findViewById(0x7f0700db);
        ly.f;
        e = (ImageView)findViewById(0x7f0700dc);
        ly.f;
        f = (TextView)findViewById(0x7f0700dd);
        ly.f;
        g = (TextView)findViewById(0x7f0700de);
        ly.f;
        h = (ImageView)findViewById(0x7f0700e1);
        ly.f;
        j = (TextView)findViewById(0x7f0700e0);
        if (b != null)
        {
            b.setOnTouchListener(q);
        }
        if (h != null)
        {
            h.setOnClickListener(new hy(this));
        }
        hd hd1 = k.m[0];
        ly.f;
        i = (TextView)findViewById(0x7f0700d8);
        i.setText(hd1.b);
        int i1 = k.m.length;
        int j1 = 0;
        while (j1 < i1) 
        {
            ImageView imageview;
            if (j1 == l)
            {
                imageview = a(true);
            } else
            {
                imageview = a(false);
            }
            c.addView(imageview);
            j1++;
        }
        int k1 = (20 * getResources().getDisplayMetrics().densityDpi) / 160;
        in.b("ADMainActivity", (new StringBuilder()).append(" px : ").append(k1).toString());
        int l1 = 0;
        while (l1 < i1) 
        {
            android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)((ImageView)c.getChildAt(l1)).getLayoutParams();
            if (l1 == 0)
            {
                marginlayoutparams.leftMargin = 0;
            } else
            {
                marginlayoutparams.leftMargin = k1;
            }
            l1++;
        }
        c.requestLayout();
        String s;
        String s1;
        boolean flag;
        android.graphics.Bitmap bitmap;
        String s2;
        Exception exception;
        android.graphics.Bitmap bitmap1;
        if (hd1.j != null && hd1.j.length > 0)
        {
            s = hd1.j[0];
        } else
        {
            s = null;
        }
        s1 = im.a(this, s);
        flag = TextUtils.isEmpty(s1);
        bitmap = null;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_475;
        }
        bitmap1 = BitmapFactory.decodeFile(s1);
        bitmap = bitmap1;
_L1:
        if (bitmap != null)
        {
            d.setImageBitmap(bitmap);
            d.setVisibility(0);
        } else
        {
            d.setVisibility(8);
        }
        if (TextUtils.isEmpty(hd1.d) || hd1.k == 1)
        {
            f.setVisibility(8);
        } else
        {
            f.setVisibility(0);
            f.setText(hd1.d);
        }
        s2 = hd1.l;
        if (TextUtils.isEmpty(s2))
        {
            s2 = "Download";
            j.setVisibility(4);
        }
        j.setText(s2);
        j.requestLayout();
        j.setOnClickListener(new hz(this));
        if (hd1.k == 2)
        {
            d.setVisibility(8);
            e.setVisibility(8);
        }
        return;
        exception;
        exception.printStackTrace();
        bitmap = null;
          goto _L1
    }

    private void a(int i1)
    {
        long l1 = System.currentTimeMillis();
        if (l1 < 400L + m)
        {
            return;
        }
        m = l1;
        int j1 = l;
        int k1 = k.m.length;
        int i2 = j1 + i1;
        if (i2 < 0)
        {
            i2 = 0;
        }
        int j2;
        if (i2 == k1)
        {
            j2 = k1 - 1;
        } else
        {
            j2 = i2;
        }
        in.b("ADMainActivity", (new StringBuilder()).append(" switching from : ").append(j1).append("  to :").append(j2).toString());
        if (j2 != j1)
        {
            hd hd1 = k.m[j2];
            com.dianxinos.dxbs.R.id _tmp = ly.f;
            i = (TextView)findViewById(0x7f0700d8);
            i.setText(hd1.b);
            hd1.c = 1;
            d.setTag(Integer.valueOf(j2));
            String as[] = hd1.j;
            String s = null;
            if (as != null)
            {
                int k2 = hd1.j.length;
                s = null;
                if (k2 > 0)
                {
                    s = hd1.j[0];
                }
            }
            String s1 = im.a(this, s);
            String s2;
            if (s1 != null)
            {
                android.graphics.Bitmap bitmap = BitmapFactory.decodeFile(s1);
                d.setImageBitmap(bitmap);
                d.setVisibility(0);
            } else
            {
                d.setVisibility(8);
            }
            if (TextUtils.isEmpty(hd1.d) || hd1.k == 1)
            {
                f.setVisibility(8);
            } else
            {
                f.setVisibility(0);
                f.setText(hd1.d);
            }
            j.setVisibility(0);
            s2 = hd1.l;
            if (TextUtils.isEmpty(s2))
            {
                s2 = "Download";
                j.setVisibility(4);
            }
            j.setText(s2);
            j.requestLayout();
            j.setOnClickListener(new ib(this));
            if (hd1.k == 2)
            {
                d.setVisibility(8);
                e.setVisibility(8);
            }
        }
        l = j2;
        b(l);
    }

    public static void a(ADMainActivity admainactivity, int i1)
    {
        admainactivity.a(i1);
    }

    public static boolean a(ADMainActivity admainactivity, boolean flag)
    {
        admainactivity.n = flag;
        return flag;
    }

    private void b()
    {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        ScrollView scrollview = (ScrollView)findViewById(0x7f0700d9);
        android.view.ViewGroup.LayoutParams layoutparams = scrollview.getLayoutParams();
        int i1 = (396 * (displaymetrics.widthPixels - 2 * iq.a(this, 14))) / 436;
        if (displaymetrics.heightPixels <= 320)
        {
            i1 = (100 * (displaymetrics.widthPixels - 2 * iq.a(this, 14))) / 150;
        }
        layoutparams.height = i1;
        scrollview.setLayoutParams(layoutparams);
    }

    private void b(int i1)
    {
        int j1 = c.getChildCount();
        if (j1 > i1)
        {
            int k1 = 0;
            while (k1 < j1) 
            {
                ImageView imageview = (ImageView)c.getChildAt(k1);
                if (k1 == i1)
                {
                    com.dianxinos.dxbs.R.drawable _tmp = ly.e;
                    imageview.setImageResource(0x7f02019e);
                } else
                {
                    com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
                    imageview.setImageResource(0x7f02019f);
                }
                k1++;
            }
        }
    }

    public static void b(ADMainActivity admainactivity)
    {
        admainactivity.c();
    }

    private void c()
    {
        hd hd1 = k.m[l];
        String s = hd1.g;
        if (!TextUtils.isEmpty(s) && !TextUtils.isEmpty(hd1.f) && !TextUtils.isEmpty(hd1.h))
        {
            n = false;
            hj.a(this).a(a, s, hd1.f, hd1.h, 1, p);
        }
    }

    public void onBackPressed()
    {
        n = false;
        super.onBackPressed();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        ly.g;
        setContentView(0x7f030039);
        hb hb1 = hn.c(this).a();
        if (hb1 != null)
        {
            k = hb1.b;
            a = hb1.c;
            in.b("ADMainActivity", (new StringBuilder()).append(" rs.unitID  ").append(hb1.c).toString());
            in.b("ADMainActivity", (new StringBuilder()).append(" rs.content.unitID  ").append(hb1.b.a).toString());
        }
        if (k == null || k.c(this) < 1)
        {
            String s = im.b(this, "dxad_c.s");
            if (s != null)
            {
                hb hb2 = new hb(s, 0);
                if (hb2 != null && hb2.a())
                {
                    hb2.b.a();
                    int i1 = hb2.b.c(this);
                    in.b("ADMainActivity", " contnet read from file is ok for a show!  ");
                    if (i1 == 1)
                    {
                        k = hb2.b;
                        a = hb2.c;
                    }
                }
            }
        }
        if (k == null || k.c(this) != 1)
        {
            finish();
            return;
        }
        Exception exception;
        if (k.f == 1)
        {
            in.b("ADMainActivity", " tyep is  CONTENT_ACTION_DOWNLOAD_DIRECT 1");
            c();
            finish();
            return;
        }
          goto _L1
_L3:
        hs.a(this).a("la", null);
        return;
_L1:
        try
        {
            in.b("ADMainActivity", "go on init view ");
            a();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        if (true) goto _L3; else goto _L2
_L2:
    }

    protected void onResume()
    {
        super.onResume();
        n = true;
    }

    protected void onStop()
    {
        super.onStop();
        if (n)
        {
            hn.c(this).a(this, false, false);
        }
    }
}
