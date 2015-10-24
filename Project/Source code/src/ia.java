// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.MotionEvent;
import android.view.View;
import com.dianxinos.acomponent.ui.ADMainActivity;

public class ia
    implements android.view.View.OnTouchListener
{

    final ADMainActivity a;
    private float b;

    public ia(ADMainActivity admainactivity)
    {
        a = admainactivity;
        super();
        b = 0.0F;
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (2 != motionevent.getAction()) goto _L2; else goto _L1
_L1:
        float f1 = motionevent.getX();
        if (f1 >= b - 30F) goto _L4; else goto _L3
_L3:
        ADMainActivity.a(a, 1);
_L6:
        b = motionevent.getX();
        return true;
_L4:
        if (f1 > 30F + b)
        {
            ADMainActivity.a(a, -1);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (motionevent.getAction() == 0)
        {
            b = motionevent.getX();
        } else
        if (1 == motionevent.getAction())
        {
            float f = motionevent.getX();
            if (f < 1.0F + b && f > b - 1.0F)
            {
                ADMainActivity.a(a, 1);
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
