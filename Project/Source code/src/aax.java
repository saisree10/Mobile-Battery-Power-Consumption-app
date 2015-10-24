// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.PowerMangerApplication;

public class aax
    implements Runnable
{

    final PowerMangerApplication a;

    public aax(PowerMangerApplication powermangerapplication)
    {
        a = powermangerapplication;
        super();
    }

    public void run()
    {
        tb tb1 = tb.a(PowerMangerApplication.b());
        tb1.a();
        tb1.a(true, "com.dianxinos.*|com.es.*");
    }
}
