// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;

public class awd
{

    private static final int b[];
    private static final int c = 0x7f0203a0;
    private static final int d[] = {
        0xff20962c, 0xff04eaff, 0xff64b7f9, 0xffc99854, 0xffa73ec8, 0xffecd93d
    };
    private Context a;
    private String e[];
    private int f[];
    private int g[];
    private float h;
    private float i;
    private float j;
    private float k;
    private float l;

    public awd(Context context)
    {
        a = context;
        Resources resources = context.getResources();
        com.dianxinos.dxbs.R.dimen _tmp = ly.d;
        h = resources.getDimension(0x7f080065);
        com.dianxinos.dxbs.R.dimen _tmp1 = ly.d;
        i = resources.getDimension(0x7f080066);
        com.dianxinos.dxbs.R.dimen _tmp2 = ly.d;
        j = resources.getDimension(0x7f080067);
        com.dianxinos.dxbs.R.dimen _tmp3 = ly.d;
        k = resources.getDimension(0x7f080068);
        com.dianxinos.dxbs.R.dimen _tmp4 = ly.d;
        l = resources.getDimension(0x7f080069);
    }

    private Canvas a(Canvas canvas, RectF rectf)
    {
        boolean flag = true;
        float f1 = i;
        float f2 = rectf.left + j;
        float f3 = f2 + f1 + k;
        float f4 = rectf.width() / 2.0F - k;
        float f5 = rectf.left + rectf.width() / 2.0F + k;
        float f6 = f5 + f1 + k;
        float f7 = rectf.right - j;
        float f8 = f1 + k;
        float f9 = rectf.top;
        RectF rectf1 = new RectF();
        float f10 = (rectf.height() - f8 * (float)e.length) / (float)(1 + e.length);
        if (f10 > 0.0F)
        {
            f8 += f10;
            f9 += f10;
        }
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setTextSize(i);
        Rect rect = new Rect();
        RectF rectf2 = new RectF();
        paint.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
        float f11 = f9;
        int i1 = 0;
        while (i1 < e.length) 
        {
            float f12;
            float f13;
            float f14;
            int j1;
            float f15;
            if (flag)
            {
                f12 = f4;
                f13 = f3;
                f14 = f2;
            } else
            {
                f12 = f7;
                f13 = f6;
                f14 = f5;
            }
            j1 = i1 % g.length;
            paint.setColor(g[j1]);
            rectf1.set(f14, f11, f14 + f1, f11 + f1);
            canvas.drawRoundRect(rectf1, l, l, paint);
            canvas.save();
            paint.getTextBounds(e[i1], 0, e[i1].length(), rect);
            f15 = (f11 + (f1 - (float)(rect.bottom - rect.top)) / 2.0F) - (float)rect.top;
            rectf2.set(f14, f11, f12, f11 + f1);
            canvas.clipRect(rectf2, android.graphics.Region.Op.REPLACE);
            paint.setTextAlign(android.graphics.Paint.Align.LEFT);
            paint.setColor(-1);
            canvas.drawText(e[i1], f13, f15, paint);
            canvas.restore();
            if (flag)
            {
                flag = false;
            } else
            {
                flag = true;
                f11 += f8;
            }
            i1++;
        }
        return canvas;
    }

