// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.PathEffect;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;

public abstract class bdz extends bdr
{

    private float a;
    protected bec b;
    protected bei c;
    private float d;
    private bea e;
    private Rect f;
    private final Map g;
    private Map h;

    protected bdz()
    {
        g = new HashMap();
        h = new HashMap();
    }

    public bdz(bec bec1, bei bei1)
    {
        g = new HashMap();
        h = new HashMap();
        b = bec1;
        c = bei1;
    }

    private int a(android.graphics.Paint.Align align)
    {
        int i = 4;
        if (align == android.graphics.Paint.Align.LEFT)
        {
            i = -i;
        }
        return i;
    }

    private List a(List list)
    {
        ArrayList arraylist = new ArrayList(list);
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Double double1 = (Double)iterator.next();
            if (double1.isNaN())
            {
                arraylist.remove(double1);
            }
        } while (true);
        return arraylist;
    }

    private void a(Canvas canvas, float f1, boolean flag)
    {
        if (flag)
        {
            canvas.scale(1.0F / a, a);
            canvas.translate(d, -d);
            canvas.rotate(-f1, e.a(), e.b());
            return;
        } else
        {
            canvas.rotate(f1, e.a(), e.b());
            canvas.translate(-d, d);
            canvas.scale(a, 1.0F / a);
            return;
        }
    }

    private void a(android.graphics.Paint.Cap cap, android.graphics.Paint.Join join, float f1, android.graphics.Paint.Style style, PathEffect patheffect, Paint paint)
    {
        paint.setStrokeCap(cap);
        paint.setStrokeJoin(join);
        paint.setStrokeMiter(f1);
        paint.setPathEffect(patheffect);
        paint.setStyle(style);
    }

    public bdx a()
    {
        return null;
    }

    public beb a(bea bea1)
    {
        if (h != null)
        {
            for (int i = -1 + h.size(); i >= 0; i--)
            {
                int j = 0;
                if (h.get(Integer.valueOf(i)) == null)
                {
                    continue;
                }
                for (Iterator iterator = ((List)h.get(Integer.valueOf(i))).iterator(); iterator.hasNext(); j++)
                {
                    bds bds1 = (bds)iterator.next();
                    if (bds1 == null)
                    {
                        continue;
                    }
                    RectF rectf = bds1.a();
                    if (rectf != null && rectf.contains(bea1.a(), bea1.b()))
                    {
                        return new beb(i, j, bds1.b(), bds1.c());
                    }
                }

            }

        }
        return super.a(bea1);
    }

    protected List a(double d1, double d2, int i)
    {
        return bev.a(d1, d2, i);
    }

    protected Map a(double ad[], double ad1[], int i)
    {
        HashMap hashmap = new HashMap();
        for (int j = 0; j < i; j++)
        {
            hashmap.put(Integer.valueOf(j), a(bev.a(ad[j], ad1[j], c.P())));
        }

        return hashmap;
    }

    public void a(Canvas canvas, int i, int j, int k, int l, Paint paint)
    {
        int j10;
        paint.setAntiAlias(c.u());
        int i1 = a(((bef) (c)), l / 5, c.K());
        int ai[] = c.F();
        int j1 = i + ai[1];
        int k1 = j + ai[0];
        int l1 = (i + k) - ai[3];
        int i2 = b.b();
        String as[] = new String[i2];
        for (int j2 = 0; j2 < i2; j2++)
        {
            as[j2] = b.a(j2).b();
        }

        int k2;
        int l2;
        bej bej1;
        int i3;
        int j3;
        int k3;
        boolean flag;
        int l3;
        int j4;
        double ad[];
        double ad1[];
        double ad2[];
        double ad3[];
        boolean aflag[];
        boolean aflag1[];
        boolean aflag2[];
        boolean aflag3[];
        int k4;
        double ad4[];
        double ad5[];
        int l4;
        int i5;
        boolean flag1;
        int j5;
        bei bei1;
        int k5;
        int l5;
        bei bei2;
        int i6;
        int j6;
        int k6;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        List list;
        Map map;
        int l6;
        Double adouble[];
        double d1;
        double d2;
        double d3;
        bei bei3;
        int i7;
        boolean flag5;
        int j7;
        boolean flag6;
        bei bei4;
        int k7;
        float f1;
        int l7;
        int i8;
        android.graphics.Paint.Align align;
        Double adouble1[];
        int j8;
        int k8;
        Double double1;
        float f2;
        String s;
        bei bei5;
        int l8;
        int i9;
        int j9;
        bed bed1;
        int k9;
        beh beh1;
        ArrayList arraylist;
        ArrayList arraylist1;
        float f3;
        LinkedList linkedlist;
        Exception exception;
        SortedMap sortedmap;
        int l9;
        Iterator iterator;
        int i10;
        Rect rect;
        float f4;
        float f5;
        java.util.Map.Entry entry;
        double d4;
        double d5;
        bed bed2;
        int k10;
        double d6;
        double d7;
        double d8;
        double d9;
        if (c.p() && c.o())
        {
            k2 = a(canvas, ((bef) (c)), as, j1, l1, j, k, l, i1, paint, true);
        } else
        {
            k2 = i1;
        }
        l2 = (j + l) - ai[2] - k2;
        if (f == null)
        {
            f = new Rect();
        }
        f.set(j1, k1, l1, l2);
        a(((bef) (c)), canvas, i, j, k, l, paint, false, 0);
        if (paint.getTypeface() == null || c.s() != null && paint.getTypeface().equals(c.s()) || !paint.getTypeface().toString().equals(c.q()) || paint.getTypeface().getStyle() != c.r())
        {
            if (c.s() != null)
            {
                paint.setTypeface(c.s());
            } else
            {
                paint.setTypeface(Typeface.create(c.q(), c.r()));
            }
        }
        bej1 = c.H();
        if (bej1 == bej.b)
        {
            int l10 = l1 - k2;
            i3 = l2 + (k2 - 20);
            j3 = l10;
        } else
        {
            i3 = l2;
            j3 = l1;
        }
        k3 = bej1.a();
        if (k3 == 90)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = (float)l / (float)k;
        d = Math.abs(k - l) / 2;
        if (a < 1.0F)
        {
            d = -1F * d;
        }
        e = new bea((i + k) / 2, (j + l) / 2);
        if (flag)
        {
            a(canvas, k3, false);
        }
        l3 = 0x80000001;
        for (int i4 = 0; i4 < i2; i4++)
        {
            l3 = Math.max(l3, b.a(i4).a());
        }

        j4 = l3 + 1;
        if (j4 >= 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        ad = new double[j4];
        ad1 = new double[j4];
        ad2 = new double[j4];
        ad3 = new double[j4];
        aflag = new boolean[j4];
        aflag1 = new boolean[j4];
        aflag2 = new boolean[j4];
        aflag3 = new boolean[j4];
        for (k4 = 0; k4 < j4; k4++)
        {
            ad[k4] = c.g(k4);
            ad1[k4] = c.i(k4);
            ad2[k4] = c.k(k4);
            ad3[k4] = c.m(k4);
            aflag[k4] = c.h(k4);
            aflag1[k4] = c.j(k4);
            aflag2[k4] = c.l(k4);
            aflag3[k4] = c.n(k4);
            if (g.get(Integer.valueOf(k4)) == null)
            {
                g.put(Integer.valueOf(k4), new double[4]);
            }
        }

        ad4 = new double[j4];
        ad5 = new double[j4];
        l4 = 0;
        while (l4 < i2) 
        {
            bed2 = b.a(l4);
            k10 = bed2.a();
            if (bed2.e() != 0)
            {
                if (!aflag[k10])
                {
                    d9 = bed2.f();
                    ad[k10] = Math.min(ad[k10], d9);
                    ((double[])g.get(Integer.valueOf(k10)))[0] = ad[k10];
                }
                if (!aflag1[k10])
                {
                    d8 = bed2.h();
                    ad1[k10] = Math.max(ad1[k10], d8);
                    ((double[])g.get(Integer.valueOf(k10)))[1] = ad1[k10];
                }
                if (!aflag2[k10])
                {
                    d7 = bed2.g();
                    ad2[k10] = Math.min(ad2[k10], (float)d7);
                    ((double[])g.get(Integer.valueOf(k10)))[2] = ad2[k10];
                }
                if (!aflag3[k10])
                {
                    d6 = bed2.i();
                    ad3[k10] = Math.max(ad3[k10], (float)d6);
                    ((double[])g.get(Integer.valueOf(k10)))[3] = ad3[k10];
                }
            }
            l4++;
        }
        for (i5 = 0; i5 < j4; i5++)
        {
            if (ad1[i5] - ad[i5] != 0.0D)
            {
                ad4[i5] = (double)(j3 - j1) / (ad1[i5] - ad[i5]);
            }
            if (ad3[i5] - ad2[i5] != 0.0D)
            {
                ad5[i5] = (float)((double)(i3 - k1) / (ad3[i5] - ad2[i5]));
            }
        }

        flag1 = false;
        h = new HashMap();
        j5 = 0;
_L7:
        if (j5 >= i2) goto _L4; else goto _L3
_L3:
        bed1 = b.a(j5);
        k9 = bed1.a();
        if (bed1.e() != 0) goto _L6; else goto _L5
_L5:
        j5++;
          goto _L7
_L6:
        beh1 = c.a(j5);
        arraylist = new ArrayList();
        arraylist1 = new ArrayList();
        f3 = Math.min(i3, (float)((double)i3 + ad5[k9] * ad2[k9]));
        linkedlist = new LinkedList();
        h.put(Integer.valueOf(j5), linkedlist);
        bed1;
        JVM INSTR monitorenter ;
        sortedmap = bed1.a(ad[k9], ad1[k9], beh1.i());
        l9 = -1;
        iterator = sortedmap.entrySet().iterator();
_L8:
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_1656;
        }
        entry = (java.util.Map.Entry)iterator.next();
        d4 = ((Double)entry.getKey()).doubleValue();
        d5 = ((Double)entry.getValue()).doubleValue();
        if (l9 >= 0)
        {
            break MISSING_BLOCK_LABEL_1397;
        }
        if (!a(d5) || e())
        {
            l9 = bed1.a(d4);
        }
        arraylist1.add(entry.getKey());
        arraylist1.add(entry.getValue());
        if (a(d5))
        {
            break MISSING_BLOCK_LABEL_1507;
        }
        arraylist.add(Float.valueOf((float)((double)j1 + ad4[k9] * (d4 - ad[k9]))));
        arraylist.add(Float.valueOf((float)((double)i3 - ad5[k9] * (d5 - ad2[k9]))));
          goto _L8
        exception;
        bed1;
        JVM INSTR monitorexit ;
        throw exception;
label0:
        {
            if (!e())
            {
                break label0;
            }
            arraylist.add(Float.valueOf((float)((double)j1 + ad4[k9] * (d4 - ad[k9]))));
            arraylist.add(Float.valueOf((float)((double)i3 - ad5[k9] * -ad2[k9])));
        }
          goto _L8
        if (arraylist.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_1646;
        }
        a(bed1, canvas, paint, ((List) (arraylist)), beh1, f3, j5, bej1, l9);
        linkedlist.addAll(Arrays.asList(a(((List) (arraylist)), ((List) (arraylist1)), f3, j5, l9)));
        arraylist.clear();
        arraylist1.clear();
        l9 = -1;
        linkedlist.add(null);
          goto _L8
        i10 = bed1.d();
        if (i10 <= 0) goto _L10; else goto _L9
_L9:
        paint.setColor(c.h());
        rect = new Rect();
        j10 = 0;
_L15:
        if (j10 >= i10) goto _L10; else goto _L11
_L11:
        f4 = (float)((double)j1 + ad4[k9] * (bed1.c(j10) - ad[k9]));
        f5 = (float)((double)i3 - ad5[k9] * (bed1.d(j10) - ad2[k9]));
        paint.getTextBounds(bed1.e(j10), 0, bed1.e(j10).length(), rect);
        if (f4 < f4 + (float)rect.width() && f5 < (float)canvas.getHeight())
        {
            a(canvas, bed1.e(j10), f4, f5, paint);
        }
        break MISSING_BLOCK_LABEL_3460;
_L10:
        if (arraylist.size() > 0)
        {
            a(bed1, canvas, paint, ((List) (arraylist)), beh1, f3, j5, bej1, l9);
            linkedlist.addAll(Arrays.asList(a(((List) (arraylist)), ((List) (arraylist1)), f3, j5, l9)));
        }
        bed1;
        JVM INSTR monitorexit ;
        flag1 = true;
          goto _L5
_L4:
        bei1 = c;
        k5 = l - i3;
        l5 = c.U();
        a(((bef) (bei1)), canvas, i, i3, k, k5, paint, true, l5);
        a(((bef) (c)), canvas, i, j, k, ai[0], paint, true, c.U());
        if (bej1 == bej.a)
        {
            a(((bef) (c)), canvas, i, j, j1 - i, l - j, paint, true, c.U());
            bei5 = c;
            l8 = ai[3];
            i9 = l - j;
            j9 = c.U();
            a(((bef) (bei5)), canvas, j3, j, l8, i9, paint, true, j9);
        } else
        if (bej1 == bej.b)
        {
            bei2 = c;
            i6 = k - j3;
            j6 = l - j;
            k6 = c.U();
            a(((bef) (bei2)), canvas, j3, j, i6, j6, paint, true, k6);
            a(((bef) (c)), canvas, i, j, j1 - i, l - j, paint, true, c.U());
        }
        if (c.k() && flag1)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        flag3 = c.l();
        flag4 = c.n();
        if (!flag2 && !flag3) goto _L13; else goto _L12
_L12:
        list = a(a(ad[0], ad1[0], c.L()));
        map = a(ad2, ad3, j4);
        if (!flag2)
        {
            break MISSING_BLOCK_LABEL_3435;
        }
        paint.setColor(c.ac());
        paint.setTextSize(c.i());
        paint.setTextAlign(c.ad());
        if (c.ad() != android.graphics.Paint.Align.LEFT)
        {
            break MISSING_BLOCK_LABEL_3435;
        }
        l6 = (int)((float)j1 + c.i() / 4F);
_L14:
        adouble = c.M();
        d1 = ad4[0];
        d2 = ad[0];
        d3 = ad1[0];
        a(list, adouble, canvas, paint, l6, k1, i3, d1, d2, d3);
        a(map, canvas, paint, j4, j1, j3, i3, ad5, ad2);
        if (flag2)
        {
            paint.setColor(c.h());
            for (i8 = 0; i8 < j4; i8++)
            {
                align = c.y(i8);
                adouble1 = c.p(i8);
                j8 = adouble1.length;
                k8 = 0;
                while (k8 < j8) 
                {
                    double1 = adouble1[k8];
                    if (ad2[i8] <= double1.doubleValue() && double1.doubleValue() <= ad3[i8])
                    {
                        f2 = (float)((double)i3 - ad5[i8] * (double1.doubleValue() - ad2[i8]));
                        s = c.a(double1, i8);
                        paint.setColor(c.v(i8));
                        paint.setTextAlign(c.x(i8));
                        if (bej1 == bej.a)
                        {
                            if (align == android.graphics.Paint.Align.LEFT)
                            {
                                canvas.drawLine(j1 - a(align), f2, j1, f2, paint);
                                a(canvas, s, j1, f2 - c.ag(), paint, c.Z());
                            } else
                            {
                                canvas.drawLine(j3, f2, j3 + a(align), f2, paint);
                                a(canvas, s, j3, f2 - 2.0F, paint, c.Z());
                            }
                            if (flag4)
                            {
                                paint.setColor(c.V());
                                canvas.drawLine(j1, f2, j3, f2, paint);
                            }
                        } else
                        {
                            canvas.drawLine(j3 - a(align), f2, j3, f2, paint);
                            a(canvas, s, j3 + 10, f2 - 2.0F, paint, c.Z());
                            if (flag4)
                            {
                                paint.setColor(c.V());
                                canvas.drawLine(j3, f2, j1, f2, paint);
                            }
                        }
                    }
                    k8++;
                }
            }

        }
        if (flag2)
        {
            paint.setColor(c.h());
            f1 = c.K();
            paint.setTextSize(f1);
            paint.setTextAlign(android.graphics.Paint.Align.CENTER);
            if (bej1 == bej.a)
            {
                a(canvas, c.I(), i + k / 2, f1 + ((float)i3 + (4F * c.i()) / 3F + c.ae()), paint, 0.0F);
                l7 = 0;
                while (l7 < j4) 
                {
                    if (c.y(l7) == android.graphics.Paint.Align.LEFT)
                    {
                        a(canvas, c.f(l7), f1 + (float)i, j + l / 2, paint, -90F);
                    } else
                    {
                        a(canvas, c.f(l7), i + k, j + l / 2, paint, -90F);
                    }
                    l7++;
                }
                paint.setTextSize(c.c());
                a(canvas, c.a(), i + k / 2, (float)j + c.c(), paint, 0.0F);
            } else
            if (bej1 == bej.b)
            {
                a(canvas, c.I(), i + k / 2, ((float)(j + l) - f1) + c.ae(), paint, -90F);
                a(canvas, c.J(), j3 + 20, j + l / 2, paint, 0.0F);
                paint.setTextSize(c.c());
                a(canvas, c.a(), f1 + (float)i, k1 + l / 2, paint, 0.0F);
            }
        }
_L13:
        if (bej1 == bej.a)
        {
            bei4 = c;
            k7 = j + (int)c.ae();
            a(canvas, ((bef) (bei4)), as, j1, j3, k7, k, l, k2, paint, false);
        } else
        if (bej1 == bej.b)
        {
            a(canvas, k3, true);
            bei3 = c;
            i7 = j + (int)c.ae();
            a(canvas, ((bef) (bei3)), as, j1, j3, i7, k, l, k2, paint, false);
            a(canvas, k3, false);
        }
        if (c.j())
        {
            paint.setColor(c.g());
            canvas.drawLine(j1, i3, j3, i3, paint);
            flag5 = false;
            j7 = 0;
            while (j7 < j4 && !flag5) 
            {
                if (c.y(j7) == android.graphics.Paint.Align.RIGHT)
                {
                    flag6 = true;
                } else
                {
                    flag6 = false;
                }
                j7++;
                flag5 = flag6;
            }
            if (bej1 == bej.a)
            {
                canvas.drawLine(j1, k1, j1, i3, paint);
                if (flag5)
                {
                    canvas.drawLine(j3, k1, j3, i3, paint);
                }
            } else
            if (bej1 == bej.b)
            {
                canvas.drawLine(j3, k1, j3, i3, paint);
            }
        }
        if (flag)
        {
            a(canvas, k3, true);
            return;
        }
          goto _L1
        l6 = j1;
          goto _L14
        j10++;
          goto _L15
    }

    public abstract void a(Canvas canvas, Paint paint, List list, beh beh1, float f1, int i, int j);

    protected void a(Canvas canvas, bed bed1, beh beh1, Paint paint, List list, int i, int j)
    {
        if (list.size() > 1)
        {
            float f1 = ((Float)list.get(0)).floatValue();
            float f2 = ((Float)list.get(1)).floatValue();
            int l = 0;
            while (l < list.size()) 
            {
                if (l == 2)
                {
                    if (Math.abs(((Float)list.get(2)).floatValue() - ((Float)list.get(0)).floatValue()) > (float)beh1.c() || Math.abs(((Float)list.get(3)).floatValue() - ((Float)list.get(1)).floatValue()) > (float)beh1.c())
                    {
                        a(canvas, a(beh1.j(), bed1.b(j)), ((Float)list.get(0)).floatValue(), ((Float)list.get(1)).floatValue() - beh1.f(), paint, 0.0F);
                        a(canvas, a(beh1.j(), bed1.b(j + 1)), ((Float)list.get(2)).floatValue(), ((Float)list.get(3)).floatValue() - beh1.f(), paint, 0.0F);
                        f1 = ((Float)list.get(2)).floatValue();
                        f2 = ((Float)list.get(3)).floatValue();
                    }
                } else
                if (l > 2 && (Math.abs(((Float)list.get(l)).floatValue() - f1) > (float)beh1.c() || Math.abs(((Float)list.get(l + 1)).floatValue() - f2) > (float)beh1.c()))
                {
                    a(canvas, a(beh1.j(), bed1.b(j + l / 2)), ((Float)list.get(l)).floatValue(), ((Float)list.get(l + 1)).floatValue() - beh1.f(), paint, 0.0F);
                    f1 = ((Float)list.get(l)).floatValue();
                    f2 = ((Float)list.get(l + 1)).floatValue();
                }
                l += 2;
            }
        } else
        {
            for (int k = 0; k < list.size(); k += 2)
            {
                a(canvas, a(beh1.j(), bed1.b(j + k / 2)), ((Float)list.get(k)).floatValue(), ((Float)list.get(k + 1)).floatValue() - beh1.f(), paint, 0.0F);
            }

        }
    }

    protected void a(Canvas canvas, String s, float f1, float f2, Paint paint, float f3)
    {
        float f4 = f3 + (float)(-c.H().a());
        if (f4 != 0.0F)
        {
            canvas.rotate(f4, f1, f2);
        }
        a(canvas, s, f1, f2, paint);
        if (f4 != 0.0F)
        {
            canvas.rotate(-f4, f1, f2);
        }
    }

    protected void a(bed bed1, Canvas canvas, Paint paint, List list, beh beh1, float f1, int i, 
            bej bej1, int j)
    {
        bee bee1 = beh1.g();
        android.graphics.Paint.Cap cap = paint.getStrokeCap();
        android.graphics.Paint.Join join = paint.getStrokeJoin();
        float f2 = paint.getStrokeMiter();
        PathEffect patheffect = paint.getPathEffect();
        android.graphics.Paint.Style style = paint.getStyle();
        if (bee1 != null)
        {
            float af[] = bee1.d();
            DashPathEffect dashpatheffect = null;
            if (af != null)
            {
                dashpatheffect = new DashPathEffect(bee1.d(), bee1.e());
            }
            a(bee1.a(), bee1.b(), bee1.c(), android.graphics.Paint.Style.FILL_AND_STROKE, ((PathEffect) (dashpatheffect)), paint);
        }
        a(canvas, paint, list, beh1, f1, i, j);
        if (a(beh1))
        {
            bdx bdx1 = a();
            if (bdx1 != null)
            {
                bdx1.a(canvas, paint, list, beh1, f1, i, j);
            }
        }
        paint.setTextSize(beh1.d());
        if (bej1 == bej.a)
        {
            paint.setTextAlign(android.graphics.Paint.Align.CENTER);
        } else
        {
            paint.setTextAlign(android.graphics.Paint.Align.LEFT);
        }
        if (beh1.b())
        {
            paint.setTextAlign(beh1.e());
            a(canvas, bed1, beh1, paint, list, i, j);
        }
        if (bee1 != null)
        {
            a(cap, join, f2, style, patheffect, paint);
        }
    }

    protected void a(List list, Double adouble[], Canvas canvas, Paint paint, int i, int j, int k, 
            double d1, double d2, double d3)
    {
        int l = list.size();
        boolean flag = c.k();
        boolean flag1 = c.m();
        for (int i1 = 0; i1 < l; i1++)
        {
            double d4 = ((Double)list.get(i1)).doubleValue();
            float f1 = (float)((double)i + d1 * (d4 - d2));
            if (flag)
            {
                paint.setColor(c.ac());
                canvas.drawLine(f1, k, f1, (float)k + c.i() / 3F, paint);
                a(canvas, a(c.ah(), d4), f1, (float)k + (4F * c.i()) / 3F + c.ae(), paint, c.Y());
            }
            if (flag1)
            {
                paint.setColor(c.V());
                canvas.drawLine(f1, k, f1, j, paint);
            }
        }

        a(adouble, canvas, paint, flag, i, j, k, d1, d2, d3);
    }

    protected void a(Map map, Canvas canvas, Paint paint, int i, int j, int k, int l, 
            double ad[], double ad1[])
    {
        bej bej1 = c.H();
        boolean flag = c.l();
        boolean flag1 = c.k();
        int i1 = 0;
        do
        {
            if (i1 >= i)
            {
                break;
            }
            paint.setTextAlign(c.x(i1));
            List list = (List)map.get(Integer.valueOf(i1));
            int j1 = list.size();
            int k1 = 0;
            while (k1 < j1) 
            {
                double d1 = ((Double)list.get(k1)).doubleValue();
                android.graphics.Paint.Align align = c.y(i1);
                boolean flag2;
                float f1;
                if (c.a(Double.valueOf(d1), i1) != null)
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                f1 = (float)((double)l - ad[i1] * (d1 - ad1[i1]));
                if (bej1 == bej.a)
                {
                    if (flag1 && !flag2)
                    {
                        paint.setColor(c.v(i1));
                        if (align == android.graphics.Paint.Align.LEFT)
                        {
                            canvas.drawLine(j + a(align), f1, j, f1, paint);
                            a(canvas, a(c.ah(), d1), (float)j - c.af(), f1 - c.ag(), paint, c.Z());
                        } else
                        {
                            canvas.drawLine(k, f1, k + a(align), f1, paint);
                            a(canvas, a(c.ah(), d1), (float)k + c.af(), f1 - c.ag(), paint, c.Z());
                        }
                    }
                    if (flag)
                    {
                        paint.setColor(c.V());
                        canvas.drawLine(j, f1, k, f1, paint);
                    }
                } else
                if (bej1 == bej.b)
                {
                    if (flag1 && !flag2)
                    {
                        paint.setColor(c.v(i1));
                        canvas.drawLine(k - a(align), f1, k, f1, paint);
                        a(canvas, a(c.ah(), d1), (float)(k + 10) + c.af(), f1 - 2.0F, paint, c.Z());
                    }
                    if (flag)
                    {
                        paint.setColor(c.V());
                        canvas.drawLine(k, f1, j, f1, paint);
                    }
                }
                k1++;
            }
            i1++;
        } while (true);
    }

    protected void a(Double adouble[], Canvas canvas, Paint paint, boolean flag, int i, int j, int k, 
            double d1, double d2, double d3)
    {
        boolean flag1 = c.n();
        if (flag)
        {
            paint.setColor(c.ac());
            int l = adouble.length;
            for (int i1 = 0; i1 < l; i1++)
            {
                Double double1 = adouble[i1];
                if (d2 > double1.doubleValue() || double1.doubleValue() > d3)
                {
                    continue;
                }
                float f1 = (float)((double)i + d1 * (double1.doubleValue() - d2));
                paint.setColor(c.ac());
                canvas.drawLine(f1, k, f1, (float)k + c.i() / 3F, paint);
                a(canvas, c.a(double1), f1, (float)k + (4F * c.i()) / 3F, paint, c.Y());
                if (flag1)
                {
                    paint.setColor(c.V());
                    canvas.drawLine(f1, k, f1, j, paint);
                }
            }

        }
    }

    public boolean a(beh beh1)
    {
        return false;
    }

    public double[] a(float f1, float f2, int i)
    {
        double d1 = c.g(i);
        double d2 = c.i(i);
        double d3 = c.k(i);
        double d4 = c.m(i);
        if (f != null)
        {
            double ad1[] = new double[2];
            ad1[0] = d1 + ((double)(f1 - (float)f.left) * (d2 - d1)) / (double)f.width();
            ad1[1] = d3 + ((double)((float)(f.top + f.height()) - f2) * (d4 - d3)) / (double)f.height();
            return ad1;
        } else
        {
            double ad[] = new double[2];
            ad[0] = f1;
            ad[1] = f2;
            return ad;
        }
    }

    protected abstract bds[] a(List list, List list1, float f1, int i, int j);

    protected Rect b()
    {
        return f;
    }

    public double[] b(int i)
    {
        return (double[])g.get(Integer.valueOf(i));
    }

    public bei c()
    {
        return c;
    }

    public bec d()
    {
        return b;
    }

    protected boolean e()
    {
        return false;
    }
}
