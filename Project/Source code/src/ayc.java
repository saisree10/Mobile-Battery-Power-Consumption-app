// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;

class ayc
    implements android.view.View.OnClickListener
{

    final aya a;

    ayc(aya aya1)
    {
        a = aya1;
        super();
    }

    public void onClick(View view)
    {
        ayd ayd1 = (ayd)view.getTag();
        aya.a(a, ayd1);
    }
}
