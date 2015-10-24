// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class bbb
    implements Runnable
{

    final Runnable a;
    final bba b;

    bbb(bba bba1, Runnable runnable)
    {
        b = bba1;
        a = runnable;
        super();
    }

    public void run()
    {
        a.run();
        b.a();
        return;
        Exception exception;
        exception;
        b.a();
        throw exception;
    }
}
