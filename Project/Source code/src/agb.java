// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.animation.Animation;
import android.widget.TextView;
import com.dianxinos.powermanager.chargingrecord.ChargerRecordActivity;

public class agb
    implements android.view.animation.Animation.AnimationListener
{

    final ChargerRecordActivity a;

    public agb(ChargerRecordActivity chargerrecordactivity)
    {
        a = chargerrecordactivity;
        super();
    }

    public void onAnimationEnd(Animation animation)
    {
        ChargerRecordActivity.a(a).setVisibility(4);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }
}
