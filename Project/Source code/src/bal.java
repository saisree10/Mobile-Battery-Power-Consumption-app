// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import com.dianxinos.common.coins.CoinManager;
import com.dianxinos.powermanager.PowerMangerApplication;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class bal
{

    public static JSONObject a(Context context, aev aev1)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("sspid", aev1.r);
            jsonobject.put("sstid", aev1.s);
            jsonobject.put("ssgid", aev1.t);
            jsonobject.put("sssid", aev1.u);
            jsonobject.put("ssco", gy.o(context));
        }
        catch (JSONException jsonexception)
        {
            return null;
        }
        return jsonobject;
    }

    public static void a(Context context)
    {
        sb sb1 = sb.a(context);
        sb1.b();
        sb1.c();
    }

    public static void a(Context context, int i1)
    {
        sb.a(context).a(i1);
    }

    public static void a(Context context, aon aon1)
    {
        sb sb1 = sb.a(context);
        ArrayList arraylist = aon1.a;
        if (arraylist != null && !arraylist.isEmpty())
        {
            sb1.a("sspd", 0, 1, 4, b(context, (aev)arraylist.get(0)));
            Iterator iterator = arraylist.iterator();
            while (iterator.hasNext()) 
            {
                sb1.a("ssdis", 0, 1, 4, a(context, (aev)iterator.next()));
            }
        }
    }

    public static void a(Context context, String s1)
    {
        sb sb1 = sb.a(context);
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("r", s1);
            sb1.a("install_referrer", 0, 0, 4, jsonobject);
            return;
        }
        catch (JSONException jsonexception)
        {
            return;
        }
    }

    public static void a(Context context, String s1, int i1, int j1)
    {
        if (c(context))
        {
            JSONObject jsonobject = new JSONObject();
            try
            {
                jsonobject.put("a", i1);
                jsonobject.put("f", j1);
            }
            catch (JSONException jsonexception)
            {
                return;
            }
            sb.a(context).a(s1, 0, 1, 4, jsonobject);
        }
    }

    public static void a(Context context, String s1, aev aev1)
    {
        if (aev1 != null)
        {
            sb.a(context).a(s1, 0, 1, 4, a(context, aev1));
        }
    }

    public static void a(Context context, String s1, String s2)
    {
        if (c(context))
        {
            sb.a(context).a(s1, 0, 1, 4, s2);
        }
    }

    public static void a(Context context, String s1, String s2, int i1)
    {
        JSONObject jsonobject;
        if (!c(context))
        {
            break MISSING_BLOCK_LABEL_48;
        }
        jsonobject = new JSONObject();
        jsonobject.put("mid", s2);
        jsonobject.put("mst", i1);
        sb.a(context).a(s1, 0, 1, 4, jsonobject);
        return;
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
        return;
    }

    public static void a(Context context, String s1, String s2, Number number)
    {
        a(context, s1, s2, number, false);
    }

    public static void a(Context context, String s1, String s2, Number number, boolean flag)
    {
        if (c(context) || flag)
        {
            sb.a(context).a(s1, s2, number);
        }
    }

    public static void a(String s1, JSONObject jsonobject, int i1)
    {
        PowerMangerApplication powermangerapplication = PowerMangerApplication.a();
        if (c(PowerMangerApplication.a()))
        {
            sb.a(powermangerapplication).a(s1, jsonobject, i1);
        }
    }

    public static void a(boolean flag, Context context, String s1, String s2, Number number)
    {
        if (flag)
        {
            a(context, s1, s2, number);
        }
    }

    public static void a(boolean flag, Context context, String s1, JSONObject jsonobject)
    {
        if (flag && c(context))
        {
            sb.a(context).a(s1, 0, 1, 4, jsonobject);
        }
    }

    public static boolean a(Context context, int i1, long l1)
    {
        boolean flag;
        sb sb1;
        JSONObject jsonobject;
        flag = true;
        if (!c(context))
        {
            break MISSING_BLOCK_LABEL_74;
        }
        sb1 = sb.a(context);
        jsonobject = new JSONObject();
        if (i1 != 100) goto _L2; else goto _L1
_L1:
        jsonobject.put("rhct", System.currentTimeMillis() - l1);
_L4:
        return sb1.a("rhcc", 0, 1, 4, jsonobject);
_L2:
        jsonobject.put("rfcp", i1);
        if (true) goto _L4; else goto _L3
_L3:
        JSONException jsonexception;
        jsonexception;
        flag = false;
        return flag;
    }

    public static boolean a(Context context, int i1, boolean flag)
    {
        boolean flag1 = true;
        if (c(context))
        {
            sb sb1 = sb.a(context);
            JSONObject jsonobject = new JSONObject();
            boolean flag2;
            try
            {
                jsonobject.put("sap", i1);
                jsonobject.put("san", flag);
                flag2 = sb1.a("sac", 0, 1, 4, jsonobject);
            }
            catch (JSONException jsonexception)
            {
                return false;
            }
            flag1 = flag2;
        }
        return flag1;
    }

    public static transient boolean a(Context context, int i1, String as[])
    {
        if (as != null && !as.equals(""))
        {
            if (!c(context))
            {
                return true;
            }
            sb sb1 = sb.a(context);
            JSONObject jsonobject = new JSONObject();
            if (i1 == 3)
            {
                try
                {
                    jsonobject.put("capacity", as[0]);
                }
                catch (JSONException jsonexception)
                {
                    jsonexception.printStackTrace();
                    return false;
                }
                return sb1.a("battery", 0, 1, 4, jsonobject);
            }
        }
        return false;
    }

    private static JSONObject b(Context context, aev aev1)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("sspid", aev1.r);
            jsonobject.put("sstid", aev1.s);
            jsonobject.put("ssgid", aev1.t);
        }
        catch (JSONException jsonexception)
        {
            return null;
        }
        return jsonobject;
    }

    public static void b(Context context)
    {
        sb.a(context).a("dxpower_reserve", "start", Integer.valueOf(1));
    }

    public static void b(Context context, int i1)
    {
        if (i1 > 0);
    }

    public static void b(Context context, String s1)
    {
        sb sb1;
        JSONObject jsonobject;
        if (!c(context))
        {
            break MISSING_BLOCK_LABEL_39;
        }
        sb1 = sb.a(context);
        jsonobject = new JSONObject();
        jsonobject.put("bids", s1);
        sb1.a("bic", 0, 1, 4, jsonobject);
        return;
        JSONException jsonexception;
        jsonexception;
    }

    public static boolean c(Context context)
    {
        return !agl.a(context).b();
    }

    public static void d(Context context)
    {
        sb.a(context).c();
    }

    public static void e(Context context)
    {
        sb.a(context).a("cloud", "f", Integer.valueOf(1));
    }

    public static void f(Context context)
    {
        if (!c(context))
        {
            return;
        }
        azr azr1 = azr.a(context);
        long l1 = System.currentTimeMillis();
        if (l1 < 0x4ef6d80L + azr1.g())
        {
            nz.b("Stats", "Ignore status report in 12 hours.");
            return;
        } else
        {
            azr1.a(l1);
            (new Thread(new bam(context))).start();
            return;
        }
    }

    public static void g(Context context)
    {
        CoinManager coinmanager = CoinManager.a(context);
        aoe aaoe[] = aoe.values();
        int i1 = aaoe.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            aoe aoe1 = aaoe[j1];
            if (coinmanager.d("10", aoe1.b()))
            {
                a(context, "status", (new StringBuilder()).append("func_").append(aoe1.b()).toString(), Integer.valueOf(1));
            }
        }

    }

    public static void h(Context context)
    {
        a(context, "ssc", "ssac", Integer.valueOf(1));
    }

    public static void i(Context context)
    {
        sb sb1;
        JSONObject jsonobject;
        String s1;
label0:
        {
            if (c(context))
            {
                sb1 = sb.a(context);
                jsonobject = new JSONObject();
                s1 = azy.a("com.android.vending");
                if (s1 != null && !s1.equals(""))
                {
                    break label0;
                }
            }
            return;
        }
        try
        {
            jsonobject.put("gpv", s1);
            sb1.a("gpvc", 0, 1, 4, jsonobject);
            return;
        }
        catch (JSONException jsonexception)
        {
            return;
        }
    }

    static void j(Context context)
    {
        u(context);
    }

    static void k(Context context)
    {
        t(context);
    }

    static void l(Context context)
    {
        r(context);
    }

    static void m(Context context)
    {
        p(context);
    }

    static void n(Context context)
    {
        q(context);
    }

    static void o(Context context)
    {
        s(context);
    }

    private static void p(Context context)
    {
        adp adp1 = adp.a(context);
        if (!adp1.f().equalsIgnoreCase("pt_"))
        {
            return;
        }
        switch (adp1.g())
        {
        default:
            return;

        case 0: // '\0'
            a(context, "preuse", "bspone", Integer.valueOf(1));
            return;

        case 1: // '\001'
            a(context, "preuse", "bsptwo", Integer.valueOf(1));
            return;

        case 2: // '\002'
            a(context, "preuse", "bspthree", Integer.valueOf(1));
            break;
        }
    }

    private static void q(Context context)
    {
        adp adp1 = adp.a(context);
        String s1 = adp1.f();
        if (s1.equalsIgnoreCase("pt_"))
        {
            a(context, "bsnc", "bspu", Integer.valueOf(1));
        } else
        {
            if (s1.equalsIgnoreCase("ct_"))
            {
                a(context, "bsnc", "bscu", Integer.valueOf(1));
                return;
            }
            if (s1.equalsIgnoreCase("ot_"))
            {
                a(context, "bsnc", "bsos", Integer.valueOf(1));
                sb sb1 = sb.a(context);
                try
                {
                    sb1.a("bsos", 0, 1, 4, new JSONObject(adp1.j()));
                    return;
                }
                catch (JSONException jsonexception)
                {
                    return;
                }
            }
        }
    }

    private static void r(Context context)
    {
        if (bag.a(context))
        {
            a(context, "status", "root", Integer.valueOf(1));
        }
    }

    private static void s(Context context)
    {
        if (c(context) && azy.a(context, "com.dianxinos.optimizer.duplay"))
        {
            a(context, "ddic", "di", Integer.valueOf(1));
        }
    }

    private static void t(Context context)
    {
        amb amb1;
        amb1 = amb.a(context);
        if (!amb1.m())
        {
            a(context, "status", "lbr", Integer.valueOf(1));
        }
        if (amb1.a()) goto _L2; else goto _L1
_L1:
        a(context, "status", "stab", Integer.valueOf(1));
_L4:
        if (!amb1.k())
        {
            a(context, "status", "cnf", Integer.valueOf(1));
        }
        if (!amb1.l())
        {
            a(context, "status", "cdnf", Integer.valueOf(1));
        }
        if (!amb1.j())
        {
            a(context, "status", "snf", Integer.valueOf(1));
        }
        if (!amb1.e())
        {
            a(context, "status", "sfw", Integer.valueOf(1));
        }
        if (!amb1.d())
        {
            a(context, "status", "usef", Integer.valueOf(1));
        }
        return;
_L2:
        switch (amb1.b())
        {
        case 0: // '\0'
            a(context, "status", "sbstyle1", Integer.valueOf(1));
            break;

        case 1: // '\001'
            a(context, "status", "sbstyle2", Integer.valueOf(1));
            break;

        case 2: // '\002'
            a(context, "status", "sbstyle3", Integer.valueOf(1));
            break;

        case 3: // '\003'
            a(context, "status", "sbstyle4", Integer.valueOf(1));
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static void u(Context context)
    {
        if (apg.b(context))
        {
            a(context, "status", "wo", Integer.valueOf(1));
        }
        if (apg.d(context))
        {
            a(context, "status", "swo", Integer.valueOf(1));
        }
        if (baj.a(context).b())
        {
            a(context, "status", "dwo", Integer.valueOf(1));
        }
        if (apg.c(context))
        {
            a(context, "desk", "bwe", Integer.valueOf(1));
        }
    }
}
