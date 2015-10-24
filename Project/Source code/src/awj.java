// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.animation.Animation;
import com.dianxinos.powermanager.ui.RunAppBackView;

public class awj
    implements android.view.animation.Animation.AnimationListener
{

    final awl a;
    final RunAppBackView b;

    public awj(RunAppBackView runappbackview, awl awl1)
    {
        b = runappbackview;
        a = awl1;
        super();
    }

    public void onAnimationEnd(Animation animation)
    {
        a.a();
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }
}
