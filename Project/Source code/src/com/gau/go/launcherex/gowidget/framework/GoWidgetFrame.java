// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.gau.go.launcherex.gowidget.framework;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;

// Referenced classes of package com.gau.go.launcherex.gowidget.framework:
//            GoWidgetLife

public abstract class GoWidgetFrame extends FrameLayout
    implements GoWidgetLife
{

    public GoWidgetFrame(Context context)
    {
        super(context);
    }

    public GoWidgetFrame(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public GoWidgetFrame(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }
}
