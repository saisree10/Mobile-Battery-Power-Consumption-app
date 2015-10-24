// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.skinshop.OperationConfigActivity;

public class aqb
    implements Runnable
{

    final String a;
    final int b;
    final OperationConfigActivity c;

    public aqb(OperationConfigActivity operationconfigactivity, String s, int i)
    {
        c = operationconfigactivity;
        a = s;
        b = i;
        super();
    }

    public void run()
    {
        OperationConfigActivity.e(c).a(a, b);
    }
}
