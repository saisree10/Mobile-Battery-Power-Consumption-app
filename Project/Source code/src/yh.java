// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.MotionEvent;
import com.dianxinos.optimizer.module.messagebox.DisableScrollListView;

class yh extends android.view.GestureDetector.SimpleOnGestureListener
{

    yf a;
    final ya b;

    public yh(ya ya1, yf yf1)
    {
        b = ya1;
        super();
        a = yf1;
    }

    public void onLongPress(MotionEvent motionevent)
    {
        onSingleTapConfirmed(motionevent);
    }

    public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        if (motionevent.getX() - motionevent1.getX() > (float)ya.a(b))
        {
            a.b();
            ya.b(b).setListScrool(false);
        } else
        if (motionevent1.getX() - motionevent.getX() > 0.0F)
        {
            a.a();
        } else
        {
            a.a();
        }
        return true;
    }

    public boolean onSingleTapConfirmed(MotionEvent motionevent)
    {
        if (ya.c(b))
        {
            b.a();
        } else
        {
            ya.d(b).a();
        }
        return true;
    }
}
