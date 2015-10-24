// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;

public class azz
{

    private static azz a;
    private Context b;
    private SharedPreferences c;
    private bab d;
    private boolean e;
    private long f;
    private long g;
    private long h;
    private long i;

    private azz(Context context)
    {
        e = false;
        b = context;
        c = b.getSharedPreferences("rate_record", 0);
        e = c.getBoolean("had_rated", false);
        f = c.getLong(bab.a.name(), -1L);
        g = c.getLong(bab.c.name(), -1L);
        h = c.getLong(bab.b.name(), -1L);
        i = c.getLong(bab.d.name(), -1L);
        bc.a(context).a(new bac(this, null), new IntentFilter("go_rate"));
    }

    public static azz a(Context context)
    {
        if (a == null)
        {
            a = new azz(context);
        }
        return a;
    }

    static void a(azz azz1, String s)
    {
        azz1.a(s);
    }

    private void a(String s)
    {
    }

    static boolean a(azz azz1)
    {
        return azz1.e;
    }

    static boolean a(azz azz1, boolean flag)
    {
        azz1.e = flag;
        return flag;
    }

    public static Intent b(Context context)
    {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse((new StringBuilder()).append("http://market.android.com/details?id=").append(context.getPackageName()).toString()));
        if (azy.a(context, "com.android.vending"))
        {
            intent.setPackage("com.android.vending");
        } else
        {
            Intent intent1 = new Intent("android.intent.action.VIEW", Uri.parse("https://www.google.com"));
            ResolveInfo resolveinfo = context.getPackageManager().resolveActivity(intent1, 0x10000);
            if (resolveinfo == null)
            {
                return null;
            }
            intent.setPackage(resolveinfo.activityInfo.packageName);
        }
        intent.setFlags(0x10000000);
        return intent;
    }

    static bab b(azz azz1)
    {
        return azz1.d;
    }

    static SharedPreferences c(azz azz1)
    {
        return azz1.c;
    }

    static Context d(azz azz1)
    {
        return azz1.b;
    }

    public bab a(bad bad1)
    {
        return a(bad1, 0L);
    }

    public bab a(bad bad1, long l)
    {
        boolean flag;
        boolean flag1;
        flag = azx.b(b);
        flag1 = azy.a(b, b(b));
        a((new StringBuilder()).append("network == ").append(flag).append(", hadRated == ").append(e).toString());
        if (!flag || e || !flag1) goto _L2; else goto _L1
_L1:
        baa.b[bad1.ordinal()];
        JVM INSTR tableswitch 1 2: default 108
    //                   1 123
    //                   2 173;
           goto _L3 _L4 _L5
_L3:
        if (d == null)
        {
            a("had showed all rate");
            return null;
        }
        break; /* Loop/switch isn't completed */
_L4:
        bab bab2;
        if (f > -1L)
        {
            if (g > -1L)
            {
                bab2 = null;
            } else
            {
                bab2 = bab.c;
            }
        } else
        {
            bab2 = bab.a;
        }
        d = bab2;
        continue; /* Loop/switch isn't completed */
_L5:
        bab bab1;
        if (h > -1L)
        {
            if (i > -1L)
            {
                bab1 = null;
            } else
            {
                bab1 = bab.d;
            }
        } else
        {
            bab1 = bab.b;
        }
        d = bab1;
        if (true) goto _L3; else goto _L6
_L6:
        long l1;
        a((new StringBuilder()).append("show rate, type == ").append(d.name()).append(", save time == ").append(l / 60L).append(" mins").toString());
        l1 = System.currentTimeMillis();
        baa.a[d.ordinal()];
        JVM INSTR tableswitch 1 4: default 316
    //                   1 324
    //                   2 388
    //                   3 536
    //                   4 681;
           goto _L7 _L8 _L9 _L10 _L11
_L7:
        a("error rate type");
_L13:
        return null;
_L8:
        if (l <= 0L || !c.edit().putLong(d.name(), l1).commit()) goto _L13; else goto _L12
_L12:
        f = l1;
        bal.a(true, b, "rdc", "rdod", Integer.valueOf(1));
        return d;
_L9:
        long l5;
        if (f <= -1L)
        {
            return null;
        }
        if (g > -1L)
        {
            continue; /* Loop/switch isn't completed */
        }
        l5 = l1 - f;
        if (l5 > 0x5265c00L)
        {
            break; /* Loop/switch isn't completed */
        }
        if (g <= -1L) goto _L13; else goto _L14
_L14:
        l5 = l1 - g;
        if (l5 <= 0x7b98a00L) goto _L13; else goto _L15
_L15:
        if (!c.edit().putLong(d.name(), l1).commit()) goto _L13; else goto _L16
_L16:
        h = l1;
        bal.a(true, b, "rdc", "rdcsd", Integer.valueOf(1));
        bal.a(true, b, "rdc", "rdcsi", Long.valueOf(l5));
        return d;
_L10:
        long l4;
        if (l < 1800L)
        {
            return null;
        }
        if (h > -1L)
        {
            continue; /* Loop/switch isn't completed */
        }
        l4 = l1 - f;
        if (l4 > 0x5265c00L)
        {
            break; /* Loop/switch isn't completed */
        }
        if (h <= -1L) goto _L13; else goto _L17
_L17:
        l4 = l1 - h;
        if (l4 <= 0x7b98a00L) goto _L13; else goto _L18
_L18:
        if (!c.edit().putLong(d.name(), l1).commit()) goto _L13; else goto _L19
_L19:
        g = l1;
        bal.a(true, b, "rdc", "rdoad", Integer.valueOf(1));
        bal.a(true, b, "rdc", "rdoai", Long.valueOf(l4));
        return d;
_L11:
        long l2;
        long l3;
        if (h > g)
        {
            l2 = h;
        } else
        {
            l2 = g;
        }
        if (h <= -1L || g <= -1L) goto _L13; else goto _L20
_L20:
        l3 = l1 - l2;
        if (l3 <= 0xa4cb800L || !c.edit().putLong(d.name(), l1).commit()) goto _L13; else goto _L21
_L21:
        i = l1;
        bal.a(true, b, "rdc", "rdcsad", Integer.valueOf(1));
        bal.a(true, b, "rdc", "rdcsai", Long.valueOf(l3));
        return d;
_L2:
        a((new StringBuilder()).append("not show rate caused by network == ").append(flag).append(", had rated before == ").append(e).toString());
        return null;
    }
}
