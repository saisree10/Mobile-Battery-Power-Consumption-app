// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.support.v4.widget.SlidingPaneLayout;
import android.view.View;

public class gc
    implements gb
{

    public gc()
    {
    }

    public void a(SlidingPaneLayout slidingpanelayout, View view)
    {
        dj.a(slidingpanelayout, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }
}
