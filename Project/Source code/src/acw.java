// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class acw extends Thread
{

    final acu a;
    private volatile boolean b;
    private volatile boolean c;
    private int d;

    private acw(acu acu1)
    {
        a = acu1;
        super();
        b = false;
        c = false;
    }

    acw(acu acu1, acv acv)
    {
        this(acu1);
    }

    public void a(int i)
    {
        b = false;
        c = true;
        d = i;
    }

    public boolean a()
    {
        return c;
    }

    public void b()
    {
        b = true;
        c = false;
        interrupt();
    }

    public void run()
    {
        long l = acu.a(a).a();
        int i = d;
        do
        {
            long l1;
label0:
            {
                if (!b)
                {
                    long l2;
                    try
                    {
                        Thread.sleep(60000L);
                    }
                    catch (InterruptedException interruptedexception)
                    {
                        interruptedexception.printStackTrace();
                    }
                    if (b)
                    {
                        continue;
                    }
                    l1 = acu.a(a).a();
                    l2 = l1 - l;
                    if (l2 < 60000L)
                    {
                        continue;
                    }
                    i += (int)l2;
                    acu.a(a, i);
                    if (i < 0x927c0)
                    {
                        break label0;
                    }
                    azt.a("BatteryChargingHelper", (new StringBuilder()).append("Health charging done: ").append(l1).toString());
                }
                c = false;
                b = true;
                acu.b(a);
                return;
            }
            l = l1;
        } while (true);
    }
}
