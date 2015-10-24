// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui;

import akq;
import akx;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.TabWidget;
import avb;
import axb;
import axl;
import baj;
import ly;

public class CustomTabWidget extends TabWidget
    implements akq
{

    private int a;
    private Context b;
    private akx c;
    private Handler d;

    public CustomTabWidget(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = new avb(this);
        com.dianxinos.dxbs.R.styleable _tmp = ly.k;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.dianxinos.dxbs.R.styleable.Feature);
        com.dianxinos.dxbs.R.styleable _tmp1 = ly.k;
        a = typedarray.getInt(0, 0);
        typedarray.recycle();
        b = context;
        c = akx.a(context);
    }

    public void a(boolean flag)
    {
        d.sendEmptyMessage(1000);
    }

    public void dispatchDraw(Canvas canvas)
    {
        super.dispatchDraw(canvas);
        if ((0xffff & a) != 0)
        {
            int i = getWidth();
            int j = getTabCount();
            int k = axb.a(b, 31);
            int l = 0x40 & a;
            boolean flag = false;
            if (l == 64)
            {
                boolean flag1 = akx.a(b).b();
                flag = false;
                if (!flag1)
                {
                    android.content.res.Resources resources2 = getResources();
                    com.dianxinos.dxbs.R.drawable _tmp = ly.e;
                    Bitmap bitmap2 = BitmapFactory.decodeResource(resources2, 0x7f0203b7);
                    canvas.drawBitmap(bitmap2, (i * 3) / j - (2 * bitmap2.getWidth()) / 3, k, new Paint(2));
                    flag = true;
                }
            }
            if (!flag && (4 & a) == 4 && baj.a(b).c())
            {
                android.content.res.Resources resources1 = getResources();
                com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
                Bitmap bitmap1 = BitmapFactory.decodeResource(resources1, 0x7f020206);
                canvas.drawBitmap(bitmap1, (i * 3) / j - bitmap1.getWidth(), k, new Paint(2));
            }
            if ((0x20 & a) == 32 && (new axl(b)).d())
            {
                android.content.res.Resources resources = getResources();
                com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
                Bitmap bitmap = BitmapFactory.decodeResource(resources, 0x7f020206);
                canvas.drawBitmap(bitmap, -3 + (i - bitmap.getWidth()), k, new Paint(2));
                return;
            }
        }
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        c.a(this);
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        c.b(this);
    }
}
