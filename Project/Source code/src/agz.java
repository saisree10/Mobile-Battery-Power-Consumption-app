// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

public class agz extends agp
{

    private aev e;
    private aha f;

    public agz(Context context, aev aev1, aha aha1)
    {
        super(context);
        e = aev1;
        f = aha1;
        b = String.valueOf(aev1.u);
        c = aev1.j;
        d = "9";
    }

    protected void a(Context context, int i, int j)
    {
        e.j = j;
        aoj.b().c();
        f.a();
        super.a(context, i, j);
    }
}
