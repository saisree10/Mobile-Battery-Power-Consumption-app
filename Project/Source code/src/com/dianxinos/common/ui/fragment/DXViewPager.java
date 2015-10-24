// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.common.ui.fragment;

import android.content.Context;
import android.os.Handler;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;

public class DXViewPager extends ViewPager
{

    private boolean a;
    private Handler b;

    public DXViewPager(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = false;
        b = null;
    }

    public boolean c(int i)
    {
        while (a || i != 17 && i != 66) 
        {
            return false;
        }
        return super.c(i);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (a)
        {
            return false;
        } else
        {
            return super.onInterceptTouchEvent(motionevent);
        }
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        super.onLayout(flag, i, j, k, l);
        if (b != null)
        {
            b.sendEmptyMessageDelayed(100, 10L);
            b = null;
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag;
        try
        {
            flag = super.onTouchEvent(motionevent);
        }
        catch (Exception exception)
        {
            return false;
        }
        return flag;
    }

    public void setInitMessage(Handler handler)
    {
        b = handler;
    }

    public void setViewTouchMode(boolean flag)
    {
        if (!flag || f()) goto _L2; else goto _L1
_L1:
        d();
_L4:
        a = flag;
        return;
_L2:
        if (!flag && f())
        {
            e();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
