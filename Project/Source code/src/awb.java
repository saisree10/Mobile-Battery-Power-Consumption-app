// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

public class awb
{

    private static float w = 8F;
    private static float x = 1.0F;
    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private long l;
    private int m;
    private float n;
    private float o;
    private float p;
    private boolean q;
    private Interpolator r;
    private float s;
    private float t;
    private float u;
    private final float v;

    public awb(Context context)
    {
        this(context, null);
    }

    public awb(Context context, Interpolator interpolator)
    {
        s = 0.0F;
        t = 1.0F;
        q = true;
        r = interpolator;
        v = 386.0878F * (160F * context.getResources().getDisplayMetrics().density) * ViewConfiguration.getScrollFriction();
    }

    static float a(float f1)
    {
        float f2 = f1 * w;
        float f3;
        if (f2 < 1.0F)
        {
            f3 = f2 - (1.0F - (float)Math.exp(-f2));
        } else
        {
            f3 = 0.3678795F + (1.0F - (float)Math.exp(1.0F - f2)) * (1.0F - 0.3678795F);
        }
        return f3 * x;
    }

    public int a(int i1, float f1)
    {
        if (i1 > 0)
        {
            return (int)((double)f1 * Math.sqrt(2.0F * v * (float)i1));
        } else
        {
            return 0 - (int)((double)f1 * Math.sqrt(2.0F * v * (float)Math.abs(i1)));
        }
    }

    public void a(int i1)
    {
        d = i1;
        o = d - b;
        q = false;
    }

    public void a(int i1, int j1, int k1, int l1)
    {
        a(i1, j1, k1, l1, 650);
    }

    public void a(int i1, int j1, int k1, int l1, int i2)
    {
        a = 0;
        q = false;
        m = i2;
        l = AnimationUtils.currentAnimationTimeMillis();
        b = i1;
        c = j1;
        d = i1 + k1;
        e = j1 + l1;
        o = k1;
        p = l1;
        n = 1.0F / (float)m;
    }

    public void a(int i1, int j1, int k1, int l1, int i2, int j2, int k2, 
            int l2)
    {
        float f1 = 1.0F;
        a = 1;
        q = false;
        float f2 = (float)Math.hypot(k1, l1);
        u = f2;
        m = (int)((1000F * f2) / v);
        l = AnimationUtils.currentAnimationTimeMillis();
        b = i1;
        c = j1;
        float f3;
        int i3;
        if (f2 == 0.0F)
        {
            f3 = f1;
        } else
        {
            f3 = (float)k1 / f2;
        }
        s = f3;
        if (f2 != 0.0F)
        {
            f1 = (float)l1 / f2;
        }
        t = f1;
        i3 = (int)((f2 * f2) / (2.0F * v));
        f = i2;
        g = j2;
        h = k2;
        i = l2;
        d = i1 + Math.round((float)i3 * s);
        d = Math.min(d, g);
        d = Math.max(d, f);
        e = j1 + Math.round((float)i3 * t);
        e = Math.min(e, i);
        e = Math.max(e, h);
    }

    public final boolean a()
    {
        return q;
    }

    public final int b()
    {
        return j;
    }

    public final int c()
    {
        return k;
    }

    public final int d()
    {
        return d;
    }

    public boolean e()
    {
        int i1;
        if (q)
        {
            return false;
        }
        i1 = (int)(AnimationUtils.currentAnimationTimeMillis() - l);
        if (i1 >= m) goto _L2; else goto _L1
_L1:
        a;
        JVM INSTR tableswitch 0 1: default 52
    //                   0 54
    //                   1 134;
           goto _L3 _L4 _L5
_L3:
        return true;
_L4:
        float f3 = (float)i1 * n;
        float f4;
        if (r == null)
        {
            f4 = a(f3);
        } else
        {
            f4 = r.getInterpolation(f3);
        }
        j = b + Math.round(f4 * o);
        k = c + Math.round(f4 * p);
        continue; /* Loop/switch isn't completed */
_L5:
        float f1 = (float)i1 / 1000F;
        float f2 = f1 * u - (f1 * (f1 * v)) / 2.0F;
        j = b + Math.round(f2 * s);
        j = Math.min(j, g);
        j = Math.max(j, f);
        k = c + Math.round(f2 * t);
        k = Math.min(k, i);
        k = Math.max(k, h);
        boolean flag;
        int j1;
        int k1;
        boolean flag1;
        if (Math.abs(j - b) >= Math.abs(d - b))
        {
            j = d;
            flag = true;
        } else
        {
            flag = false;
        }
        j1 = Math.abs(k - c);
        k1 = Math.abs(e - c);
        flag1 = false;
        if (j1 >= k1)
        {
            k = e;
            flag1 = true;
        }
        if (flag && flag1)
        {
            q = true;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        j = d;
        k = e;
        q = true;
        if (true) goto _L3; else goto _L6
_L6:
    }

    public void f()
    {
        j = d;
        k = e;
        q = true;
    }

    static 
    {
        x = 1.0F / a(1.0F);
    }
}
