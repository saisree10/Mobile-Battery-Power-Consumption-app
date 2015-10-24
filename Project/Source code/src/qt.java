// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class qt
    implements Runnable
{

    final ou a;
    final String b;
    final qs c;

    qt(qs qs1, ou ou, String s)
    {
        c = qs1;
        a = ou;
        b = s;
        super();
    }

    public void run()
    {
        c.e(a, b);
    }
}
