// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.dianxinos.powermanager.billing.BillingService;
import java.util.HashMap;
import java.util.LinkedList;

public abstract class aed
{

    protected long a;
    final BillingService b;
    private final int c;

    public aed(BillingService billingservice, int i)
    {
        b = billingservice;
        super();
        c = i;
    }

    public int a()
    {
        return c;
    }

    protected Bundle a(String s)
    {
        Bundle bundle = new Bundle();
        bundle.putString("BILLING_REQUEST", s);
        bundle.putInt("API_VERSION", 1);
        bundle.putString("PACKAGE_NAME", b.getPackageName());
        return bundle;
    }

    public void a(akt akt1)
    {
    }

    protected void a(RemoteException remoteexception)
    {
        Log.w("BillingService", "remote billing service crashed");
        BillingService.a(null);
    }

    protected void a(String s, Bundle bundle)
    {
        akt.a(bundle.getInt("RESPONSE_CODE"));
    }

    public boolean b()
    {
        if (c())
        {
            return true;
        }
        if (BillingService.a(b))
        {
            BillingService.d().add(this);
            return true;
        } else
        {
            return false;
        }
    }

    public boolean c()
    {
        if (BillingService.e() == null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        a = d();
        if (a >= 0L)
        {
            BillingService.f().put(Long.valueOf(a), this);
        }
        return true;
        RemoteException remoteexception;
        remoteexception;
        a(remoteexception);
        return false;
    }

    protected abstract long d();
}
