// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.dianxinos.powermanager.chargingrecord.CalendarView;

public class afx
    implements android.view.animation.Animation.AnimationListener
{

    final CalendarView a;

    public afx(CalendarView calendarview)
    {
        a = calendarview;
        super();
    }

    public void onAnimationEnd(Animation animation)
    {
        CalendarView.a(a).setVisibility(8);
        CalendarView.a(a).setImageBitmap(null);
        CalendarView.b(a).recycle();
        CalendarView.a(a, null);
        CalendarView.c(a).setDrawingCacheEnabled(false);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }
}
