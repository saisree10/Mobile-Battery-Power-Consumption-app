// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.PowerMgrTabActivity;

public class abr extends Thread
{

    final PowerMgrTabActivity a;

    public abr(PowerMgrTabActivity powermgrtabactivity)
    {
        a = powermgrtabactivity;
        super();
    }

    public void run()
    {
        setPriority(3);
        aoh.a(a);
        aof.a(a.getApplicationContext()).a();
    }
}
