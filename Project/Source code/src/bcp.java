// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.concurrent.CountDownLatch;

final class bcp extends bca
{

    final bco c;

    bcp(bco bco1, bco bco2, CountDownLatch countdownlatch)
    {
        c = bco1;
        super(bco2, countdownlatch);
    }

    public final void run()
    {
        if (!bco.a(a))
        {
            try
            {
                bco.e();
                bco.a(a, bco.b(c), bco.c(a));
                bco.e();
                (new StringBuilder("status = ")).append(a.b().toString());
            }
            catch (InterruptedException interruptedexception)
            {
                bco.e();
            }
        }
        if (b != null)
        {
            b.countDown();
        }
    }
}
