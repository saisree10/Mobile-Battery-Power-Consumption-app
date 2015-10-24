// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.skinshop.OperationConfigActivity;

public class apt
    implements Runnable
{

    final aev a;
    final OperationConfigActivity b;

    public apt(OperationConfigActivity operationconfigactivity, aev aev)
    {
        b = operationconfigactivity;
        a = aev;
        super();
    }

    public void run()
    {
        aoj.b().a(a);
    }
}
