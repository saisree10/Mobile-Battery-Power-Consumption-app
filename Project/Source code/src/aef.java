// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Bundle;
import com.dianxinos.powermanager.billing.BillingService;

public class aef extends aed
{

    final String c[];
    final BillingService d;

    public aef(BillingService billingservice, int i, String as[])
    {
        d = billingservice;
        super(billingservice, i);
        c = as;
    }

    protected long d()
    {
        Bundle bundle = a("CONFIRM_NOTIFICATIONS");
        bundle.putStringArray("NOTIFY_IDS", c);
        Bundle bundle1 = BillingService.e().a(bundle);
        a("confirmNotifications", bundle1);
        return bundle1.getLong("REQUEST_ID", akr.a);
    }
}
