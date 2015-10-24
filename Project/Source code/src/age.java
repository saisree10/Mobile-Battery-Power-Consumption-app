// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;

final class age
    implements android.view.animation.Animation.AnimationListener
{

    final boolean a;
    final afv b;
    final boolean c;
    final int d;

    age(boolean flag, afv afv1, boolean flag1, int i)
    {
        a = flag;
        b = afv1;
        c = flag1;
        d = i;
        super();
    }

    public void onAnimationEnd(Animation animation)
    {
        float f;
        agd agd1;
        if (a)
        {
            b.setNormalTransForm(true);
            b.setHealthTransForm(false);
        } else
        {
            b.setNormalTransForm(false);
            b.setHealthTransForm(true);
        }
        b.invalidate();
        if (c)
        {
            f = -90F;
        } else
        {
            f = 90F;
        }
        agd1 = new agd(f, 0.0F, -1F, -1F, 0.0F, c);
        agd1.setDuration(d);
        agd1.setInterpolator(new DecelerateInterpolator());
        agd1.setAnimationListener(new agf(this));
        b.startAnimation(agd1);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }
}
