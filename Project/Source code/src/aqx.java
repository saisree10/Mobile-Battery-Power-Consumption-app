// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.dianxinos.powermanager.skinshop.SkinShopViewPager;

public class aqx extends android.view.ViewGroup.LayoutParams
{

    public boolean a;
    public int b;
    public float c;
    public boolean d;
    public int e;
    public int f;

    public aqx()
    {
        super(-1, -1);
        c = 0.0F;
    }

    public aqx(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = 0.0F;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, SkinShopViewPager.g());
        b = typedarray.getInteger(0, 48);
        typedarray.recycle();
    }
}
