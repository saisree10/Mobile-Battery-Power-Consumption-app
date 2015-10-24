// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


abstract class kq
    implements Comparable, Runnable
{

    public int b;
    final kl c;

    public kq(kl kl)
    {
        this(kl, 1);
    }

    public kq(kl kl, int i)
    {
        c = kl;
        super();
        b = 1;
        b = i;
    }

    public int a(kq kq1)
    {
        return b - kq1.b;
    }

    public int compareTo(Object obj)
    {
        return a((kq)obj);
    }
}
