// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.widget.DrawerLayout;
import android.util.AttributeSet;

public class fi extends android.view.ViewGroup.MarginLayoutParams
{

    public int a;
    public float b;
    public boolean c;
    public boolean d;

    public fi(int i, int j)
    {
        super(i, j);
        a = 0;
    }

    public fi(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 0;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, DrawerLayout.c());
        a = typedarray.getInt(0, 0);
        typedarray.recycle();
    }

    public fi(android.view.ViewGroup.LayoutParams layoutparams)
    {
        super(layoutparams);
        a = 0;
    }

    public fi(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
    {
        super(marginlayoutparams);
        a = 0;
    }

    public fi(fi fi1)
    {
        super(fi1);
        a = 0;
        a = fi1.a;
    }
}
