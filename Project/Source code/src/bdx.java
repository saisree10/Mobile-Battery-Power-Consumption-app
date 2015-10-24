// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import java.util.List;

public class bdx extends bdz
{

    private float a;

    bdx()
    {
        a = 3F;
    }

    public bdx(bec bec, bei bei1)
    {
        super(bec, bei1);
        a = 3F;
        a = bei1.aa();
    }

    private void a(Canvas canvas, Paint paint, float f, float f1)
    {
        canvas.drawLine(f - a, f1 - a, f + a, f1 + a, paint);
        canvas.drawLine(f + a, f1 - a, f - a, f1 + a, paint);
    }

    private void a(Canvas canvas, Paint paint, float af[], float f, float f1)
    {
        af[0] = f;
        af[1] = f1 - a - a / 2.0F;
        af[2] = f - a;
        af[3] = f1 + a;
        af[4] = f + a;
        af[5] = af[3];
        a(canvas, af, paint, true);
    }

    private void b(Canvas canvas, Paint paint, float f, float f1)
    {
        canvas.drawCircle(f, f1, a, paint);
    }

    private void b(Canvas canvas, Paint paint, float af[], float f, float f1)
    {
        af[0] = f;
        af[1] = f1 - a;
        af[2] = f - a;
        af[3] = f1;
        af[4] = f;
        af[5] = f1 + a;
        af[6] = f + a;
        af[7] = f1;
        a(canvas, af, paint, true);
    }

    private void c(Canvas canvas, Paint paint, float f, float f1)
    {
        canvas.drawRect(f - a, f1 - a, f + a, f1 + a, paint);
    }

    public int a(int i)
    {
        return 10;
    }

    public void a(Canvas canvas, Paint paint, List list, beh beh, float f, int i, int j)
    {
        bek bek1;
        int k;
        bek1 = (bek)beh;
        paint.setColor(bek1.a());
        float f1 = paint.getStrokeWidth();
        if (bek1.m())
        {
            paint.setStyle(android.graphics.Paint.Style.FILL);
        } else
        {
            paint.setStrokeWidth(bek1.o());
            paint.setStyle(android.graphics.Paint.Style.STROKE);
        }
        k = list.size();
        bdy.a[bek1.n().ordinal()];
        JVM INSTR tableswitch 1 6: default 96
    //                   1 122
    //                   2 183
    //                   3 235
    //                   4 295
    //                   5 347
    //                   6 407;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        paint.setStrokeWidth(f1);
        return;
_L2:
        paint.setStrokeWidth(bek1.o());
        int i2 = 0;
        while (i2 < k) 
        {
            a(canvas, paint, ((Float)list.get(i2)).floatValue(), ((Float)list.get(i2 + 1)).floatValue());
            i2 += 2;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        int l1 = 0;
        while (l1 < k) 
        {
            b(canvas, paint, ((Float)list.get(l1)).floatValue(), ((Float)list.get(l1 + 1)).floatValue());
            l1 += 2;
        }
        if (true) goto _L1; else goto _L4
_L4:
        float af1[] = new float[6];
        int k1 = 0;
        while (k1 < k) 
        {
            a(canvas, paint, af1, ((Float)list.get(k1)).floatValue(), ((Float)list.get(k1 + 1)).floatValue());
            k1 += 2;
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L5:
        int j1 = 0;
        while (j1 < k) 
        {
            c(canvas, paint, ((Float)list.get(j1)).floatValue(), ((Float)list.get(j1 + 1)).floatValue());
            j1 += 2;
        }
        if (true) goto _L1; else goto _L6
_L6:
        float af[] = new float[8];
        int i1 = 0;
        while (i1 < k) 
        {
            b(canvas, paint, af, ((Float)list.get(i1)).floatValue(), ((Float)list.get(i1 + 1)).floatValue());
            i1 += 2;
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L7:
        int l = 0;
        while (l < k) 
        {
            canvas.drawPoint(((Float)list.get(l)).floatValue(), ((Float)list.get(l + 1)).floatValue(), paint);
            l += 2;
        }
        if (true) goto _L1; else goto _L8
_L8:
    }

    public void a(Canvas canvas, beh beh, float f, float f1, int i, Paint paint)
    {
        if (((bek)beh).m())
        {
            paint.setStyle(android.graphics.Paint.Style.FILL);
        } else
        {
            paint.setStyle(android.graphics.Paint.Style.STROKE);
        }
        switch (bdy.a[((bek)beh).n().ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            a(canvas, paint, f + 10F, f1);
            return;

        case 2: // '\002'
            b(canvas, paint, f + 10F, f1);
            return;

        case 3: // '\003'
            a(canvas, paint, new float[6], f + 10F, f1);
            return;

        case 4: // '\004'
            c(canvas, paint, f + 10F, f1);
            return;

        case 5: // '\005'
            b(canvas, paint, new float[8], f + 10F, f1);
            return;

        case 6: // '\006'
            canvas.drawPoint(f + 10F, f1, paint);
            break;
        }
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
