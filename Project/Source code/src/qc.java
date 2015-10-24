// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;

class qc
    implements Runnable
{

    final int a;
    final qb b;

    qc(qb qb1, int i)
    {
        b = qb1;
        a = i;
        super();
    }

    public void run()
    {
        if (qb.a(b).isFinishing())
        {
            return;
        }
        if (qb.b(b) == null)
        {
            qb.a(b, qb.c(b));
        }
        qb.b(b).a(a);
        qb.b(b).show();
    }
}
