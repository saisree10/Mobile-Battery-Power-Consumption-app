// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.concurrent.CountDownLatch;

public class bca
    implements Runnable
{

    bco a;
    CountDownLatch b;

    public bca(bco bco1, CountDownLatch countdownlatch)
    {
        a = null;
        b = null;
        a = bco1;
        b = countdownlatch;
    }

    public void run()
    {
        a.c();
        if (b != null)
        {
            b.countDown();
        }
    }
}
