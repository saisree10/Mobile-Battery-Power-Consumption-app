// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.os.Handler;
import android.widget.Toast;
import com.dianxinos.powermanager.billing.BillingService;

public class aej extends aem
{

    private static String a = "CustomPurchaseObserver";
    private boolean b;
    private String c;
    private Handler d;
    private BillingService e;
    private Activity f;

    public aej(Activity activity, String s, Handler handler, BillingService billingservice)
    {
        super(activity, handler);
        f = activity;
        c = s;
        e = billingservice;
        d = handler;
    }

    static void a(String s, String s1)
    {
    }

    private void b(String s, String s1)
    {
        b = true;
        if (!e.a(s, s1))
        {
            d.sendEmptyMessage(3);
            b = false;
        }
    }

    public void a(aeh aeh, akt akt1)
    {
        if (akt1 == akt.a)
        {
            return;
        }
        if (akt1 == akt.b)
        {
            a(a, "user canceled purchase");
            b = false;
            return;
        } else
        {
            a(a, "purchase failed");
            b = false;
            return;
        }
    }

    public void a(aei aei, akt akt1)
    {
        if (akt1 == akt.a)
        {
            a(a, "completed RestoreTransactions request");
            return;
        } else
        {
            a(a, (new StringBuilder()).append("RestoreTransactions error: ").append(akt1).toString());
            return;
        }
    }

    public void a(aks aks1, String s, int i, long l, String s1)
    {
        a(a, (new StringBuilder()).append("onPurchaseStateChange() itemId: ").append(s).append(" ").append(aks1).toString());
        if (aks1 == aks.a)
        {
            if ("dxpowermanagerpro".equals(s))
            {
                azr azr1 = azr.a(f);
                if (azr1.i())
                {
                    azr1.b(false);
                    Activity activity2 = f;
                    com.dianxinos.dxbs.R.string _tmp = ly.i;
                    Toast.makeText(activity2, 0x7f0a01b2, 0).show();
                }
            }
            d.sendEmptyMessage(1);
        } else
        {
            if (aks1 == aks.c || aks1 == aks.b)
            {
                Activity activity = f;
                Activity activity1 = f;
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                Toast.makeText(activity, activity1.getString(0x7f0a01b3), 0).show();
            }
            arr.a(f).t();
            d.sendEmptyMessage(2);
        }
        b = false;
    }

    public void a(boolean flag)
    {
        a(flag, 3);
    }

    public void a(boolean flag, int i)
    {
        a(a, (new StringBuilder()).append("supported: ").append(flag).toString());
        if (flag)
        {
            e.b();
            b(c, null);
            return;
        } else
        {
            d.sendEmptyMessage(i);
            return;
        }
    }

    public boolean a()
    {
        return b;
    }

    public void b()
    {
        aeo.a(this);
    }

}
