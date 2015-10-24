// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.billing;

import adp;
import aed;
import aee;
import aef;
import aeg;
import aeh;
import aei;
import aeo;
import aeq;
import aer;
import aev;
import akt;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import aoj;
import azt;
import azu;
import com.dianxinos.common.coins.CoinManager;
import go;
import gp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import mf;
import oo;
import org.json.JSONException;
import org.json.JSONObject;

public class BillingService extends Service
    implements ServiceConnection
{

    private static go a;
    private static LinkedList b = new LinkedList();
    private static HashMap c = new HashMap();

    public BillingService()
    {
    }

    public static go a(go go)
    {
        a = go;
        return go;
    }

    private void a(int i, String s, String s1)
    {
        ArrayList arraylist = aeq.a(s, s1);
        if (arraylist != null) goto _L2; else goto _L1
_L1:
        azt.d("BillingService", "Purchase verify failed");
_L4:
        return;
_L2:
        ArrayList arraylist1 = new ArrayList();
        ArrayList arraylist2 = new ArrayList();
        aer aer1;
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); aeo.a(this, aer1.a, aer1.c, aer1.d, aer1.e, aer1.f))
        {
            aer1 = (aer)iterator.next();
            a((new StringBuilder()).append("Purchase state changed:").append(aer1.c).toString());
            if (aer1.b != null)
            {
                arraylist1.add(aer1.b);
            }
            arraylist2.add(aer1.c);
        }

        if (!arraylist1.isEmpty())
        {
            a(i, (String[])arraylist1.toArray(new String[arraylist1.size()]));
        }
        CoinManager coinmanager = CoinManager.a(this);
        if (coinmanager.a(oo.d) && azu.a())
        {
            ArrayList arraylist3 = new ArrayList();
            ArrayList arraylist4 = coinmanager.a(arraylist2);
            if (arraylist4 != null)
            {
                for (Iterator iterator2 = arraylist4.iterator(); iterator2.hasNext();)
                {
                    JSONObject jsonobject = (JSONObject)iterator2.next();
                    try
                    {
                        arraylist3.add(new aev(jsonobject));
                    }
                    catch (JSONException jsonexception) { }
                }

            }
            adp adp1 = adp.a(this);
            aoj aoj1 = aoj.b();
            mf mf1 = mf.a(this);
            if (adp1.q())
            {
                adp1.r();
                mf1.a(aoj1.a(true));
            }
            Iterator iterator1 = arraylist3.iterator();
            while (iterator1.hasNext()) 
            {
                aev aev1 = (aev)iterator1.next();
                mf1.b(String.valueOf(aev1.u), "9");
                aoj1.a(aev1);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void a(long l, akt akt1)
    {
        aed aed1 = (aed)c.get(Long.valueOf(l));
        if (aed1 != null)
        {
            aed1.a(akt1);
        }
        c.remove(Long.valueOf(l));
    }

    private static void a(String s)
    {
    }

    private boolean a(int i, String as[])
    {
        return (new aef(this, i, as)).b();
    }

    public static boolean a(BillingService billingservice)
    {
        return billingservice.g();
    }

    private boolean b(int i, String as[])
    {
        return (new aeg(this, i, as)).b();
    }

    public static LinkedList d()
    {
        return b;
    }

    public static go e()
    {
        return a;
    }

    public static HashMap f()
    {
        return c;
    }

    private boolean g()
    {
        if (bindService(new Intent("com.android.vending.billing.MarketBillingService.BIND"), this, 1))
        {
            return true;
        }
        try
        {
            Log.e("BillingService", "Could not bind to service.");
        }
        catch (SecurityException securityexception)
        {
            Log.e("BillingService", (new StringBuilder()).append("Security exception: ").append(securityexception).toString());
        }
        return false;
    }

    private void h()
    {
        g();
_L2:
        return;
        int i = -1;
        do
        {
            aed aed1 = (aed)b.peek();
            if (aed1 == null)
            {
                break;
            }
label0:
            {
                if (!aed1.c())
                {
                    break label0;
                }
                b.remove();
                if (i < aed1.a())
                {
                    i = aed1.a();
                }
            }
        } while (true);
        if (i >= 0)
        {
            stopSelf(i);
            return;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void a(Context context)
    {
        attachBaseContext(context);
    }

    public void a(Intent intent, int i)
    {
        String s = intent.getAction();
        if ("com.example.dungeons.CONFIRM_NOTIFICATION".equals(s))
        {
            a(i, intent.getStringArrayExtra("notification_id"));
        } else
        {
            if ("com.example.dungeons.GET_PURCHASE_INFORMATION".equals(s))
            {
                b(i, new String[] {
                    intent.getStringExtra("notification_id")
                });
                return;
            }
            if ("com.android.vending.billing.PURCHASE_STATE_CHANGED".equals(s))
            {
                a(i, intent.getStringExtra("inapp_signed_data"), intent.getStringExtra("inapp_signature"));
                return;
            }
            if ("com.android.vending.billing.RESPONSE_CODE".equals(s))
            {
                a(intent.getLongExtra("request_id", -1L), akt.a(intent.getIntExtra("response_code", akt.g.ordinal())));
                return;
            }
        }
    }

    public boolean a()
    {
        return (new aee(this)).b();
    }

    public boolean a(String s, String s1)
    {
        return (new aeh(this, s, s1)).b();
    }

    public boolean b()
    {
        return (new aei(this)).b();
    }

    public void c()
    {
        try
        {
            unbindService(this);
            return;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return;
        }
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        a = gp.a(ibinder);
        h();
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        Log.w("BillingService", "Billing service disconnected");
        a = null;
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        if (intent != null)
        {
            a(intent, j);
        }
        return super.onStartCommand(intent, i, j);
    }

}
