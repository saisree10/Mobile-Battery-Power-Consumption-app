// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.List;

class qm
    implements Runnable
{

    final List a;
    final boolean b;
    final ql c;

    qm(ql ql1, List list, boolean flag)
    {
        c = ql1;
        a = list;
        b = flag;
        super();
    }

    public void run()
    {
        op.a(c.a, a, b);
    }
}
