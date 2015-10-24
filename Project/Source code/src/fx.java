// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.support.v4.widget.SlidingPaneLayout;
import android.view.View;
import java.util.ArrayList;

public class fx
    implements Runnable
{

    final View a;
    final SlidingPaneLayout b;

    public fx(SlidingPaneLayout slidingpanelayout, View view)
    {
        b = slidingpanelayout;
        super();
        a = view;
    }

    public void run()
    {
        if (a.getParent() == b)
        {
            dj.a(a, 0, null);
            SlidingPaneLayout.a(b, a);
        }
        SlidingPaneLayout.a(b).remove(this);
    }
}
