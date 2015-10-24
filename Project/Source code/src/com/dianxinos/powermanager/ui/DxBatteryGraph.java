// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui;

import acz;
import add;
import adp;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import azf;
import azt;
import ly;
import zr;

public class DxBatteryGraph extends FrameLayout
{

    private Context A;
    private Resources B;
    private boolean a;
    private ImageView b;
    private TextView c;
    private int d;
    private int e;
    private int f;
    private int g;
    private boolean h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private ImageView p;
    private Animation q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private adp x;
    private ImageView y;
    private boolean z;

    public DxBatteryGraph(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = false;
        f = 1;
        z = false;
        A = context;
        B = A.getResources();
        x = adp.a(context);
        com.dianxinos.dxbs.R.styleable _tmp = ly.k;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.dianxinos.dxbs.R.styleable.DxbatteryGraph);
        com.dianxinos.dxbs.R.styleable _tmp1 = ly.k;
        f = typedarray.getInt(0, 1);
        com.dianxinos.dxbs.R.styleable _tmp2 = ly.k;
        j = typedarray.getInt(2, 1);
        com.dianxinos.dxbs.R.styleable _tmp3 = ly.k;
        h = typedarray.getBoolean(1, true);
        typedarray.recycle();
        Resources resources = B;
        com.dianxinos.dxbs.R.dimen _tmp4 = ly.d;
        u = resources.getDimensionPixelSize(0x7f0800bd);
        Resources resources1 = B;
        com.dianxinos.dxbs.R.dimen _tmp5 = ly.d;
        v = resources1.getDimensionPixelSize(0x7f0800be);
        Resources resources2 = B;
        com.dianxinos.dxbs.R.dimen _tmp6 = ly.d;
        w = resources2.getDimensionPixelSize(0x7f0800bf);
        int i1;
        if (j == 1)
        {
            if (f == 0)
            {
                com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
                k = 0x7f020025;
                com.dianxinos.dxbs.R.drawable _tmp8 = ly.e;
                l = 0x7f020022;
                com.dianxinos.dxbs.R.drawable _tmp9 = ly.e;
                m = 0x7f02001c;
                com.dianxinos.dxbs.R.drawable _tmp10 = ly.e;
                n = 0x7f020017;
                com.dianxinos.dxbs.R.drawable _tmp11 = ly.e;
                o = 0x7f02001a;
                com.dianxinos.dxbs.R.drawable _tmp12 = ly.e;
                g = 0x7f02001f;
                com.dianxinos.dxbs.R.drawable _tmp13 = ly.e;
                i = 0x7f020013;
            } else
            {
                com.dianxinos.dxbs.R.drawable _tmp14 = ly.e;
                k = 0x7f020023;
                com.dianxinos.dxbs.R.drawable _tmp15 = ly.e;
                l = 0x7f020020;
                com.dianxinos.dxbs.R.drawable _tmp16 = ly.e;
                m = 0x7f020014;
                com.dianxinos.dxbs.R.drawable _tmp17 = ly.e;
                n = 0x7f020015;
                com.dianxinos.dxbs.R.drawable _tmp18 = ly.e;
                o = 0x7f020018;
                com.dianxinos.dxbs.R.drawable _tmp19 = ly.e;
                g = 0x7f02001d;
                com.dianxinos.dxbs.R.drawable _tmp20 = ly.e;
                i = 0x7f020011;
            }
            com.dianxinos.dxbs.R.layout _tmp21 = ly.g;
            i1 = 0x7f030010;
        } else
        {
            com.dianxinos.dxbs.R.drawable _tmp22 = ly.e;
            k = 0x7f020024;
            com.dianxinos.dxbs.R.drawable _tmp23 = ly.e;
            l = 0x7f020021;
            com.dianxinos.dxbs.R.drawable _tmp24 = ly.e;
            m = 0x7f02001b;
            com.dianxinos.dxbs.R.drawable _tmp25 = ly.e;
            n = 0x7f020016;
            com.dianxinos.dxbs.R.drawable _tmp26 = ly.e;
            o = 0x7f020019;
            com.dianxinos.dxbs.R.drawable _tmp27 = ly.e;
            g = 0x7f02001e;
            com.dianxinos.dxbs.R.drawable _tmp28 = ly.e;
            i = 0x7f020012;
            com.dianxinos.dxbs.R.layout _tmp29 = ly.g;
            i1 = 0x7f03000a;
        }
        inflate(getContext(), i1, this);
    }

    private Bitmap a(Bitmap bitmap, int i1, int j1, int k1, int l1, boolean flag)
    {
        if (a)
        {
            azt.a("DxBatteryGraph", (new StringBuilder()).append("scaleAndCrop == ").append(i1).append(" : ").append(j1).append(" === ").append(k1).append(" ").append(l1).toString());
        }
        Bitmap bitmap1 = Bitmap.createScaledBitmap(bitmap, k1, l1, true);
        if (i1 == k1 && j1 == l1)
        {
            return bitmap1;
        }
        Bitmap bitmap2 = Bitmap.createBitmap(k1, l1, android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap2);
        int i2;
        int j2;
        int k2;
        Rect rect;
        int l2;
        if (flag)
        {
            i2 = l1 - Math.min(j1, bitmap1.getHeight());
        } else
        {
            i2 = 0;
        }
        j2 = Math.min(i1, bitmap1.getWidth());
        if (flag)
        {
            k2 = l1;
        } else
        {
            k2 = Math.min(j1, bitmap1.getHeight());
        }
        rect = new Rect(0, i2, j2, k2);
        if (flag)
        {
            l2 = l1 - j1;
        } else
        {
            l2 = 0;
        }
        if (!flag)
        {
            l1 = j1;
        }
        canvas.drawBitmap(bitmap1, rect, new Rect(0, l2, i1, l1), new Paint());
        bitmap1.recycle();
        return bitmap2;
    }

    private void b()
    {
    }

    public int a(Bitmap bitmap, boolean flag)
    {
        int j1;
        if (!flag)
        {
            j1 = 0;
        } else
        {
            int i1 = t;
            j1 = bitmap.getHeight() / 5;
            if (j1 >= i1)
            {
                return i1 + 1;
            }
        }
        return j1;
    }

    public void a()
    {
        z = true;
        a(100, false, 1);
    }

    public void a(int i1)
    {
    }

    public void a(int i1, boolean flag, int j1)
    {
        if (!x.c())
        {
            break MISSING_BLOCK_LABEL_469;
        }
        adp adp1 = x;
        String s1 = x.f();
        int l1 = x.g();
        boolean flag1;
        Bitmap bitmap;
        Bitmap bitmap1;
        if (j == 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        bitmap = adp1.a(s1, l1, flag1);
        if (bitmap == null)
        {
            break MISSING_BLOCK_LABEL_469;
        }
        b.setBackgroundResource(0);
        if (j == 0)
        {
            int j3 = (int)(((1.0F * (float)w) / (float)bitmap.getHeight()) * (float)bitmap.getWidth());
            ImageView imageview = b;
            Resources resources1 = B;
            ly.d;
            imageview.setPadding(resources1.getDimensionPixelSize(0x7f0801eb), 0, 0, 0);
            int k3 = (j3 * i1) / 100;
            if (k3 < 1)
            {
                k3 = 1;
            }
            bitmap1 = zr.a(a(bitmap, k3, w, j3, w, false), 4);
        } else
        {
            int i2;
            int j2;
            int k2;
            int l2;
            boolean flag2;
            Resources resources;
            int i3;
            if (f == 0)
            {
                i2 = v;
            } else
            {
                i2 = u;
            }
            j2 = (int)(((1.0F * (float)i2) / (float)bitmap.getWidth()) * (float)bitmap.getHeight());
            k2 = (j2 * i1) / 100;
            if (k2 < 1)
            {
                k2 = 1;
            }
            bitmap1 = a(bitmap, i2, k2, i2, j2, true);
            l2 = bitmap1.getHeight();
            flag2 = false;
            if (l2 >= 4)
            {
                bitmap1 = zr.a(bitmap1, 8);
                flag2 = true;
            }
            resources = B;
            ly.d;
            i3 = resources.getDimensionPixelSize(0x7f0801ec);
            b.setPadding(i3, 0, i3, 1 + (t - a(bitmap1, flag2)));
        }
        b.setImageBitmap(bitmap1);
_L1:
        if (a)
        {
            azt.a("DxBatteryGraph", (new StringBuilder()).append("height: ").append(r).append(", total : ").append(d).toString());
        }
        int k1;
        if (flag && h)
        {
            if (a)
            {
                azt.a("DxBatteryGraph", "thender show");
            }
            p.setVisibility(0);
            p.startAnimation(q);
        } else
        {
            p.clearAnimation();
            p.setVisibility(4);
        }
        c.setText((new StringBuilder()).append(i1).append("%").toString());
        return;
        b.setImageBitmap(null);
        if (j1 == 0)
        {
            if (i1 > 7)
            {
                b.setBackgroundResource(g);
            } else
            if (i1 > 2)
            {
                b.setBackgroundResource(k);
            } else
            {
                b.setBackgroundResource(l);
            }
        } else
        if (i1 >= 50)
        {
            b.setBackgroundResource(o);
        } else
        if (i1 < 50)
        {
            b.setBackgroundResource(m);
        } else
        {
            b.setBackgroundResource(n);
        }
        if (a)
        {
            azt.a("DxBatteryGraph", (new StringBuilder()).append("Top:").append(s).append(" Bottom:").append(t).toString());
        }
        k1 = t + (i1 * (d - s - t)) / 100;
        if (i1 <= 14)
        {
            k1 = (14 * d) / 100;
        }
        if (j == 1)
        {
            b.setMaxHeight(k1);
            b.setMinimumHeight(k1);
        } else
        {
            b.setMaxWidth(k1);
            b.setMinimumWidth(k1);
        }
        b.requestLayout();
        r = k1;
        if (i1 <= 7)
        {
            if (i1 > 2)
            {
                r = 10;
            } else
            {
                r = 1;
            }
        }
          goto _L1
    }

    public int getBatteryHeight()
    {
        return d;
    }

    public int getBatteryLiquidHeight()
    {
        return r;
    }

    public float getLesseningScale()
    {
        if (!azf.c(A)) goto _L2; else goto _L1
_L1:
        float f1 = 120F / (float)160;
_L4:
        return 2.0F / f1;
_L2:
        if (azf.d(A))
        {
            f1 = 160F / (float)160;
        } else
        if (azf.e(A))
        {
            f1 = 240F / (float)160;
        } else
        {
            boolean flag = azf.f(A);
            f1 = 0.0F;
            if (flag)
            {
                f1 = 320F / (float)160;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        Context context = getContext();
        com.dianxinos.dxbs.R.anim _tmp = ly.a;
        q = AnimationUtils.loadAnimation(context, 0x7f040002);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        p = (ImageView)findViewById(0x7f07002e);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        b = (ImageView)findViewById(0x7f07002c);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        c = (TextView)findViewById(0x7f07002f);
        if (f == 0)
        {
            Resources resources8 = getResources();
            com.dianxinos.dxbs.R.dimen _tmp4 = ly.d;
            d = (int)resources8.getDimension(0x7f0800bb);
        } else
        {
            Resources resources = getResources();
            com.dianxinos.dxbs.R.dimen _tmp5 = ly.d;
            d = (int)resources.getDimension(0x7f0800ba);
        }
        if (azf.c(A) && j != 1)
        {
            Resources resources7 = getResources();
            com.dianxinos.dxbs.R.dimen _tmp6 = ly.d;
            d = (int)resources7.getDimension(0x7f0800bc);
        }
        if (j == 1)
        {
            if (f == 0)
            {
                Resources resources5 = B;
                com.dianxinos.dxbs.R.dimen _tmp7 = ly.d;
                s = resources5.getDimensionPixelSize(0x7f0800c6);
                Resources resources6 = B;
                com.dianxinos.dxbs.R.dimen _tmp8 = ly.d;
                t = resources6.getDimensionPixelSize(0x7f0800c7);
            } else
            {
                Resources resources3 = B;
                com.dianxinos.dxbs.R.dimen _tmp9 = ly.d;
                s = resources3.getDimensionPixelSize(0x7f0800c0);
                Resources resources4 = B;
                com.dianxinos.dxbs.R.dimen _tmp10 = ly.d;
                t = resources4.getDimensionPixelSize(0x7f0800c1);
            }
        } else
        {
            Resources resources1 = B;
            com.dianxinos.dxbs.R.dimen _tmp11 = ly.d;
            s = (int)resources1.getDimension(0x7f0800c4);
            Resources resources2 = B;
            com.dianxinos.dxbs.R.dimen _tmp12 = ly.d;
            t = resources2.getDimensionPixelSize(0x7f0800c5);
        }
        com.dianxinos.dxbs.R.id _tmp13 = ly.f;
        y = (ImageView)findViewById(0x7f07002d);
        y.setBackgroundResource(i);
        b();
        setClickable(true);
        setFocusable(true);
        setDescendantFocusability(0x60000);
    }

    public void onMeasure(int i1, int j1)
    {
        boolean flag;
        add add1;
label0:
        {
            flag = true;
            super.onMeasure(i1, j1);
            if (j == flag)
            {
                d = getMeasuredHeight();
            } else
            {
                d = getMeasuredWidth();
            }
            if (e != d)
            {
                e = d;
                add1 = acz.a(A).c();
                if (!z)
                {
                    break label0;
                }
                a();
            }
            return;
        }
        int k1 = add1.j;
        if (add1.e == 0)
        {
            flag = false;
        }
        a(k1, flag, acz.a(add1.j));
    }

    public void setPercentTextVisble(boolean flag)
    {
        TextView textview = c;
        int i1;
        if (flag)
        {
            i1 = 0;
        } else
        {
            i1 = 4;
        }
        textview.setVisibility(i1);
    }
}
