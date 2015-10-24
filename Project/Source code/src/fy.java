// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.util.AttributeSet;

public class fy extends android.view.ViewGroup.MarginLayoutParams
{

    private static final int e[] = {
        0x1010181
    };
    public float a;
    public boolean b;
    public boolean c;
    public Paint d;

    public fy()
    {
        super(-1, -1);
        a = 0.0F;
    }

    public fy(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 0.0F;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, e);
        a = typedarray.getFloat(0, 0.0F);
        typedarray.recycle();
    }

    public fy(android.view.ViewGroup.LayoutParams layoutparams)
    {
        super(layoutparams);
        a = 0.0F;
    }

    public fy(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
    {
        super(marginlayoutparams);
        a = 0.0F;
    }

}
