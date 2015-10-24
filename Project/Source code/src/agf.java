// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;

class agf
    implements android.view.animation.Animation.AnimationListener
{

    final age a;

    agf(age age1)
    {
        a = age1;
        super();
    }

    public void onAnimationEnd(Animation animation)
    {
        float f;
        agd agd1;
        if (a.c)
        {
            f = 90F;
        } else
        {
            f = -90F;
        }
        agd1 = new agd(0.0F, f, -1F, -1F, 0.0F, a.c);
        agd1.setDuration(a.d);
        agd1.setStartOffset(800L);
        agd1.setInterpolator(new AccelerateInterpolator());
        agd1.setAnimationListener(new agg(this));
        a.b.startAnimation(agd1);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }
}
