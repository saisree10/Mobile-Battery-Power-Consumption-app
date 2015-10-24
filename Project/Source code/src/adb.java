// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.TimerTask;

class adb extends TimerTask
{

    final acz a;

    adb(acz acz1)
    {
        a = acz1;
        super();
    }

    public void run()
    {
        acz.a(a, true);
        if (acz.b(a) != null)
        {
            acz.a(a, acz.b(a));
        }
    }
}
