// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.dianxinos.optimizer.module.messagebox.DisableScrollListView;

class yc
    implements android.view.View.OnTouchListener
{

    final ya a;

    yc(ya ya1)
    {
        a = ya1;
        super();
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        ya.e(a).onTouchEvent(motionevent);
        switch (0xff & motionevent.getAction())
        {
        default:
            return false;

        case 0: // '\0'
            ya.d(a).b();
            return false;

        case 1: // '\001'
            ya.b(a).setListScrool(true);
            break;
        }
        ya.f(a);
        JVM INSTR tableswitch 1 2: default 100
    //                   1 121
    //                   2 111;
           goto _L1 _L2 _L3
_L1:
        ya.a(a, 0);
        return false;
_L3:
        a.a();
        continue; /* Loop/switch isn't completed */
_L2:
        ya.g(a);
        if (true) goto _L1; else goto _L4
_L4:
    }
}
