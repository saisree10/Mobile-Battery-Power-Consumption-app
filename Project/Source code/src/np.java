// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class np
    implements Runnable
{

    final od a;
    final no b;

    np(no no1, od od)
    {
        b = no1;
        a = od;
        super();
    }

    public void run()
    {
        no.a(b, a);
    }
}
