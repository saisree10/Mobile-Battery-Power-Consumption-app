// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.os.Build;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class adf
{

    private static adf v;
    private Context a;
    private final String b = "REPORT_TEMPRATURE";
    private final String c = "REPORT_VOLTAGE";
    private final String d = "REPORT_POWER_MAX_PERCENT";
    private final String e = "REPORT_BATTERY_CAPACITY";
    private final String f = "MAX_PERCENT";
    private final String g = "MAX_LEVEL";
    private final String h = "BEGIN_TIME";
    private final String i = "LAST_TIME";
    private final long j = 0x36ee80L;
    private final long k = 0x240c8400L;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private int p;
    private int q;
    private long r;
    private long s;
    private SharedPreferences t;
    private android.content.SharedPreferences.Editor u;

    private adf(Context context)
    {
        l = false;
        m = false;
        n = false;
        o = false;
        a = context;
        t = context.getSharedPreferences("BatteryInfoReport", 0);
        u = t.edit();
        l = t.getBoolean("REPORT_TEMPRATURE", true);
        m = t.getBoolean("REPORT_VOLTAGE", true);
        n = t.getBoolean("REPORT_POWER_MAX_PERCENT", true);
        o = t.getBoolean("REPORT_BATTERY_CAPACITY", true);
    }

    public static adf a(Context context)
    {
        if (v != null) goto _L2; else goto _L1
_L1:
        adf;
        JVM INSTR monitorenter ;
        if (v == null)
        {
            v = new adf(context);
        }
        adf;
        JVM INSTR monitorexit ;
_L2:
        return v;
        Exception exception;
        exception;
        adf;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean b(Context context)
    {
        InputStream inputstream;
        String s1;
        inputstream = null;
        s1 = "";
        String s2;
        inputstream = context.getAssets().open("data/battery_capacity.properties");
        Properties properties = new Properties();
        properties.load(inputstream);
        s2 = properties.getProperty(Build.MODEL.trim().toUpperCase(), "");
        s1 = s2;
        Context context1;
        String as[];
        try
        {
            inputstream.close();
        }
        catch (Exception exception3)
        {
            exception3.printStackTrace();
        }
_L1:
        Exception exception;
        IOException ioexception;
        if (s1.equals(""))
        {
            context1 = a;
            as = new String[1];
            as[0] = Build.MODEL;
            return bal.a(context1, 3, as);
        } else
        {
            return false;
        }
        ioexception;
        ioexception.printStackTrace();
        try
        {
            inputstream.close();
        }
        catch (Exception exception2)
        {
            exception2.printStackTrace();
        }
          goto _L1
        exception;
        try
        {
            inputstream.close();
        }
        catch (Exception exception1)
        {
            exception1.printStackTrace();
        }
        throw exception;
    }

    private int[] b(add add1)
    {
        int i1 = add1.c;
        int j1 = add1.d;
        int k1;
        if (j1 < 1)
        {
            k1 = i1;
        } else
        {
            k1 = (i1 * 100) / j1;
        }
        if (k1 < 0 || k1 > 100)
        {
            if (k1 < 0)
            {
                k1 = 0;
            } else
            if (k1 > 100)
            {
                k1 = 100;
            } else
            {
                k1 = 0;
            }
        }
        return (new int[] {
            k1, i1, j1
        });
    }

    public void a(add add1)
    {
        boolean flag = true;
        if (l || m || n || o)
        {
            r = t.getLong("BEGIN_TIME", 0L);
            s = t.getLong("LAST_TIME", 0L);
            if (r == 0L)
            {
                r = System.currentTimeMillis();
                u.putLong("BEGIN_TIME", r);
                gm.a(u);
            }
            p = t.getInt("MAX_PERCENT", 0);
            q = t.getInt("MAX_LEVEL", 0);
            int i1 = add1.g;
            int j1 = add1.f;
            int k1 = add1.a;
            int l1 = add1.b;
            if (l && (i1 > 600 || i1 < 0) || l1 == 3)
            {
                Context context2 = a;
                String as2[] = new String[flag];
                as2[0] = String.valueOf((float)i1 / 10F);
                long l2;
                int ai[];
                int i2;
                Context context;
                String as[];
                Context context1;
                String as1[];
                boolean flag3;
                if (!bal.a(context2, 0, as2))
                {
                    flag3 = flag;
                } else
                {
                    flag3 = false;
                }
                l = flag3;
                u.putBoolean("REPORT_TEMPRATURE", l);
                gm.a(u);
            }
            if (m && (j1 > 4200 || j1 < 3600 || l1 == 5))
            {
                context1 = a;
                as1 = new String[flag];
                as1[0] = String.valueOf((float)j1 / 1000F);
                boolean flag2;
                if (!bal.a(context1, flag, as1))
                {
                    flag2 = flag;
                } else
                {
                    flag2 = false;
                }
                m = flag2;
                u.putBoolean("REPORT_VOLTAGE", m);
                gm.a(u);
            }
            if (o)
            {
                boolean flag1;
                if (!b(a))
                {
                    flag1 = flag;
                } else
                {
                    flag1 = false;
                }
                o = flag1;
                u.putBoolean("REPORT_BATTERY_CAPACITY", o);
                gm.a(u);
            }
            if (n && k1 == 5)
            {
                l2 = System.currentTimeMillis();
                if (s == 0L || l2 - s >= 0x36ee80L)
                {
                    ai = b(add1);
                    i2 = ai[0];
                    if (p < i2)
                    {
                        p = i2;
                        u.putInt("MAX_PERCENT", p);
                        s = l2;
                        u.putLong("LAST_TIME", s);
                        q = ai[flag];
                        u.putInt("MAX_LEVEL", q);
                        gm.a(u);
                    }
                    if (l2 - r >= 0x240c8400L)
                    {
                        context = a;
                        as = new String[3];
                        as[0] = String.valueOf(p);
                        as[flag] = String.valueOf(q);
                        as[2] = String.valueOf(ai[2]);
                        if (bal.a(context, 2, as))
                        {
                            flag = false;
                        }
                        n = flag;
                        u.putBoolean("REPORT_POWER_MAX_PERCENT", n);
                        gm.a(u);
                        return;
                    }
                }
            }
        }
    }
}
