// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.skinshop.OperationConfigActivity;

public class apr
    implements Runnable
{

    final OperationConfigActivity a;

    public apr(OperationConfigActivity operationconfigactivity)
    {
        a = operationconfigactivity;
        super();
    }

    public void run()
    {
        bal.a(a, "ssc", "ssoc", Integer.valueOf(1));
    }
}
