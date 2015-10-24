// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui;

import aah;
import acy;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Adapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import ly;

public class DragListView extends ListView
{

    private ImageView a;
    private acy b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private WindowManager h;
    private android.view.WindowManager.LayoutParams i;
    private ViewGroup j;
    private aah k;
    private int l;
    private int m;
    private int n;
    private int o;
    private acy p;

    public DragListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        l = 0;
        p = new acy(context);
        p.a(0);
        p.b(0);
        p.a("");
        p.b("");
    }

    private void a()
    {
        if (a != null)
        {
            h.removeView(a);
            a = null;
        }
    }

    private void a(int i1)
    {
        acy acy1 = k.a(i1);
        k.a(acy1);
        k.a(b, i1);
    }

    private void a(int i1, int j1)
    {
        int k1 = i1 - f;
        if (a != null && k1 >= 0)
        {
            i.y = j1 - f;
            h.updateViewLayout(a, i);
        }
        int l1 = pointToPosition(0, i1);
        if (l1 != -1 && l1 != 3)
        {
            e = l1;
            b(i1);
        }
        c(i1);
    }

    private void a(Bitmap bitmap, int i1)
    {
        a();
        i = new android.view.WindowManager.LayoutParams();
        i.gravity = 48;
        i.x = 0;
        i.y = (i1 - f) + g;
        i.width = -2;
        i.height = -2;
        i.flags = 408;
        i.format = -3;
        i.windowAnimations = 0;
        ImageView imageview = new ImageView(getContext());
        imageview.setAlpha(170);
        imageview.setImageBitmap(bitmap);
        h = (WindowManager)getContext().getSystemService("window");
        h.addView(imageview, i);
        a = imageview;
    }

    private void b(int i1)
    {
        if (e > d)
        {
            b(d, e);
            d = e;
        } else
        if (e < d)
        {
            c(d, e);
            d = e;
            return;
        }
    }

    private void b(int i1, int j1)
    {
        acy acy1 = k.a(j1);
        k.a(k.a(i1));
        k.a(acy1);
        k.a(acy1, i1);
        k.a(p, j1);
    }

    private void c(int i1)
    {
        View view;
        if (i1 < m)
        {
            o = 1 + (m - i1) / 10;
        } else
        if (i1 > n)
        {
            o = -(1 + (i1 - n)) / 10;
        } else
        {
            o = 0;
        }
        view = getChildAt(c - getFirstVisiblePosition());
        if (view != null)
        {
            setSelectionFromTop(c, view.getTop() + o);
        }
    }

    private void c(int i1, int j1)
    {
        acy acy1 = k.a(j1);
        k.a(k.a(i1));
        k.a(acy1);
        k.a(p, j1);
        k.a(acy1, i1);
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (l != 0)
        {
            if (l != 0 && l <= 0)
            {
                setSelectionFromTop(getFirstVisiblePosition(), getChildAt(0).getTop());
            } else
            if (l >= getHeight())
            {
                setSelectionFromTop(getFirstVisiblePosition(), getChildAt(0).getTop());
                return;
            }
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0)
        {
            int i1 = (int)motionevent.getX();
            int j1 = (int)motionevent.getY();
            c = pointToPosition(i1, j1);
            if (c == -1)
            {
                return super.onInterceptTouchEvent(motionevent);
            }
            d = c;
            e = c;
            b = k.a(c);
            j = (ViewGroup)getChildAt(c - getFirstVisiblePosition());
            f = j1 - j.getTop();
            g = (int)(motionevent.getRawY() - (float)j1);
            ViewGroup viewgroup = j;
            com.dianxinos.dxbs.R.id _tmp = ly.f;
            View view = viewgroup.findViewById(0x7f070025);
            if (view != null && i1 > view.getLeft() && i1 < view.getRight() && view.getVisibility() == 0)
            {
                m = getHeight() / 3;
                n = (2 * getHeight()) / 3;
                j.setDrawingCacheEnabled(true);
                Bitmap bitmap = Bitmap.createBitmap(j.getDrawingCache());
                k.a(b);
                k.a(p, c);
                a(bitmap, j1);
                return true;
            } else
            {
                return false;
            }
        } else
        {
            return false;
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i1 = motionevent.getAction();
        if (a == null || c == -1) goto _L2; else goto _L1
_L1:
        i1;
        JVM INSTR tableswitch 1 2: default 44
    //                   1 46
    //                   2 73;
           goto _L3 _L4 _L5
_L3:
        return true;
_L4:
        a();
        a(e);
        l = 0;
        j.destroyDrawingCache();
        continue; /* Loop/switch isn't completed */
_L5:
        int j1 = (int)motionevent.getY();
        l = j1;
        a(j1, (int)motionevent.getRawY());
        if (true) goto _L3; else goto _L2
_L2:
        return super.onTouchEvent(motionevent);
    }

    public volatile void setAdapter(Adapter adapter)
    {
        setAdapter((ListAdapter)adapter);
    }

    public void setAdapter(ListAdapter listadapter)
    {
        super.setAdapter(listadapter);
        k = (aah)getAdapter();
    }
}
