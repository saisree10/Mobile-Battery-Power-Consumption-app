// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class yd
    implements Runnable
{

    final ya a;

    yd(ya ya1)
    {
        a = ya1;
        super();
    }

    public void run()
    {
        a.smoothScrollTo(0, 0);
    }
}
