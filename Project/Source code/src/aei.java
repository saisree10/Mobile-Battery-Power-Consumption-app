// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Bundle;
import android.os.RemoteException;
import com.dianxinos.powermanager.billing.BillingService;

public class aei extends aed
{

    long c;
    final BillingService d;

    public aei(BillingService billingservice)
    {
        d = billingservice;
        super(billingservice, -1);
    }

    protected void a(akt akt)
    {
        aeo.a(d, this, akt);
    }

    protected void a(RemoteException remoteexception)
    {
        super.a(remoteexception);
        aeq.a(c);
    }

    protected long d()
    {
        c = aeq.a();
        Bundle bundle = a("RESTORE_TRANSACTIONS");
        bundle.putLong("NONCE", c);
        Bundle bundle1 = BillingService.e().a(bundle);
        if (bundle1 != null)
        {
            a("restoreTransactions", bundle1);
            return bundle1.getLong("REQUEST_ID", akr.a);
        } else
        {
            return -1L;
        }
    }
}
