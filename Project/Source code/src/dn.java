// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Paint;
import android.view.View;

class dn extends dm
{

    dn()
    {
    }

    long a()
    {
        return dv.a();
    }

    public void a(View view, int i, Paint paint)
    {
        dv.a(view, i, paint);
    }

    public void a(View view, Paint paint)
    {
        a(view, d(view), paint);
        view.invalidate();
    }

    public int d(View view)
    {
        return dv.a(view);
    }
}
