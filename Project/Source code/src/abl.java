// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.SystemClock;
import com.dianxinos.powermanager.PowerMgrService;

public class abl extends Thread
{

    final PowerMgrService a;
    private volatile boolean b;
    private volatile long c;
    private volatile long d;

    private abl(PowerMgrService powermgrservice)
    {
        a = powermgrservice;
        super();
    }

    public abl(PowerMgrService powermgrservice, abg abg)
    {
        this(powermgrservice);
    }

    public void a()
    {
        b = true;
        interrupt();
    }

    public void a(long l, long l1)
    {
        if (l < 0L || l1 <= 0L)
        {
            throw new IllegalArgumentException();
        } else
        {
            c = l + SystemClock.elapsedRealtime();
            d = l1;
            return;
        }
    }

    public void run()
    {
        while (!b) 
        {
            long l = SystemClock.elapsedRealtime();
            if (l >= c)
            {
                azt.a("PowerMgrService", "Snap the battery usage in service");
                a.a.a(true);
                c = l + d;
            }
            try
            {
                Thread.sleep(0x927c0L);
            }
            catch (Exception exception) { }
        }
    }
}
