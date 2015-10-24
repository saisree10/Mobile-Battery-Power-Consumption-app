// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class aiq extends bdt
{

    public ais a;
    private Context d;
    private int e;
    private int f;

    public aiq(bec bec, bei bei, Context context)
    {
        super(bec, bei);
        d = context.getApplicationContext();
        a = new ais(this, bec, bei);
        Resources resources = d.getResources();
        com.dianxinos.dxbs.R.color _tmp = ly.c;
        f = resources.getColor(0x7f090046);
        Resources resources1 = d.getResources();
        com.dianxinos.dxbs.R.color _tmp1 = ly.c;
        e = resources1.getColor(0x7f090047);
    }

    static Context a(aiq aiq1)
    {
        return aiq1.d;
    }

    static void a(aiq aiq1, String s)
    {
        aiq1.a(s);
    }

    static void a(aiq aiq1, List list)
    {
        aiq1.a(list);
    }

    private void a(String s)
    {
    }

    private void a(List list)
    {
        a("Point: ");
        for (int i = 0; i < list.size(); i++)
        {
            a((new StringBuilder()).append("       ").append(i).append(":").append(list.get(i)).toString());
        }

    }

    public bdx a()
    {
        return a;
    }

    public void a(Canvas canvas, Paint paint, List list, beh beh1, float f1, int i, int j)
    {
        int k = list.size();
        bek bek1 = (bek)beh1;
        float f2 = paint.getStrokeWidth();
        paint.setStrokeWidth(bek1.p());
        int _tmp = b().top;
        if (bek1.k())
        {
            a("Fill below");
            ArrayList arraylist = new ArrayList();
            Iterator iterator = list.iterator();
            float f3 = 0.0F;
            for (int l = 0; iterator.hasNext(); l++)
            {
                Float float1 = (Float)iterator.next();
                arraylist.add(float1);
                if (l % 2 != 0 && f3 < float1.floatValue())
                {
                    f3 = float1.floatValue();
                }
            }

            arraylist.set(0, Float.valueOf(1.0F + ((Float)list.get(0)).floatValue()));
            arraylist.add(arraylist.get(k - 2));
            arraylist.add(Float.valueOf(f1));
            arraylist.add(arraylist.get(0));
            arraylist.add(arraylist.get(k + 1));
            for (int i1 = 0; i1 < k + 4; i1 += 2)
            {
                if (((Float)arraylist.get(i1 + 1)).floatValue() < 0.0F)
                {
                    arraylist.set(i1 + 1, Float.valueOf(0.0F));
                }
            }

            a(((List) (arraylist)));
            paint.setStyle(android.graphics.Paint.Style.FILL);
            if (arraylist.size() >= k + 3)
            {
                a("Set shader");
                Object aobj[] = new Object[2];
                aobj[0] = Integer.valueOf(f);
                aobj[1] = Integer.valueOf(e);
                a(String.format("start:%x end %x", aobj));
                paint.setShader(new LinearGradient(b().left, b().top, b().left, b().bottom, f, e, android.graphics.Shader.TileMode.CLAMP));
            }
            a(canvas, ((List) (arraylist)), paint, true);
            paint.setShader(null);
        }
        paint.setColor(beh1.a());
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        a(canvas, list, paint, false);
        paint.setStrokeWidth(f2);
    }
}
