// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.common.coins.CoinManager;
import com.dianxinos.powermanager.PowerMgrTabActivity;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class abt
    implements Runnable
{

    final PowerMgrTabActivity a;

    public abt(PowerMgrTabActivity powermgrtabactivity)
    {
        a = powermgrtabactivity;
        super();
    }

    public void run()
    {
        if (PowerMgrTabActivity.m(a).a(oo.a))
        {
            PowerMgrTabActivity.m(a).a(null, null);
        }
        if (PowerMgrTabActivity.m(a).a(oo.b))
        {
            pa.a(a);
            pa.a(a, null);
        }
        if (PowerMgrTabActivity.m(a).a(oo.c) && azu.a())
        {
            ArrayList arraylist = new ArrayList();
            ArrayList arraylist1 = PowerMgrTabActivity.m(a).f();
            if (arraylist1 != null)
            {
                for (Iterator iterator1 = arraylist1.iterator(); iterator1.hasNext();)
                {
                    JSONObject jsonobject = (JSONObject)iterator1.next();
                    try
                    {
                        arraylist.add(new aev(jsonobject));
                    }
                    catch (JSONException jsonexception) { }
                }

            }
            if (PowerMgrTabActivity.n(a).o())
            {
                PowerMgrTabActivity.n(a).p();
                ArrayList arraylist2 = PowerMgrTabActivity.o(a).a(false);
                PowerMgrTabActivity.p(a).a(arraylist2);
            }
            aev aev1;
            for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); PowerMgrTabActivity.o(a).a(aev1))
            {
                aev1 = (aev)iterator.next();
                PowerMgrTabActivity.p(a).b(String.valueOf(aev1.u), "9");
            }

        }
        any.a(a).c();
    }
}
