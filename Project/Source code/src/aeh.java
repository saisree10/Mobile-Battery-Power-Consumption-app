// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.dianxinos.powermanager.billing.BillingService;

public class aeh extends aed
{

    public final String c;
    public final String d;
    final BillingService e;

    public aeh(BillingService billingservice, String s, String s1)
    {
        e = billingservice;
        super(billingservice, -1);
        c = s;
        d = s1;
    }

    protected void a(akt akt)
    {
        aeo.a(e, this, akt);
    }

    protected long d()
    {
        Bundle bundle = a("REQUEST_PURCHASE");
        bundle.putString("ITEM_ID", c);
        if (d != null)
        {
            bundle.putString("DEVELOPER_PAYLOAD", d);
        }
        Bundle bundle1 = BillingService.e().a(bundle);
        PendingIntent pendingintent = (PendingIntent)bundle1.getParcelable("PURCHASE_INTENT");
        if (pendingintent == null)
        {
            Log.e("BillingService", "Error with requestPurchase");
            return akr.a;
        } else
        {
            aeo.a(pendingintent, new Intent());
            return bundle1.getLong("REQUEST_ID", akr.a);
        }
    }
}
