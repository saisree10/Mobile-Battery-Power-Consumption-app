// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

public class awc extends Drawable
{

    private Drawable a;
    private Drawable b;
    private double c;
    private int d;

    public awc(Drawable drawable, Drawable drawable1, double d1)
    {
        d = -1;
        a = drawable;
        b = drawable1;
        if (d1 >= 1.0D)
        {
            d1 = 1.0D;
        }
        c = d1;
    }

    private int a()
    {
        return Math.max((int)((double)getBounds().width() * c), a.getIntrinsicWidth());
    }

    public void draw(Canvas canvas)
    {
        b.setBounds(getBounds());
        b.draw(canvas);
        if (d == -1)
        {
            d = a();
            a.setBounds(0, 0, d, a.getIntrinsicHeight());
        }
        a.draw(canvas);
    }

    public int getIntrinsicHeight()
    {
        return a.getIntrinsicHeight();
    }

    public int getOpacity()
    {
        return -3;
    }

    public void setAlpha(int i)
    {
    }

    public void setColorFilter(ColorFilter colorfilter)
    {
    }
}
