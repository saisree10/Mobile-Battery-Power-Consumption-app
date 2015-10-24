// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;

class agg
    implements android.view.animation.Animation.AnimationListener
{

    final agf a;

    agg(agf agf1)
    {
        a = agf1;
        super();
    }

    public void onAnimationEnd(Animation animation)
    {
        a.a.b.setNormalTransForm(false);
        a.a.b.setHealthTransForm(false);
        a.a.b.invalidate();
        float f;
        agd agd1;
        if (a.a.c)
        {
            f = -90F;
        } else
        {
            f = 90F;
        }
        agd1 = new agd(f, 0.0F, -1F, -1F, 0.0F, a.a.c);
        agd1.setDuration(a.a.d);
        agd1.setInterpolator(new DecelerateInterpolator());
        agd1.setAnimationListener(new agh(this));
        a.a.b.startAnimation(agd1);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }
}
