// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

public class ek extends bz
{

    final ViewPager b;

    public ek(ViewPager viewpager)
    {
        b = viewpager;
        super();
    }

    private boolean b()
    {
        return ViewPager.a(b) != null && ViewPager.a(b).b() > 1;
    }

    public void a(View view, er er1)
    {
        super.a(view, er1);
        er1.a(android/support/v4/view/ViewPager.getName());
        er1.a(b());
        if (b.canScrollHorizontally(1))
        {
            er1.a(4096);
        }
        if (b.canScrollHorizontally(-1))
        {
            er1.a(8192);
        }
    }

    public void d(View view, AccessibilityEvent accessibilityevent)
    {
        super.d(view, accessibilityevent);
        accessibilityevent.setClassName(android/support/v4/view/ViewPager.getName());
        fa fa1 = fa.a();
        fa1.a(b());
        if (accessibilityevent.getEventType() == 4096 && ViewPager.a(b) != null)
        {
            fa1.a(ViewPager.a(b).b());
            fa1.b(ViewPager.b(b));
            fa1.c(ViewPager.b(b));
        }
    }
}
