// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Bundle;
import android.os.RemoteException;
import com.dianxinos.powermanager.billing.BillingService;

public class aeg extends aed
{

    long c;
    final String d[];
    final BillingService e;

    public aeg(BillingService billingservice, int i, String as[])
    {
        e = billingservice;
        super(billingservice, i);
        d = as;
    }

    protected void a(RemoteException remoteexception)
    {
        super.a(remoteexception);
        aeq.a(c);
    }

    protected long d()
    {
        c = aeq.a();
        Bundle bundle = a("GET_PURCHASE_INFORMATION");
        bundle.putLong("NONCE", c);
        bundle.putStringArray("NOTIFY_IDS", d);
        Bundle bundle1 = BillingService.e().a(bundle);
        a("getPurchaseInformation", bundle1);
        return bundle1.getLong("REQUEST_ID", akr.a);
    }
}
