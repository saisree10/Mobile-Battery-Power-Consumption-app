// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

public class bdt extends bdz
{

    private bdx a;

    public bdt(bec bec, bei bei1)
    {
        super(bec, bei1);
        a = new bdx(bec, bei1);
    }

    public int a(int i)
    {
        return 30;
    }

    public bdx a()
    {
        return a;
    }

    public void a(Canvas canvas, Paint paint, List list, beh beh1, float f, int i, int j)
    {
        float f1;
        bel abel[];
        int k;
        int l;
        bek bek1 = (bek)beh1;
        f1 = paint.getStrokeWidth();
        paint.setStrokeWidth(bek1.p());
        abel = bek1.l();
        k = abel.length;
        l = 0;
_L10:
        if (l >= k) goto _L2; else goto _L1
_L1:
        bel bel1;
        ArrayList arraylist;
        bel1 = abel[l];
        if (bel1.b() == bem.a)
        {
            continue; /* Loop/switch isn't completed */
        }
        paint.setColor(bel1.a());
        arraylist = new ArrayList();
        int ai[] = bel1.c();
        if (ai == null)
        {
            arraylist.addAll(list);
        } else
        {
            arraylist.addAll(list.subList(2 * ai[0], 2 * ai[1]));
        }
        bdu.a[bel1.b().ordinal()];
        JVM INSTR tableswitch 1 5: default 148
    //                   1 187
    //                   2 561
    //                   3 568
    //                   4 575
    //                   5 585;
           goto _L3 _L4 _L5 _L6 _L7 _L8
_L8:
        break MISSING_BLOCK_LABEL_585;
_L3:
        throw new RuntimeException("You have added a new type of filling but have not implemented.");
_L4:
        float f2;
        f2 = f;
        break MISSING_BLOCK_LABEL_191;
_L5:
        f2 = f;
          goto _L9
_L6:
        f2 = f;
          goto _L9
_L7:
        f2 = canvas.getHeight();
          goto _L9
        f2 = 0.0F;
_L9:
        if (bel1.b() == bem.d || bel1.b() == bem.c)
        {
            ArrayList arraylist1 = new ArrayList();
            boolean flag;
            int i1;
            boolean flag1;
            int j1;
            int k1;
            if (bel1.b() == bem.d && ((Float)arraylist.get(1)).floatValue() < f2 || bel1.b() == bem.c && ((Float)arraylist.get(1)).floatValue() > f2)
            {
                arraylist1.add(arraylist.get(0));
                arraylist1.add(arraylist.get(1));
                flag = true;
            } else
            {
                flag = false;
            }
            i1 = 3;
            flag1 = flag;
            while (i1 < arraylist.size()) 
            {
                float f3 = ((Float)arraylist.get(i1 - 2)).floatValue();
                float f4 = ((Float)arraylist.get(i1)).floatValue();
                int l1;
                boolean flag2;
                if (f3 < f2 && f4 > f2 || f3 > f2 && f4 < f2)
                {
                    float f5 = ((Float)arraylist.get(i1 - 3)).floatValue();
                    float f6 = ((Float)arraylist.get(i1 - 1)).floatValue();
                    arraylist1.add(Float.valueOf(f5 + ((f6 - f5) * (f2 - f3)) / (f4 - f3)));
                    arraylist1.add(Float.valueOf(f2));
                    int i2;
                    boolean flag3;
                    int j2;
                    if (bel1.b() == bem.d && f4 > f2 || bel1.b() == bem.c && f4 < f2)
                    {
                        i1 += 2;
                        flag3 = false;
                    } else
                    {
                        arraylist1.add(Float.valueOf(f6));
                        arraylist1.add(Float.valueOf(f4));
                        flag3 = true;
                    }
                    j2 = i1;
                    flag2 = flag3;
                    l1 = j2;
                } else
                {
                    if (flag1 || bel1.b() == bem.d && f4 < f2 || bel1.b() == bem.c && f4 > f2)
                    {
                        arraylist1.add(arraylist.get(i1 - 1));
                        arraylist1.add(Float.valueOf(f4));
                    }
                    l1 = i1;
                    flag2 = flag1;
                }
                i2 = l1 + 2;
                flag1 = flag2;
                i1 = i2;
            }
            arraylist.clear();
            arraylist.addAll(arraylist1);
        }
        j1 = arraylist.size();
        arraylist.set(0, Float.valueOf(1.0F + ((Float)arraylist.get(0)).floatValue()));
        arraylist.add(arraylist.get(j1 - 2));
        arraylist.add(Float.valueOf(f2));
        arraylist.add(arraylist.get(0));
        arraylist.add(arraylist.get(j1 + 1));
        for (k1 = 0; k1 < j1 + 4; k1 += 2)
        {
            if (((Float)arraylist.get(k1 + 1)).floatValue() < 0.0F)
            {
                arraylist.set(k1 + 1, Float.valueOf(0.0F));
            }
        }

        paint.setStyle(android.graphics.Paint.Style.FILL);
        a(canvas, ((List) (arraylist)), paint, true);
        l++;
          goto _L10
_L2:
        paint.setColor(beh1.a());
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        a(canvas, list, paint, false);
        paint.setStrokeWidth(f1);
        return;
    }

    public void a(Canvas canvas, beh beh1, float f, float f1, int i, Paint paint)
    {
        canvas.drawLine(f, f1, f + 30F, f1, paint);
        if (a(beh1))
        {
            a.a(canvas, beh1, f + 5F, f1, i, paint);
        }
    }

    public boolean a(beh beh1)
    {
        return ((bek)beh1).n() != bdv.f;
    }

    protected bds[] a(List list, List list1, float f, int i, int j)
    {
        int k = list.size();
        bds abds[] = new bds[k / 2];
        for (int l = 0; l < k; l += 2)
        {
            int i1 = c.D();
            abds[l / 2] = new bds(new RectF(((Float)list.get(l)).floatValue() - (float)i1, ((Float)list.get(l + 1)).floatValue() - (float)i1, ((Float)list.get(l)).floatValue() + (float)i1, ((Float)list.get(l + 1)).floatValue() + (float)i1), ((Double)list1.get(l)).doubleValue(), ((Double)list1.get(l + 1)).doubleValue());
        }

        return abds;
    }
}
