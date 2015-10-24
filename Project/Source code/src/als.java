// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;

class als
    implements android.view.View.OnClickListener
{

    final alu a;
    final alr b;

    als(alr alr1, alu alu)
    {
        b = alr1;
        a = alu;
        super();
    }

    public void onClick(View view)
    {
        alr.a(b).a(a);
        if (alr.b(b))
        {
            b.b();
        }
    }
}
