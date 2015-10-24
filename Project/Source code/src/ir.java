// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.View;

final class ir
    implements android.view.ViewTreeObserver.OnPreDrawListener
{

    final View a;
    final Context b;

    ir(View view, Context context)
    {
        a = view;
        b = context;
        super();
    }

    public boolean onPreDraw()
    {
        if (a.getMeasuredHeight() > iq.a(b, 455))
        {
            android.view.ViewGroup.LayoutParams layoutparams = a.getLayoutParams();
            layoutparams.height = iq.a(b, 455);
            a.setLayoutParams(layoutparams);
        }
        return true;
    }
}
