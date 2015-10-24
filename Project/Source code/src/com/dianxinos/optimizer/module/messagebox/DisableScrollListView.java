// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.optimizer.module.messagebox;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ListView;

public class DisableScrollListView extends ListView
{

    private boolean a;

    public DisableScrollListView(Context context)
    {
        super(context);
        a = true;
    }

    public DisableScrollListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = true;
    }

    public DisableScrollListView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = true;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (a)
        {
            return super.onInterceptTouchEvent(motionevent);
        } else
        {
            return false;
        }
    }

    public void setListScrool(boolean flag)
    {
        a = flag;
    }
}
