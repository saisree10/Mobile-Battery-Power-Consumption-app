// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import ly;

public class GuideView extends View
{

    public Paint a;
    private float b;
    private Context c;
    private int d;
    private int e;
    private Bitmap f;
    private Bitmap g;

    public GuideView(Context context)
    {
        super(context);
        b = 6F;
        d = 0;
        e = 0;
        a = null;
        a(context);
    }

    public GuideView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = 6F;
        d = 0;
        e = 0;
        a = null;
        a(context);
    }

    public GuideView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b = 6F;
        d = 0;
        e = 0;
        a = null;
        a(context);
    }

    private void a(Context context)
    {
        c = context;
        a = new Paint();
        Resources resources = c.getResources();
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        f = BitmapFactory.decodeResource(resources, 0x7f0201ce);
        Resources resources1 = c.getResources();
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        g = BitmapFactory.decodeResource(resources1, 0x7f0201cd);
        b = f.getHeight() / 2;
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        Resources resources = c.getResources();
        com.dianxinos.dxbs.R.dimen _tmp = ly.d;
        float f1 = (float)resources.getDimensionPixelSize(0x7f08016e) + 2.0F * b;
        float f2 = ((float)getWidth() - f1 * (float)d) / 2.0F - b;
        int i = 0;
        while (i < d) 
        {
            f2 += f1;
            if (i != e)
            {
                canvas.drawBitmap(g, f2, 0, a);
            } else
            {
                canvas.drawBitmap(f, f2, 0, a);
            }
            i++;
        }
    }

    public void setSelectedId(int i)
    {
        e = i;
        invalidate();
    }

    public void setSize(int i)
    {
        d = i;
    }
}
