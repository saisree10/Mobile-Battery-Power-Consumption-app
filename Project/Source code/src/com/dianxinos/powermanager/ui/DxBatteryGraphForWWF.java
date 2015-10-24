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

public class DxBatteryGraphForWWF extends FrameLayout
{

    private boolean A;
    private Context B;
    private Resources C;
    private Bitmap a;
    private boolean b;
    private ImageView c;
    private TextView d;
    private int e;
    private int f;
    private int g;
    private int h;
    private boolean i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private ImageView q;
    private Animation r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private int x;
    private adp y;
    private ImageView z;

    public DxBatteryGraphForWWF(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = false;
        g = 1;
        A = false;
        B = context;
        C = B.getResources();
        y = adp.a(context);
        com.dianxinos.dxbs.R.styleable _tmp = ly.k;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.dianxinos.dxbs.R.styleable.DxbatteryGraph);
        com.dianxinos.dxbs.R.styleable _tmp1 = ly.k;
        g = typedarray.getInt(0, 1);
        com.dianxinos.dxbs.R.styleable _tmp2 = ly.k;
        k = typedarray.getInt(2, 1);
        com.dianxinos.dxbs.R.styleable _tmp3 = ly.k;
        i = typedarray.getBoolean(1, true);
        typedarray.recycle();
        Resources resources = C;
        com.dianxinos.dxbs.R.dimen _tmp4 = ly.d;
        v = resources.getDimensionPixelSize(0x7f0800bd);
        Resources resources1 = C;
        com.dianxinos.dxbs.R.dimen _tmp5 = ly.d;
        w = resources1.getDimensionPixelSize(0x7f0800be);
        Resources resources2 = C;
        com.dianxinos.dxbs.R.dimen _tmp6 = ly.d;
        x = resources2.getDimensionPixelSize(0x7f0800bf);
        int i1;
        if (k == 1)
        {
            if (g == 0)
            {
                com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
                l = 0x7f020025;
                com.dianxinos.dxbs.R.drawable _tmp8 = ly.e;
                m = 0x7f020022;
                com.dianxinos.dxbs.R.drawable _tmp9 = ly.e;
                n = 0x7f02001c;
                com.dianxinos.dxbs.R.drawable _tmp10 = ly.e;
                o = 0x7f020017;
                com.dianxinos.dxbs.R.drawable _tmp11 = ly.e;
                p = 0x7f02001a;
                com.dianxinos.dxbs.R.drawable _tmp12 = ly.e;
                h = 0x7f02001f;
                com.dianxinos.dxbs.R.drawable _tmp13 = ly.e;
                j = 0x7f020013;
            } else
            {
                com.dianxinos.dxbs.R.drawable _tmp14 = ly.e;
                l = 0x7f020023;
                com.dianxinos.dxbs.R.drawable _tmp15 = ly.e;
                m = 0x7f020020;
                com.dianxinos.dxbs.R.drawable _tmp16 = ly.e;
                n = 0x7f020014;
                com.dianxinos.dxbs.R.drawable _tmp17 = ly.e;
                o = 0x7f020015;
                com.dianxinos.dxbs.R.drawable _tmp18 = ly.e;
                p = 0x7f020018;
                com.dianxinos.dxbs.R.drawable _tmp19 = ly.e;
                h = 0x7f02001d;
                com.dianxinos.dxbs.R.drawable _tmp20 = ly.e;
                j = 0x7f020011;
            }
            com.dianxinos.dxbs.R.layout _tmp21 = ly.g;
            i1 = 0x7f030010;
        } else
        {
            com.dianxinos.dxbs.R.drawable _tmp22 = ly.e;
            l = 0x7f020024;
            com.dianxinos.dxbs.R.drawable _tmp23 = ly.e;
            m = 0x7f020021;
            com.dianxinos.dxbs.R.drawable _tmp24 = ly.e;
            n = 0x7f02001b;
            com.dianxinos.dxbs.R.drawable _tmp25 = ly.e;
            o = 0x7f020016;
            com.dianxinos.dxbs.R.drawable _tmp26 = ly.e;
            p = 0x7f020019;
            com.dianxinos.dxbs.R.drawable _tmp27 = ly.e;
            h = 0x7f02001e;
            com.dianxinos.dxbs.R.drawable _tmp28 = ly.e;
            j = 0x7f020012;
            com.dianxinos.dxbs.R.layout _tmp29 = ly.g;
            i1 = 0x7f03000a;
        }
        inflate(getContext(), i1, this);
    }

    private Bitmap a(Bitmap bitmap, int i1, int j1, int k1, int l1, boolean flag)
    {
        if (b)
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
            int i1 = u;
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
        A = true;
        a(100, false, 1);
    }

    public void a(int i1, boolean flag, int j1)
    {
        Bitmap bitmap = a;
        if (bitmap == null)
        {
            return;
        }
        c.setBackgroundResource(0);
        Bitmap bitmap1;
        if (k == 0)
        {
            int l2 = (int)(((1.0F * (float)x) / (float)bitmap.getHeight()) * (float)bitmap.getWidth());
            ImageView imageview = c;
            Resources resources1 = C;
            com.dianxinos.dxbs.R.dimen _tmp = ly.d;
            imageview.setPadding(resources1.getDimensionPixelSize(0x7f0801eb), 0, 0, 0);
            int i3 = (l2 * i1) / 100;
            if (i3 < 1)
            {
                i3 = 1;
            }
            bitmap1 = zr.a(a(bitmap, i3, x, l2, x, false), 4);
        } else
        {
            int k1;
            int l1;
            int i2;
            int j2;
            boolean flag1;
            Resources resources;
            int k2;
            if (g == 0)
            {
                k1 = w;
            } else
            {
                k1 = v;
            }
            l1 = (int)(((1.0F * (float)k1) / (float)bitmap.getWidth()) * (float)bitmap.getHeight());
            i2 = (l1 * i1) / 100;
            if (i2 < 1)
            {
                i2 = 1;
            }
            bitmap1 = a(bitmap, k1, i2, k1, l1, true);
            j2 = bitmap1.getHeight();
            flag1 = false;
            if (j2 >= 4)
            {
                bitmap1 = zr.a(bitmap1, 4);
                flag1 = true;
            }
            resources = C;
            com.dianxinos.dxbs.R.dimen _tmp1 = ly.d;
            k2 = resources.getDimensionPixelSize(0x7f0801ec);
            c.setPadding(k2, 0, k2, 1 + (u - a(bitmap1, flag1)));
        }
        c.setImageBitmap(bitmap1);
        if (b)
        {
            azt.a("DxBatteryGraph", (new StringBuilder()).append("height: ").append(s).append(", total : ").append(e).toString());
        }
        if (flag && i)
        {
            if (b)
            {
                azt.a("DxBatteryGraph", "thender show");
            }
            q.setVisibility(0);
            q.startAnimation(r);
        } else
        {
            q.clearAnimation();
            q.setVisibility(4);
        }
        d.setText((new StringBuilder()).append(i1).append("%").toString());
    }

    public int getBatteryHeight()
    {
        return e;
    }

    public int getBatteryLiquidHeight()
    {
        return s;
    }

    public float getLesseningScale()
    {
        if (!azf.c(B)) goto _L2; else goto _L1
_L1:
        float f1 = 120F / (float)160;
_L4:
        return 2.0F / f1;
_L2:
        if (azf.d(B))
        {
            f1 = 160F / (float)160;
        } else
        if (azf.e(B))
        {
            f1 = 240F / (float)160;
        } else
        {
            boolean flag = azf.f(B);
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
        r = AnimationUtils.loadAnimation(context, 0x7f040002);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        q = (ImageView)findViewById(0x7f07002e);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        c = (ImageView)findViewById(0x7f07002c);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        d = (TextView)findViewById(0x7f07002f);
        if (g == 0)
        {
            Resources resources8 = getResources();
            com.dianxinos.dxbs.R.dimen _tmp4 = ly.d;
            e = (int)resources8.getDimension(0x7f0800bb);
        } else
        {
            Resources resources = getResources();
            com.dianxinos.dxbs.R.dimen _tmp5 = ly.d;
            e = (int)resources.getDimension(0x7f0800ba);
        }
        if (azf.c(B) && k != 1)
        {
            Resources resources7 = getResources();
            com.dianxinos.dxbs.R.dimen _tmp6 = ly.d;
            e = (int)resources7.getDimension(0x7f0800bc);
        }
        if (k == 1)
        {
            if (g == 0)
            {
                Resources resources5 = C;
                com.dianxinos.dxbs.R.dimen _tmp7 = ly.d;
                t = resources5.getDimensionPixelSize(0x7f0800c6);
                Resources resources6 = C;
                com.dianxinos.dxbs.R.dimen _tmp8 = ly.d;
                u = resources6.getDimensionPixelSize(0x7f0800c7);
            } else
            {
                Resources resources3 = C;
                com.dianxinos.dxbs.R.dimen _tmp9 = ly.d;
                t = resources3.getDimensionPixelSize(0x7f0800c0);
                Resources resources4 = C;
                com.dianxinos.dxbs.R.dimen _tmp10 = ly.d;
                u = resources4.getDimensionPixelSize(0x7f0800c1);
            }
        } else
        {
            Resources resources1 = C;
            com.dianxinos.dxbs.R.dimen _tmp11 = ly.d;
            t = (int)resources1.getDimension(0x7f0800c4);
            Resources resources2 = C;
            com.dianxinos.dxbs.R.dimen _tmp12 = ly.d;
            u = resources2.getDimensionPixelSize(0x7f0800c5);
        }
        com.dianxinos.dxbs.R.id _tmp13 = ly.f;
        z = (ImageView)findViewById(0x7f07002d);
        z.setBackgroundResource(j);
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
            if (k == flag)
            {
                e = getMeasuredHeight();
            } else
            {
                e = getMeasuredWidth();
            }
            if (f != e)
            {
                f = e;
                add1 = acz.a(B).c();
                if (!A)
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
        TextView textview = d;
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

    public void setWWFSkinThumbnail(Bitmap bitmap)
    {
        a = bitmap;
    }
}
