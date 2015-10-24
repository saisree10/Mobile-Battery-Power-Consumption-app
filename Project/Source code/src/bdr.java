// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import java.io.Serializable;
import java.text.NumberFormat;
import java.util.List;

public abstract class bdr
    implements Serializable
{

    public bdr()
    {
    }

    private static float[] a(float f, float f1, float f2, float f3, int i, int j)
    {
        float f4 = 0.0F;
        float f5;
        float f6;
        if (f1 > (float)i)
        {
            float f19 = (f3 - f1) / (f2 - f);
            float f20 = (((float)i - f1) + f19 * f) / f19;
            float f21 = i;
            if (f20 < 0.0F)
            {
                f21 = f1 - f19 * f;
                f20 = 0.0F;
            } else
            if (f20 > (float)j)
            {
                f20 = j;
                f21 = (f1 + f19 * (float)j) - f19 * f;
            }
            f5 = f21;
            f6 = f20;
        } else
        if (f1 < 0.0F)
        {
            float f15 = (f3 - f1) / (f2 - f);
            float f16 = (-f1 + f15 * f) / f15;
            float f8;
            float f9;
            int k;
            float f10;
            float f11;
            float f12;
            float f17;
            float f18;
            if (f16 < 0.0F)
            {
                f18 = f1 - f15 * f;
                f17 = 0.0F;
            } else
            if (f16 > (float)j)
            {
                f17 = j;
                f18 = (f1 + f15 * (float)j) - f15 * f;
            } else
            {
                f17 = f16;
                f18 = 0.0F;
            }
            f5 = f18;
            f6 = f17;
        } else
        {
            f5 = f1;
            f6 = f;
        }
        if (f3 > (float)i)
        {
            float f13 = (f3 - f1) / (f2 - f);
            float f14 = (((float)i - f1) + f13 * f) / f13;
            float f7 = i;
            if (f14 < 0.0F)
            {
                f7 = f1 - f13 * f;
            } else
            if (f14 > (float)j)
            {
                f4 = j;
                f7 = (f1 + f13 * (float)j) - f13 * f;
            } else
            {
                f4 = f14;
            }
        } else
        if (f3 < 0.0F)
        {
            f8 = (f3 - f1) / (f2 - f);
            f9 = (-f1 + f8 * f) / f8;
            if (f9 < 0.0F)
            {
                f12 = f1 - f8 * f;
                f9 = 0.0F;
                f10 = f12;
            } else
            {
                k = f9 != (float)j;
                f10 = 0.0F;
                if (k > 0)
                {
                    f9 = j;
                    f10 = (f1 + f8 * (float)j) - f8 * f;
                }
            }
            f11 = f10;
            f4 = f9;
            f7 = f11;
        } else
        {
            f7 = f3;
            f4 = f2;
        }
        return (new float[] {
            f6, f5, f4, f7
        });
    }

    public abstract int a(int i);

    protected int a(Canvas canvas, bef bef1, String as[], int i, int j, int k, int l, 
            int i1, int j1, Paint paint, boolean flag)
    {
        float f = 32F;
        if (bef1.o())
        {
            float f1 = i;
            float f2 = f + (float)((k + i1) - j1);
            paint.setTextAlign(android.graphics.Paint.Align.LEFT);
            paint.setTextSize(bef1.t());
            int k1 = Math.min(as.length, bef1.d());
            int l1 = 0;
            while (l1 < k1) 
            {
                beh beh1 = bef1.a(l1);
                float f3 = a(l1);
                float f4;
                if (beh1.h())
                {
                    String s = as[l1];
                    float af[];
                    float f5;
                    int i2;
                    if (as.length == bef1.d())
                    {
                        paint.setColor(beh1.a());
                    } else
                    {
                        paint.setColor(0xffcccccc);
                    }
                    af = new float[s.length()];
                    paint.getTextWidths(s, af);
                    f5 = 0.0F;
                    i2 = af.length;
                    for (int j2 = 0; j2 < i2; j2++)
                    {
                        f5 += af[j2];
                    }

                    float f6 = f5 + (10F + f3);
                    float f7 = f1 + f6;
                    if (l1 > 0 && a(f7, bef1, j, l))
                    {
                        f1 = i;
                        f2 += bef1.t();
                        float f9 = f + bef1.t();
                        f7 = f1 + f6;
                        f4 = f9;
                    } else
                    {
                        f4 = f;
                    }
                    if (a(f7, bef1, j, l))
                    {
                        float f8 = (float)j - f1 - f3 - 10F;
                        if (a(bef1))
                        {
                            f8 = (float)l - f1 - f3 - 10F;
                        }
                        int k2 = paint.breakText(s, true, f8, af);
                        s = (new StringBuilder()).append(s.substring(0, k2)).append("...").toString();
                    }
                    if (!flag)
                    {
                        a(canvas, beh1, f1, f2, l1, paint);
                        a(canvas, s, 5F + (f1 + f3), f2 + 5F, paint);
                    }
                    f1 += f6;
                } else
                {
                    f4 = f;
                }
                l1++;
                f = f4;
            }
        }
        return Math.round(f + bef1.t());
    }

    protected int a(bef bef1, int i, float f)
    {
        int j = bef1.E();
        if (!bef1.o() || j != 0)
        {
            i = j;
        }
        if (!bef1.o() && bef1.k())
        {
            i = (int)(f + (4F * bef1.i()) / 3F);
        }
        return i;
    }

    public beb a(bea bea)
    {
        return null;
    }

    protected String a(NumberFormat numberformat, double d)
    {
        if (numberformat != null)
        {
            return numberformat.format(d);
        }
        if (d == (double)Math.round(d))
        {
            return (new StringBuilder()).append(Math.round(d)).append("").toString();
        } else
        {
            return (new StringBuilder()).append(d).append("").toString();
        }
    }

    public abstract void a(Canvas canvas, int i, int j, int k, int l, Paint paint);

    public abstract void a(Canvas canvas, beh beh1, float f, float f1, int i, Paint paint);

    protected void a(Canvas canvas, String s, float f, float f1, Paint paint)
    {
        if (s != null)
        {
            String as[] = s.split("\n");
            Rect rect = new Rect();
            int i = 0;
            int j = 0;
            for (; i < as.length; i++)
            {
                canvas.drawText(as[i], f, f1 + (float)j, paint);
                paint.getTextBounds(as[i], 0, as[i].length(), rect);
                j = 5 + (j + rect.height());
            }

        }
    }

    protected void a(Canvas canvas, List list, Paint paint, boolean flag)
    {
        Path path = new Path();
        int i = canvas.getHeight();
        int j = canvas.getWidth();
        if (list.size() < 4)
        {
            return;
        }
        float af[] = a(((Float)list.get(0)).floatValue(), ((Float)list.get(1)).floatValue(), ((Float)list.get(2)).floatValue(), ((Float)list.get(3)).floatValue(), i, j);
        path.moveTo(af[0], af[1]);
        path.lineTo(af[2], af[3]);
        int k = list.size();
        int l = 4;
        while (l < k) 
        {
            if ((((Float)list.get(l - 1)).floatValue() >= 0.0F || ((Float)list.get(l + 1)).floatValue() >= 0.0F) && (((Float)list.get(l - 1)).floatValue() <= (float)i || ((Float)list.get(l + 1)).floatValue() <= (float)i))
            {
                float af1[] = a(((Float)list.get(l - 2)).floatValue(), ((Float)list.get(l - 1)).floatValue(), ((Float)list.get(l)).floatValue(), ((Float)list.get(l + 1)).floatValue(), i, j);
                if (!flag)
                {
                    path.moveTo(af1[0], af1[1]);
                }
                path.lineTo(af1[2], af1[3]);
            }
            l += 2;
        }
        if (flag)
        {
            path.lineTo(((Float)list.get(0)).floatValue(), ((Float)list.get(1)).floatValue());
        }
        canvas.drawPath(path, paint);
    }

    protected void a(Canvas canvas, float af[], Paint paint, boolean flag)
    {
        Path path = new Path();
        int i = canvas.getHeight();
        int j = canvas.getWidth();
        if (af.length < 4)
        {
            return;
        }
        float af1[] = a(af[0], af[1], af[2], af[3], i, j);
        path.moveTo(af1[0], af1[1]);
        path.lineTo(af1[2], af1[3]);
        int k = af.length;
        int l = 4;
        while (l < k) 
        {
            if ((af[l - 1] >= 0.0F || af[l + 1] >= 0.0F) && (af[l - 1] <= (float)i || af[l + 1] <= (float)i))
            {
                float af2[] = a(af[l - 2], af[l - 1], af[l], af[l + 1], i, j);
                if (!flag)
                {
                    path.moveTo(af2[0], af2[1]);
                }
                path.lineTo(af2[2], af2[3]);
            }
            l += 2;
        }
        if (flag)
        {
            path.lineTo(af[0], af[1]);
        }
        canvas.drawPath(path, paint);
    }

    protected void a(bef bef1, Canvas canvas, int i, int j, int k, int l, Paint paint, 
            boolean flag, int i1)
    {
        if (bef1.f() || flag)
        {
            if (flag)
            {
                paint.setColor(i1);
            } else
            {
                paint.setColor(bef1.e());
            }
            paint.setStyle(android.graphics.Paint.Style.FILL);
            canvas.drawRect(i, j, i + k, j + l, paint);
        }
    }

    public boolean a(double d)
    {
        return Double.isNaN(d) || Double.isInfinite(d) || d == 1.7976931348623157E+308D;
    }

    protected boolean a(float f, bef bef1, int i, int j)
    {
        boolean flag;
        if (f > (float)i)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (a(bef1))
        {
            return f > (float)j;
        } else
        {
            return flag;
        }
    }

    public boolean a(bef bef1)
    {
        return (bef1 instanceof bei) && ((bei)bef1).H() == bej.b;
    }
}
