// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.dianxinos.powermanager.PowerMangerApplication;
import java.lang.reflect.Field;

public class azf
{

    public static final boolean a;
    public static final boolean b;
    public static final boolean c;
    public static final boolean d;
    public static final boolean e;
    public static final boolean f;
    public static final boolean g;
    public static final boolean h;
    public static final boolean i;
    public static final boolean j;
    public static final boolean k;
    public static final boolean l;
    public static final boolean m;
    public static final boolean n;
    public static final boolean o;
    public static final boolean p;
    private static final int q;
    private static final String r;
    private static final boolean s;
    private static Boolean t;
    private static int u;

    public static int a()
    {
        return q < 9 ? 3 : 0;
    }

    public static long a(long l1)
    {
        if (c)
        {
            l1 -= 0x493e0L;
        }
        return l1;
    }

    public static Intent a(String s1)
    {
        if (q >= 9)
        {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", s1, null));
            return intent;
        }
        Intent intent1 = new Intent("android.intent.action.VIEW");
        intent1.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
        if (q == 8)
        {
            intent1.putExtra("pkg", s1);
            return intent1;
        } else
        {
            intent1.putExtra("com.android.settings.ApplicationPkgName", s1);
            return intent1;
        }
    }

    public static boolean a(int i1)
    {
        return i1 == u;
    }

    public static boolean a(Context context)
    {
        if (t == null)
        {
            Intent intent;
            if (q >= 9)
            {
                intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts("package", context.getPackageName(), null));
            } else
            {
                intent = new Intent("android.intent.action.VIEW");
                intent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
                if (q == 8)
                {
                    intent.putExtra("pkg", context.getPackageName());
                } else
                {
                    intent.putExtra("com.android.settings.ApplicationPkgName", context.getPackageName());
                }
            }
            if (context.getPackageManager().resolveActivity(intent, 0x10000) != null)
            {
                t = Boolean.valueOf(true);
            } else
            {
                t = Boolean.valueOf(false);
            }
        }
        return t.booleanValue();
    }

    public static boolean b()
    {
        return q >= 9;
    }

    public static boolean b(Context context)
    {
        return ((TelephonyManager)context.getSystemService("phone")).getPhoneType() != 0;
    }

    public static boolean c()
    {
        return q >= 9;
    }

    public static boolean c(Context context)
    {
        Resources resources = context.getResources();
        boolean flag = false;
        if (resources != null)
        {
            DisplayMetrics displaymetrics = resources.getDisplayMetrics();
            flag = false;
            if (displaymetrics != null)
            {
                int i1 = displaymetrics.densityDpi;
                flag = false;
                if (i1 <= 120)
                {
                    flag = true;
                }
            }
        }
        return flag;
    }

    public static boolean d()
    {
        return q >= 9;
    }

    public static boolean d(Context context)
    {
        Resources resources = context.getResources();
        boolean flag = false;
        if (resources != null)
        {
            DisplayMetrics displaymetrics = resources.getDisplayMetrics();
            flag = false;
            if (displaymetrics != null)
            {
                int i1 = displaymetrics.densityDpi;
                flag = false;
                if (i1 <= 160)
                {
                    flag = true;
                }
            }
        }
        return flag;
    }

    public static boolean e()
    {
        return q >= 8;
    }

    public static boolean e(Context context)
    {
        Resources resources = context.getResources();
        boolean flag = false;
        if (resources != null)
        {
            DisplayMetrics displaymetrics = resources.getDisplayMetrics();
            flag = false;
            if (displaymetrics != null)
            {
                int i1 = displaymetrics.densityDpi;
                flag = false;
                if (i1 == 240)
                {
                    flag = true;
                }
            }
        }
        return flag;
    }

    public static boolean f()
    {
        return q >= 8;
    }

    public static boolean f(Context context)
    {
        Resources resources = context.getResources();
        boolean flag = false;
        if (resources != null)
        {
            DisplayMetrics displaymetrics = resources.getDisplayMetrics();
            flag = false;
            if (displaymetrics != null)
            {
                int i1 = displaymetrics.densityDpi;
                flag = false;
                if (i1 == 320)
                {
                    flag = true;
                }
            }
        }
        return flag;
    }

    public static boolean g()
    {
        return q >= 8;
    }

    public static boolean g(Context context)
    {
        return s;
    }

    public static boolean h()
    {
        return q == 7;
    }

    public static boolean i()
    {
        return q == 8;
    }

    public static boolean j()
    {
        return q >= 9;
    }

    public static boolean k()
    {
        return q >= 11;
    }

    public static boolean l()
    {
        return q >= 14;
    }

    public static boolean m()
    {
        return q >= 16;
    }

    public static boolean n()
    {
        return q >= 17;
    }

    public static boolean o()
    {
        return q >= 18;
    }

    public static boolean p()
    {
        return q >= 19;
    }

    public static boolean q()
    {
        return d || j || r.equals("ME863") || r.equals("MB526") || r.equals("XT615") || r.equals("ME525+") || r.equals("MB525") || r.equals("MB525+") || r.equals("ME865") || r.equals("ME860") || r.equals("ME722") || r.equals("DROIDX") || r.equals("XT316") || r.equals("XT910") || r.equals("XT928") || r.equals("XT319") || r.equals("XT883") || r.equals("XT882");
    }

    public static int r()
    {
        int i1;
label0:
        {
            if (!e && !f && !a && !g && !m)
            {
                boolean flag = k;
                i1 = 0;
                if (!flag)
                {
                    break label0;
                }
            }
            com.dianxinos.dxbs.R.color _tmp = ly.c;
            i1 = 0x7f090020;
        }
        return i1;
    }

    static 
    {
        q = android.os.Build.VERSION.SDK_INT;
        r = Build.MODEL;
        t = null;
        a = Build.DEVICE.startsWith("lephone");
        boolean flag;
        int i1;
        if (Build.ID.equalsIgnoreCase("MIUI") || Build.PRODUCT.contains("mione_plus"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
        c = Build.MODEL.equals("MI 2");
        p = Build.MODEL.equals("HTC Z710e");
        d = Build.DEVICE.equals("umts_jordan");
        e = Build.DEVICE.equals("GT-I9000");
        f = Build.DEVICE.equals("zoom2");
        g = Build.DEVICE.equals("CP9130");
        h = Build.DEVICE.equals("m9");
        i = Build.DEVICE.equals("mx");
        j = Build.DEVICE.equals("cg_tita2");
        k = Build.DEVICE.equals("GT-I9108");
        l = Build.DEVICE.equals("A1_07");
        m = Build.DEVICE.equals("GT-I9100");
        n = Build.ID.equals("GINGERBREAD");
        o = Build.DEVICE.equals("GT-N7000");
        i1 = Resources.getSystem().getIdentifier("config_automatic_brightness_available", "bool", "android");
        if (i1 != 0)
        {
            s = PowerMangerApplication.a().getResources().getBoolean(i1);
        } else
        {
            s = true;
        }
        if (j())
        {
            u = android/os/BatteryStats$HistoryItem.getField("CMD_UPDATE").getInt(android/os/BatteryStats$HistoryItem);
            break MISSING_BLOCK_LABEL_321;
        }
        try
        {
            u = -1;
        }
        catch (SecurityException securityexception)
        {
            securityexception.printStackTrace();
            u = -1;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            illegalargumentexception.printStackTrace();
            u = -1;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            illegalaccessexception.printStackTrace();
            u = -1;
        }
        catch (NoSuchFieldException nosuchfieldexception)
        {
            nosuchfieldexception.printStackTrace();
            u = -1;
        }
    }
}
