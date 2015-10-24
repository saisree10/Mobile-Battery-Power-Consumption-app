// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.skinshop.OperationConfigActivity;

public class apn
    implements Runnable
{

    final OperationConfigActivity a;

    public apn(OperationConfigActivity operationconfigactivity)
    {
        a = operationconfigactivity;
        super();
    }

    public void run()
    {
        OperationConfigActivity.e(a).a();
    }
}
