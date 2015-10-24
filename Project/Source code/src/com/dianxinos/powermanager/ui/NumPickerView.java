// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.NinePatchDrawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.ScrollView;
import avz;
import ly;

public class NumPickerView extends ScrollView
{

    private static String c = "NumPickerView";
    private boolean A;
    private int B;
    private int C;
    private float D;
    private float E;
    private float F;
    private float G;
    private float H;
    private NinePatchDrawable I;
    private int J;
    public boolean a;
    public int b;
    private avz d;
    private int e;
    private long f;
    private long g;
    private int h;
    private int i;
    private DecelerateInterpolator j;
    private Paint k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private VelocityTracker s;
    private int t;
    private int u;
    private int v;
    private final float w;
    private int x;
    private String y[];
    private int z;

    public NumPickerView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        e = 0;
        a = false;
        k = new Paint();
        o = 0;
        q = 0;
        r = 0;
        x = 0;
        z = 0;
        b = 0;
        A = true;
        ViewConfiguration viewconfiguration = ViewConfiguration.get(super.getContext());
        t = viewconfiguration.getScaledMinimumFlingVelocity();
        u = viewconfiguration.getScaledMaximumFlingVelocity();
        v = viewconfiguration.getScaledTouchSlop();
        j = new DecelerateInterpolator(1.0F);
        w = 386.0878F * (160F * context.getResources().getDisplayMetrics().density) * ViewConfiguration.getScrollFriction();
        Resources resources = getResources();
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        I = (NinePatchDrawable)resources.getDrawable(0x7f0203c9);
        Resources resources1 = getContext().getResources();
        com.dianxinos.dxbs.R.dimen _tmp1 = ly.d;
        G = resources1.getDimensionPixelSize(0x7f08014b);
        Resources resources2 = getContext().getResources();
        com.dianxinos.dxbs.R.dimen _tmp2 = ly.d;
        H = resources2.getDimensionPixelSize(0x7f08014a);
    }

    private int a(int i1)
    {
        e;
        JVM INSTR tableswitch 0 5: default 44
    //                   0 75
    //                   1 154
    //                   2 250
    //                   3 358
    //                   4 44
    //                   5 304;
           goto _L1 _L2 _L3 _L4 _L5 _L1 _L6
_L1:
        break; /* Loop/switch isn't completed */
_L5:
        break MISSING_BLOCK_LABEL_358;
_L7:
        double d1;
        if (!A)
        {
            if (i > C)
            {
                i = C;
            } else
            if (i < B)
            {
                i = B;
            }
        }
        return i;
_L2:
        x = x + (r - q);
        q = r;
        if (!A)
        {
            if (x > C)
            {
                x = C;
            } else
            if (x < B)
            {
                x = B;
            }
        }
        return x;
_L3:
        if (Math.abs(i1) > 0)
        {
            d1 = (float)(i1 * i1) / (2.0F * w);
            if (i1 < 0)
            {
                d1 = -d1;
            }
            g = (int)((float)(1000 * Math.abs(i1)) / w);
            a = true;
            f = AnimationUtils.currentAnimationTimeMillis();
            h = x;
            i = (int)Math.floor((d1 + (double)x) / (double)n) * n;
        }
          goto _L7
_L4:
        g = 300L;
        a = true;
        f = AnimationUtils.currentAnimationTimeMillis();
        h = x;
        i = (int)Math.floor((double)x / (double)n) * n;
          goto _L7
_L6:
        g = 300L;
        a = true;
        f = AnimationUtils.currentAnimationTimeMillis();
        h = x;
        i = (int)Math.round((double)x / (double)n) * n;
          goto _L7
        g = 500L;
        a = true;
        f = AnimationUtils.currentAnimationTimeMillis();
        h = x;
        i = (int)Math.round((double)(x + n) / (double)n) * n;
          goto _L7
    }

    private void a()
    {
        long l1 = AnimationUtils.currentAnimationTimeMillis() - f;
        long l2 = g - l1;
        int i1 = i - h;
        if (l2 <= 0L)
        {
            a = false;
            return;
        } else
        {
            float f1 = j.getInterpolation((float)l1 / (float)g);
            x = h + (int)(f1 * (float)i1);
            invalidate();
            return;
        }
    }

    private void a(Canvas canvas)
    {
        new Path();
        float f1 = (E - (float)I.getMinimumHeight()) / 2.0F;
        float f2 = (E + (float)I.getMinimumHeight()) / 2.0F;
        I.setBounds(0, (int)f1, (int)F, (int)f2);
        I.draw(canvas);
    }

    private int getIndexFromOffset()
    {
        if (x < 0)
        {
            return (int)Math.abs(Math.ceil(x / n));
        }
        if (x > 0)
        {
            return (int)Math.abs(Math.ceil((x - o) / n));
        } else
        {
            return 0;
        }
    }

    private int getPositionFromOffset()
    {
        if (x < 0)
        {
            return (x - (x / n) * n) + m + p;
        }
        if (x > 0)
        {
            int i1 = x - o;
            return (i1 - (i1 / n) * n) + m + p;
        } else
        {
            return m + p;
        }
    }

    public void a(Canvas canvas, int i1, int j1)
    {
        while (j1 > -m - p && j1 < getHeight() + m + p) 
        {
            k.setAntiAlias(true);
            if ((float)j1 >= (E - G - (float)(2 * m)) / 2.0F && (float)j1 <= (E + G + (float)(2 * m)) / 2.0F)
            {
                if (b != i1 && d != null)
                {
                    b = i1;
                    d.a(this, b);
                }
                k.setTextSize(G);
                canvas.drawText(y[i1], D, j1, k);
            } else
            {
                k.setTextSize(H);
                canvas.drawText(y[i1], D, j1, k);
            }
            if (++i1 == l)
            {
                i1 = 0;
            }
            j1 += n;
        }
    }

    public void a(String as[], Paint paint, int i1, int j1)
    {
        y = as;
        k = paint;
        l = y.length;
        p = (int)paint.getTextSize();
        G = p;
        H = p;
        z = j1;
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (!A)
        {
            C = 0;
            B = 1 * -n;
        }
        if (a)
        {
            a();
        }
        if (Math.abs(x) >= o)
        {
            x = x - (x / o) * o;
        }
        int i1 = getIndexFromOffset();
        int j1 = getPositionFromOffset();
        a(canvas);
        a(canvas, i1, j1);
    }

    public void onMeasure(int i1, int j1)
    {
        super.onMeasure(i1, j1);
        E = getMeasuredHeight();
        F = getMeasuredWidth();
        m = (int)((E - G - 2.0F * H) / 3F / 2.0F);
        D = (F - (float)p) / 2.0F;
        n = 2 * m + p;
        o = n * y.length;
        if (z != 0)
        {
            x = -z * n;
            z = 0;
            return;
        } else
        {
            x = -n * (-1 + J);
            return;
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i1;
        float f1;
        i1 = motionevent.getAction();
        f1 = motionevent.getY();
        if (s == null)
        {
            s = VelocityTracker.obtain();
        }
        s.addMovement(motionevent);
        i1;
        JVM INSTR tableswitch 0 2: default 60
    //                   0 62
    //                   1 144
    //                   2 87;
           goto _L1 _L2 _L3 _L4
_L1:
        return true;
_L2:
        e = 4;
        if (a)
        {
            a = false;
        }
        q = (int)f1;
        return true;
_L4:
        r = (int)f1;
        if (e == 0 || Math.abs(r - q) > v && e == 4)
        {
            e = 0;
            a(0);
            invalidate();
            return true;
        }
          goto _L1
_L3:
        if (e != 4) goto _L6; else goto _L5
_L5:
        e = 3;
        a(0);
        invalidate();
_L8:
        e = -1;
        q = 0;
        r = 0;
        return true;
_L6:
        e = 1;
        VelocityTracker velocitytracker = s;
        velocitytracker.computeCurrentVelocity(1000, u);
        int j1 = (int)velocitytracker.getYVelocity();
        if (Math.abs(j1) > t)
        {
            a(j1);
            invalidate();
        }
        if (s != null)
        {
            s.recycle();
            s = null;
        }
        if (!a)
        {
            e = 5;
            a(0);
            invalidate();
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void setCurrentSelected(int i1)
    {
        if (i1 == 0)
        {
            J = l;
        }
        J = i1;
    }

    public void setObserver(avz avz1)
    {
        d = avz1;
    }

}
