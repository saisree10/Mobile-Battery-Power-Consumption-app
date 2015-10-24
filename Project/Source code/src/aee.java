// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Bundle;
import com.dianxinos.powermanager.billing.BillingService;

public class aee extends aed
{

    final BillingService c;

    public aee(BillingService billingservice)
    {
        c = billingservice;
        super(billingservice, -1);
    }

    protected long d()
    {
        Bundle bundle = a("CHECK_BILLING_SUPPORTED");
        boolean flag;
        if (BillingService.e().a(bundle).getInt("RESPONSE_CODE") == akt.a.ordinal())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        aeo.a(flag);
        return akr.a;
    }
}
