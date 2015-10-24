// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class qf
    implements Runnable
{

    final ou a;
    final String b;
    final qb c;

    qf(qb qb1, ou ou, String s)
    {
        c = qb1;
        a = ou;
        b = s;
        super();
    }

    public void run()
    {
        c.e(a, b);
    }
}
