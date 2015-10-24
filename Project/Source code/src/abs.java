// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.PowerMgrTabActivity;

public class abs
    implements Runnable
{

    final PowerMgrTabActivity a;

    public abs(PowerMgrTabActivity powermgrtabactivity)
    {
        a = powermgrtabactivity;
        super();
    }

    public void run()
    {
        PowerMgrTabActivity.b(a, 250);
    }
}
