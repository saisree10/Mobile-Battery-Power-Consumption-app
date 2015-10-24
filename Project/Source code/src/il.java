// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.HashMap;
import java.util.Map;

public class il
{

    public static Map a = new HashMap();

    public static String a()
    {
        if (a.containsKey("model"))
        {
            return (String)a.get("model");
        }
        String s;
        try
        {
            s = Build.MODEL;
            a.put("model", s);
        }
        catch (Exception exception)
        {
            if (ij.a)
            {
                exception.printStackTrace();
            }
            return null;
        }
        return s;
    }

    public static String a(Context context)
    {
        if (a.containsKey("ie"))
        {
            return (String)a.get("ie");
        }
        String s;
        try
        {
            s = ((TelephonyManager)context.getSystemService("phone")).getDeviceId();
            a.put("ie", s);
        }
        catch (Exception exception)
        {
            if (ij.a)
            {
                exception.printStackTrace();
            }
            return null;
        }
        return s;
    }

    public static void a(Context context, HashMap hashmap)
    {
        hashmap.put("model", a());
        hashmap.put("ie", a(context));
        hashmap.put("dpi", b(context));
        hashmap.put("sdk", f(context));
        hashmap.put("locale", g(context));
        hashmap.put("w", d(context));
        hashmap.put("h", e(context));
        hashmap.put("lp", "1");
        if (context.getResources().getConfiguration().orientation == 2)
        {
            hashmap.put("lp", "0");
        }
        hashmap.put("lc", h(context));
        hashmap.put("pkg", i(context));
        hashmap.put("rv", String.valueOf(b()));
        hashmap.put("v", String.valueOf(j(context)));
        hashmap.put("tk", k(context));
        hashmap.put("net", String.valueOf(io.a(context)));
        hashmap.put("is", l(context));
        hashmap.put("op", m(context));
        hashmap.put("rv", "1.1");
        hashmap.put("dv", ha.a());
    }

    public static int b()
    {
        return 1;
    }

    public static String b(Context context)
    {
        if (a.containsKey("dpi"))
        {
            return (String)a.get("dpi");
        }
        String s;
        try
        {
            Display display = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
            DisplayMetrics displaymetrics = new DisplayMetrics();
            display.getMetrics(displaymetrics);
            s = Integer.toString(displaymetrics.densityDpi);
            a.put("dpi", s);
        }
        catch (Exception exception)
        {
            if (ij.a)
            {
                exception.printStackTrace();
            }
            return null;
        }
        return s;
    }

    public static void b(Context context, HashMap hashmap)
    {
        in.b("=Infos", "post fake data for Debug environment");
        hashmap.put("is", "imsi134134");
        hashmap.put("pkg", "com.dianxinos.dxhome");
        hashmap.put("dpi", "320");
        hashmap.put("sdk", "10");
        hashmap.put("locale", "zh");
        hashmap.put("lc", "A000000000000611");
        hashmap.put("rv", "1.0");
        hashmap.put("v", "2.3");
        hashmap.put("w", "480");
        hashmap.put("h", "800");
        hashmap.put("tk", "eN1OfR0Gu50riOSR9p6sVA==");
        hashmap.put("model", a());
        hashmap.put("ie", a(context));
        hashmap.put("dpi", b(context));
        hashmap.put("w", d(context));
        hashmap.put("h", e(context));
        hashmap.put("is", "imsi134134");
        hashmap.put("op", "China Mobile");
        hashmap.put("lp", "1");
        hashmap.put("net", "1");
        hashmap.put("rv", "1.1");
        hashmap.put("dv", ha.a());
    }

    public static String c(Context context)
    {
        if (a.containsKey("rs"))
        {
            return (String)a.get("rs");
        }
        String s;
        try
        {
            Display display = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
            DisplayMetrics displaymetrics = new DisplayMetrics();
            display.getMetrics(displaymetrics);
            a.put("w", String.valueOf(displaymetrics.widthPixels));
            a.put("h", String.valueOf(displaymetrics.heightPixels));
            s = (new StringBuilder()).append(displaymetrics.heightPixels).append("*").append(displaymetrics.widthPixels).toString();
            a.put("rs", s);
        }
        catch (Exception exception)
        {
            if (ij.a)
            {
                exception.printStackTrace();
            }
            return null;
        }
        return s;
    }

    public static String d(Context context)
    {
        if (a.containsKey("w"))
        {
            return (String)a.get("w");
        }
        a.remove("rs");
        c(context);
        if (a.containsKey("w"))
        {
            return (String)a.get("w");
        } else
        {
            return null;
        }
    }

    public static String e(Context context)
    {
        if (a.containsKey("h"))
        {
            return (String)a.get("h");
        }
        a.remove("rs");
        c(context);
        if (a.containsKey("h"))
        {
            return (String)a.get("h");
        } else
        {
            return null;
        }
    }

    public static String f(Context context)
    {
        if (a.containsKey("sdk"))
        {
            return (String)a.get("sdk");
        }
        String s;
        try
        {
            s = gy.q(context);
            a.put("sdk", s);
        }
        catch (Exception exception)
        {
            if (ij.a)
            {
                exception.printStackTrace();
            }
            return null;
        }
        return s;
    }

    public static String g(Context context)
    {
        return gy.s(context);
    }

    public static String h(Context context)
    {
        String s;
        if (a.containsKey("lc"))
        {
            s = (String)a.get("lc");
        } else
        {
            s = gy.p(context);
            if (s != null)
            {
                a.put("lc", s);
                return s;
            }
        }
        return s;
    }

    public static String i(Context context)
    {
        return context.getPackageName();
    }

    public static int j(Context context)
    {
        PackageManager packagemanager = context.getApplicationContext().getPackageManager();
        String s = context.getPackageName();
        int i1;
        try
        {
            i1 = packagemanager.getPackageInfo(s, 0).versionCode;
        }
        catch (Exception exception)
        {
            if (ij.a)
            {
                exception.printStackTrace();
            }
            return -1;
        }
        return i1;
    }

    public static String k(Context context)
    {
        return gx.a(context);
    }

    public static String l(Context context)
    {
        return gy.n(context);
    }

    public static String m(Context context)
    {
        return gy.o(context);
    }

}
