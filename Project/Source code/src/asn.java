// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.appsflyer.AppsFlyerLib;
import com.dianxinos.powermanager.PowerMangerApplication;

class asn
    implements Runnable
{

    final asm a;

    asn(asm asm)
    {
        a = asm;
        super();
    }

    public void run()
    {
        try
        {
            AppsFlyerLib.a(PowerMangerApplication.a(), "Dev_Key", "premium", "");
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }
}
