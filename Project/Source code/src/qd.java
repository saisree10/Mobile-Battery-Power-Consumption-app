// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;

class qd
    implements Runnable
{

    final qb a;

    qd(qb qb1)
    {
        a = qb1;
        super();
    }

    public void run()
    {
        while (qb.a(a).isFinishing() || qb.b(a) == null) 
        {
            return;
        }
        qb.b(a).dismiss();
    }
}
