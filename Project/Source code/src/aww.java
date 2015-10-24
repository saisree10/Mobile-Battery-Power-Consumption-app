// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.MotionEvent;
import android.view.View;

class aww
    implements android.view.View.OnTouchListener
{

    final awu a;

    aww(awu awu1)
    {
        a = awu1;
        super();
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        return awu.a(a, view, motionevent);
    }
}
