// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;

public class ej extends android.view.ViewGroup.LayoutParams
{

    public boolean a;
    public int b;
    public float c;
    public boolean d;
    public int e;
    public int f;

    public ej()
    {
        super(-1, -1);
        c = 0.0F;
    }

    public ej(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = 0.0F;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, ViewPager.i());
        b = typedarray.getInteger(0, 48);
        typedarray.recycle();
    }
}
