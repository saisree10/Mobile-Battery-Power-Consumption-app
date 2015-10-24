// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.animation.Animation;

class agh
    implements android.view.animation.Animation.AnimationListener
{

    final agg a;

    agh(agg agg1)
    {
        a = agg1;
        super();
    }

    public void onAnimationEnd(Animation animation)
    {
        a.a.a.b.setNormalAnimShowing(false);
        a.a.a.b.setHealthAnimShowing(false);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }
}
