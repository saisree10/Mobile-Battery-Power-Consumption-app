// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import java.util.List;

class ais extends bdx
{

    final aiq a;
    private float d;

    public ais(aiq aiq1, bec bec, bei bei1)
    {
        a = aiq1;
        super(bec, bei1);
        d = 3F;
        d = bei1.aa();
    }

    public void a(Canvas canvas, Paint paint, List list, beh beh, float f, int i, int j)
    {
        aiq.a(a, (new StringBuilder()).append("start:").append(j).toString());
        bek bek1 = (bek)beh;
        paint.setColor(bek1.a());
        float f1 = paint.getStrokeWidth();
        paint.setStrokeWidth(bek1.o());
        int k = list.size();
        paint.getColor();
        android.content.res.Resources resources;
        switch (air.a[bek1.n().ordinal()])
        {
        default:
            super.a(canvas, paint, list, beh, f, i, j);
            return;

        case 1: // '\001'
            resources = aiq.a(a).getResources();
            break;
        }
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        Bitmap bitmap = BitmapFactory.decodeResource(resources, 0x7f020117);
        int l = bitmap.getWidth() / 2;
        int i1 = bitmap.getHeight() / 2;
        aiq.a(a, list);
        int j1 = 0;
        do
        {
label0:
            {
                if (j1 < k)
                {
                    paint.setStyle(android.graphics.Paint.Style.FILL);
                    paint.setColor(0xff000000);
                    paint.setStrokeWidth(0.0F);
                    if (bek1.a() != 0)
                    {
                        break label0;
                    }
                }
                paint.setStrokeWidth(f1);
                return;
            }
            if ((j + j1 / 2) % 2 == 0)
            {
                canvas.drawBitmap(bitmap, ((Float)list.get(j1)).floatValue() - (float)l, ((Float)list.get(j1 + 1)).floatValue() - (float)i1, paint);
            }
            j1 += 2;
        } while (true);
    }
}
