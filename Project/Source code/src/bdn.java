// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class bdn
    implements Runnable
{

    final bdm a;

    bdn(bdm bdm1)
    {
        a = bdm1;
        super();
    }

    public void run()
    {
        a.invalidate();
    }
}
