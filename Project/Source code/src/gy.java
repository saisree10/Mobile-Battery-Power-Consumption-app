// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

public class gy
{

    public static String a()
    {
        StringBuilder stringbuilder;
        int i1;
        stringbuilder = new StringBuilder();
        i1 = 0;
_L4:
        if (i1 >= 4) goto _L2; else goto _L1
_L1:
        String s1;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i1);
        s1 = String.format("/system/bin/cat /sys/block/mmcblk%d/device/cid", aobj);
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(s1).getInputStream()));
_L3:
        String s2 = bufferedreader.readLine();
        if (s2 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (s2.length() <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        stringbuilder.append(s2).append(" ");
          goto _L3
        Exception exception;
        exception;
        i1++;
          goto _L4
_L2:
        return stringbuilder.toString();
    }

    public static String a(Context context)
    {
        return context.getApplicationContext().getPackageName();
    }

    private static String a(PackageInfo packageinfo)
    {
        int i1 = 0;
        if (packageinfo != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        byte abyte0[];
        char ac[];
        StringBuilder stringbuilder;
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(packageinfo.signatures[0].toCharsString().getBytes());
        abyte0 = messagedigest.digest();
        ac = (new char[] {
            '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
            'a', 'b', 'c', 'd', 'e', 'f'
        });
        stringbuilder = new StringBuilder(2 * abyte0.length);
_L3:
        if (i1 >= abyte0.length)
        {
            break MISSING_BLOCK_LABEL_197;
        }
        stringbuilder.append(ac[(0xf0 & abyte0[i1]) >>> 4]);
        stringbuilder.append(ac[0xf & abyte0[i1]]);
        i1++;
          goto _L3
        String s1 = stringbuilder.toString();
        return s1;
        NoSuchAlgorithmException nosuchalgorithmexception;
        nosuchalgorithmexception;
        if (gz.b)
        {
            Log.e("BaseInfoHelper", "Failed to getMD5!", nosuchalgorithmexception);
            return null;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    private static String a(String s1)
    {
        long l1 = 0L;
        int i1 = 8;
        if (s1 == null || s1.length() < 32)
        {
            return "-1";
        }
        String s2 = s1.substring(i1, 24);
        int j1 = 0;
        long l2 = l1;
        for (; j1 < i1; j1++)
        {
            l2 = l2 * 16L + (long)Integer.parseInt(s2.substring(j1, j1 + 1), 16);
        }

        for (; i1 < s2.length(); i1++)
        {
            l1 = l1 * 16L + (long)Integer.parseInt(s2.substring(i1, i1 + 1), 16);
        }

        return String.valueOf(0xffffffffL & l2 + l1);
    }

    public static String b()
    {
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("/system/bin/cat /proc/meminfo").getInputStream()));
_L1:
        String s1 = bufferedreader.readLine();
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        boolean flag;
        if (s1.length() <= 0)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        flag = s1.startsWith("MemFree:");
        if (flag)
        {
            return s1;
        }
          goto _L1
        Exception exception;
        exception;
        if (gz.b)
        {
            Log.e("BaseInfoHelper", "Failed to get the Mem info.", exception);
        }
        return "unknown";
    }

    public static String b(Context context)
    {
        WifiInfo wifiinfo;
        String s1;
        try
        {
            wifiinfo = ((WifiManager)context.getSystemService("wifi")).getConnectionInfo();
        }
        catch (Exception exception)
        {
            if (gz.b)
            {
                Log.e("BaseInfoHelper", "Failed to get the wifiMac info.", exception);
            }
            return "";
        }
        if (wifiinfo == null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        s1 = wifiinfo.getMacAddress();
        return s1;
        return null;
    }

    public static String c()
    {
        String s1;
        try
        {
            s1 = Build.FINGERPRINT;
        }
        catch (Exception exception)
        {
            if (gz.b)
            {
                Log.e("BaseInfoHelper", "Failed to get the fingerPrint info.", exception);
            }
            return "";
        }
        return s1;
    }

    public static String c(Context context)
    {
        String s1 = gz.a("ro.serialno");
        if (!TextUtils.isEmpty(s1))
        {
            return s1;
        }
        String s2;
        try
        {
            s2 = gz.a("ro.hw.dxos.SN");
        }
        catch (Exception exception)
        {
            if (gz.b)
            {
                Log.e("BaseInfoHelper", "Failed to get the sn info.", exception);
            }
            return "";
        }
        return s2;
    }

    public static String d(Context context)
    {
        String s1;
        try
        {
            s1 = Build.MODEL;
        }
        catch (Exception exception)
        {
            if (gz.b)
            {
                Log.e("BaseInfoHelper", "Failed to get the hw info.", exception);
            }
            return "";
        }
        return s1;
    }

    public static String e(Context context)
    {
        String s1;
        try
        {
            StatFs statfs = new StatFs(Environment.getDataDirectory().getPath());
            s1 = Long.toString((long)statfs.getBlockSize() * (long)statfs.getBlockCount());
        }
        catch (Exception exception)
        {
            if (gz.b)
            {
                Log.e("BaseInfoHelper", "Failed to get the hw info.", exception);
            }
            return "";
        }
        return s1;
    }

    public static String f(Context context)
    {
        String s1;
        try
        {
            Display display = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
            DisplayMetrics displaymetrics = new DisplayMetrics();
            display.getMetrics(displaymetrics);
            if (displaymetrics.widthPixels < displaymetrics.heightPixels)
            {
                return (new StringBuilder()).append(displaymetrics.widthPixels).append("*").append(displaymetrics.heightPixels).toString();
            }
            s1 = (new StringBuilder()).append(displaymetrics.heightPixels).append("*").append(displaymetrics.widthPixels).toString();
        }
        catch (Exception exception)
        {
            if (gz.b)
            {
                Log.e("BaseInfoHelper", "Failed to get the hw info.", exception);
            }
            return "";
        }
        return s1;
    }

    public static String g(Context context)
    {
        DisplayMetrics displaymetrics = v(context);
        if (displaymetrics == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        String s1 = String.valueOf(displaymetrics.heightPixels);
        return s1;
        Exception exception;
        exception;
        if (gz.b)
        {
            Log.e("BaseInfoHelper", "Failed to get height info!", exception);
        }
        return "";
    }

    public static String h(Context context)
    {
        DisplayMetrics displaymetrics = v(context);
        if (displaymetrics == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        String s1 = String.valueOf(displaymetrics.widthPixels);
        return s1;
        Exception exception;
        exception;
        if (gz.b)
        {
            Log.e("BaseInfoHelper", "Failed to get width info!", exception);
        }
        return "";
    }

    public static String i(Context context)
    {
        PackageInfo packageinfo;
        String s1 = context.getPackageName();
        packageinfo = context.getPackageManager().getPackageInfo(s1, 0);
        if (packageinfo == null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        String s2 = packageinfo.versionName;
        return s2;
        Exception exception;
        exception;
        if (gz.b)
        {
            Log.e("BaseInfoHelper", "Failed to get PkgVersionName!", exception);
        }
        return "";
    }

    public static int j(Context context)
    {
        PackageInfo packageinfo;
        String s1 = context.getPackageName();
        packageinfo = context.getPackageManager().getPackageInfo(s1, 0);
        if (packageinfo == null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        int i1 = packageinfo.versionCode;
        return i1;
        Exception exception;
        exception;
        if (gz.b)
        {
            Log.e("BaseInfoHelper", "Failed to get PkgVersionCode!", exception);
        }
        return -1;
    }

    public static String k(Context context)
    {
        String s1;
        try
        {
            s1 = Build.MANUFACTURER;
        }
        catch (Exception exception)
        {
            if (gz.b)
            {
                Log.e("BaseInfoHelper", "Failed to get the hw info.", exception);
            }
            return "";
        }
        return s1;
    }

    public static String l(Context context)
    {
        String s1;
        try
        {
            s1 = Build.MODEL;
        }
        catch (Exception exception)
        {
            if (gz.b)
            {
                Log.e("BaseInfoHelper", "failed to get the model info.", exception);
            }
            return "";
        }
        return s1;
    }

    public static String m(Context context)
    {
        String s1;
        try
        {
            s1 = ((TelephonyManager)context.getSystemService("phone")).getDeviceId();
        }
        catch (Exception exception)
        {
            if (gz.b)
            {
                Log.e("BaseInfoHelper", "Failed to get the hw info.", exception);
            }
            return "";
        }
        return s1;
    }

    public static String n(Context context)
    {
        String s1;
        try
        {
            s1 = ((TelephonyManager)context.getSystemService("phone")).getSubscriberId();
        }
        catch (Exception exception)
        {
            if (gz.b)
            {
                Log.e("BaseInfoHelper", "Failed to get the IMSI info!", exception);
            }
            return "";
        }
        return s1;
    }

    public static String o(Context context)
    {
        String s1;
        try
        {
            s1 = ((TelephonyManager)context.getSystemService("phone")).getNetworkOperator();
        }
        catch (Exception exception)
        {
            if (gz.b)
            {
                Log.e("BaseInfoHelper", "Failed to get the hw info.", exception);
            }
            return "";
        }
        return s1;
    }

    public static String p(Context context)
    {
        return gw.a(context);
    }

    public static String q(Context context)
    {
        String s1;
        try
        {
            s1 = String.valueOf(android.os.Build.VERSION.SDK_INT);
        }
        catch (Exception exception)
        {
            if (gz.b)
            {
                Log.e("BaseInfoHelper", "Failed to get the androidVersion info.", exception);
            }
            return "";
        }
        return s1;
    }

    public static String r(Context context)
    {
        DisplayMetrics displaymetrics = v(context);
        if (displaymetrics == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        String s1 = Integer.toString(displaymetrics.densityDpi);
        return s1;
        Exception exception;
        exception;
        if (gz.b)
        {
            Log.e("BaseInfoHelper", "Failed to get the dpi info.", exception);
        }
        return "";
    }

    public static String s(Context context)
    {
        String s1;
        try
        {
            s1 = context.getResources().getConfiguration().locale.toString();
        }
        catch (Exception exception)
        {
            if (gz.b)
            {
                Log.e("BaseInfoHelper", "failed to getLocale Info!", exception);
            }
            return "";
        }
        return s1;
    }

    public static String t(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo == null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        String s1;
        String s2;
        s1 = networkinfo.getTypeName();
        if (!"mobile".equals(s1.toLowerCase()))
        {
            break MISSING_BLOCK_LABEL_51;
        }
        s2 = networkinfo.getSubtypeName();
        s1 = s2;
        return s1;
        Exception exception;
        exception;
        if (gz.b)
        {
            Log.e("BaseInfoHelper", "Failed to get the netWorkType info.", exception);
        }
        return "none";
    }

    public static String u(Context context)
    {
        String s2;
        try
        {
            String s1 = context.getApplicationInfo().packageName;
            s2 = a(a(context.getPackageManager().getPackageInfo(s1, 64)));
        }
        catch (Exception exception)
        {
            if (gz.b)
            {
                Log.e("BaseInfoHelper", "Failed to get signature!", exception);
            }
            return null;
        }
        return s2;
    }

    private static DisplayMetrics v(Context context)
    {
        DisplayMetrics displaymetrics;
        try
        {
            Display display = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
            displaymetrics = new DisplayMetrics();
            display.getMetrics(displaymetrics);
        }
        catch (Exception exception)
        {
            if (gz.b)
            {
                Log.e("BaseInfoHelper", "Failed to getMetrics!", exception);
            }
            return null;
        }
        return displaymetrics;
    }
}