    private PointF a(RectF rectf, float f1, float f2, int i1)
    {
        float f3;
        float f4;
        f3 = 0.8F;
        f4 = f1 + f2 / 2.0F;
        if (e.length != 1) goto _L2; else goto _L1
_L1:
        f3 = 0.0F;
_L4:
        float f5 = f3 * (rectf.width() / 2.0F);
        float f6 = rectf.centerX();
        float f7 = rectf.centerY();
        double d1 = 3.1415926535897931D * (double)(2.0F * (f4 / 360F));
        return new PointF((float)((double)f6 + (double)f5 * Math.cos(d1)), (float)((double)f7 + (double)f5 * Math.sin(d1)));
_L2:
        if (f2 > 180F)
        {
            f3 = 0.4F;
        } else
        if (f2 > 150F)
        {
            f3 = 0.5F;
        } else
        if (f2 > 60F)
        {
            f3 = 0.6F;
        } else
        if (f2 < 15F)
        {
            f3 = 0.9F;
        } else
        if (f2 >= 20F && (f2 >= 40F || (f4 <= 30F || f4 >= 150F) && (f4 <= 210F || f4 >= 330F)))
        {
            f3 = 0.7F;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void a(Canvas canvas, RectF rectf, int i1, float f1, float f2)
    {
label0:
        {
            int j1;
            int k1;
            int l1;
            int i2;
            Drawable drawable;
            int j2;
            Drawable drawable1;
            Drawable drawable2;
            int k2;
            Drawable drawable3;
            int l2;
            int i3;
            PointF pointf;
            int j3;
            int k3;
            int l3;
            int i4;
            int j4;
            if (i1 < 100)
            {
                j1 = 0;
            } else
            {
                j1 = 1;
            }
            k1 = (i1 / 10) % 10;
            l1 = i1 % 10;
            if (j1 > 0)
            {
                Drawable drawable4 = a.getResources().getDrawable(b[j1]);
                i2 = drawable4.getIntrinsicWidth();
                drawable = drawable4;
            } else
            {
                i2 = 0;
                drawable = null;
            }
            if (j1 <= 0)
            {
                j2 = 0;
                drawable1 = null;
                if (k1 <= 0)
                {
                    break label0;
                }
            }
            drawable1 = a.getResources().getDrawable(b[k1]);
            j2 = drawable1.getIntrinsicWidth();
        }
        drawable2 = a.getResources().getDrawable(b[l1]);
        k2 = drawable2.getIntrinsicWidth();
        drawable3 = a.getResources().getDrawable(c);
        l2 = drawable3.getIntrinsicWidth();
        i3 = l2 + (k2 + (i2 + j2));
        pointf = a(rectf, f1, f2, i3);
        j3 = (int)pointf.x - i3 / 2;
        k3 = (int)pointf.y - drawable2.getIntrinsicHeight() / 2;
        if (j1 > 0)
        {
            l3 = i2 + j3;
            drawable.setBounds(j3, k3, l3, k3 + drawable.getIntrinsicHeight());
            drawable.draw(canvas);
        } else
        {
            l3 = j3;
        }
        if (j1 > 0 || k1 > 0)
        {
            i4 = l3 + j2;
            drawable1.setBounds(l3, k3, i4, k3 + drawable1.getIntrinsicHeight());
            drawable1.draw(canvas);
        } else
        {
            i4 = l3;
        }
        j4 = i4 + k2;
        drawable2.setBounds(i4, k3, j4, k3 + drawable2.getIntrinsicHeight());
        drawable2.draw(canvas);
        drawable3.setBounds(j4, k3, j4 + l2, k3 + drawable3.getIntrinsicHeight());
        drawable3.draw(canvas);
    }

    private void a(RectF rectf, RectF rectf1, int i1, int j1, int k1, int l1)
    {
        Rect rect = new Rect();
        rect.set(i1, j1, k1, l1);
        rectf.set(rect);
        rectf1.set(rect);
        float f1 = rectf.width() - rectf.height();
        if (f1 > 0.0F)
        {
            rectf.right = rectf.right - f1;
            rectf1.left = rectf1.right - f1;
        } else
        {
            rectf.bottom = f1 + rectf.bottom;
            rectf1.top = f1 + rectf1.bottom;
        }
        rectf.inset(h, h);
        rectf1.inset(h, h);
    }

    private void a(String as[], int ai[], int ai1[])
    {
        e = as;
        f = new int[ai.length];
        System.arraycopy(ai, 0, f, 0, ai.length);
        g = new int[ai1.length];
        System.arraycopy(ai1, 0, g, 0, ai1.length);
    }

    public Canvas a(Canvas canvas, int i1, int j1, int k1, int l1)
    {
        if (f == null)
        {
            return null;
        }
        RectF rectf = new RectF();
        RectF rectf1 = new RectF();
        a(rectf, rectf1, i1, j1, k1, l1);
        canvas.drawColor(0);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setStyle(android.graphics.Paint.Style.FILL);
        paint.setTextAlign(android.graphics.Paint.Align.CENTER);
        paint.setTextSize(30F);
        paint.setTypeface(Typeface.SERIF);
        canvas.drawArc(rectf, 0.0F, 360F, true, paint);
        float f1 = 0.0F;
        for (int i2 = 0; i2 < f.length; i2++)
        {
            int j2 = i2 % g.length;
            paint.setColor(g[j2]);
            float f2 = (float)(360 * f[i2]) / 100F;
            canvas.drawArc(rectf, f1, f2, true, paint);
            a(canvas, rectf, f[i2], f1, f2);
            f1 += f2;
        }

        return a(canvas, rectf1);
    }

    public void a(String as[], int ai[])
    {
        a(as, ai, d);
    }

    static 
    {
        int ai[] = new int[10];
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        ai[0] = 0x7f020396;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        ai[1] = 0x7f020397;
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        ai[2] = 0x7f020398;
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        ai[3] = 0x7f020399;
        com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
        ai[4] = 0x7f02039a;
        com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
        ai[5] = 0x7f02039b;
        com.dianxinos.dxbs.R.drawable _tmp6 = ly.e;
        ai[6] = 0x7f02039c;
        com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
        ai[7] = 0x7f02039d;
        com.dianxinos.dxbs.R.drawable _tmp8 = ly.e;
        ai[8] = 0x7f02039e;
        com.dianxinos.dxbs.R.drawable _tmp9 = ly.e;
        ai[9] = 0x7f02039f;
        b = ai;
        com.dianxinos.dxbs.R.drawable _tmp10 = ly.e;
    }
}
