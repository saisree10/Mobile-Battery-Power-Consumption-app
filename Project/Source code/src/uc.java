// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Log;
import java.io.File;
import java.lang.reflect.Field;

public class uc
{

    public static Long a(PackageInfo packageinfo, String s)
    {
        Long long1;
        Long long2;
        Long long3;
        try
        {
            long3 = Long.valueOf(android/content/pm/PackageInfo.getDeclaredField(s).getLong(packageinfo));
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            if (ud.d)
            {
                Log.e("stat.AppInfoUtils", "GetTimeByPackageInfo in reflect has IllegalArgumentException!", illegalargumentexception);
            }
            long1 = null;
            continue; /* Loop/switch isn't completed */
        }
        catch (SecurityException securityexception1)
        {
            if (ud.d)
            {
                Log.e("stat.AppInfoUtils", "GetTimeByPackageInfo in reflect has SecurityException!", securityexception1);
            }
            long1 = null;
            continue; /* Loop/switch isn't completed */
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            if (ud.d)
            {
                Log.e("stat.AppInfoUtils", "GetTimeByPackageInfo in reflect has IllegalAccessException!", illegalaccessexception);
            }
            long1 = null;
            continue; /* Loop/switch isn't completed */
        }
        catch (NoSuchFieldException nosuchfieldexception)
        {
            if (ud.d)
            {
                Log.e("stat.AppInfoUtils", "GetTimeByPackageInfo in reflect has NoSuchFieldException!", nosuchfieldexception);
            }
            long1 = null;
            continue; /* Loop/switch isn't completed */
        }
        catch (Exception exception)
        {
            if (ud.d)
            {
                Log.e("stat.AppInfoUtils", "GetTimeByPackageInfo in reflect has Exception!", exception);
            }
            long1 = null;
            continue; /* Loop/switch isn't completed */
        }
        long1 = long3;
_L6:
        if (long1 != null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        long2 = Long.valueOf((new File(packageinfo.applicationInfo.publicSourceDir)).lastModified());
        long1 = long2;
_L2:
        return long1;
        NullPointerException nullpointerexception;
        nullpointerexception;
        if (!ud.d) goto _L2; else goto _L1
_L1:
        Log.e("stat.AppInfoUtils", "GetTimeByPackageInfo has NullPointerException!", nullpointerexception);
        return long1;
        SecurityException securityexception;
        securityexception;
        if (!ud.d) goto _L2; else goto _L3
_L3:
        Log.e("stat.AppInfoUtils", "GetTimeByPackageInfo has SecurityException!", securityexception);
        return long1;
        Exception exception1;
        exception1;
        if (!ud.d) goto _L2; else goto _L4
_L4:
        Log.e("stat.AppInfoUtils", "GetTimeByPackageInfo has Exception!", exception1);
        return long1;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static String a(Context context, String s)
    {
        String s1 = "";
        PackageInfo packageinfo = context.getPackageManager().getPackageInfo(s, 0);
        if (packageinfo == null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        s1 = packageinfo.versionName;
_L2:
        return s1;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        if (ud.d)
        {
            Log.e("stat.AppInfoUtils", "Failed to get VersionName!");
            return s1;
        }
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        if (ud.d)
        {
            Log.e("stat.AppInfoUtils", "Failed to get VersionName!");
            return s1;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static int b(Context context, String s)
    {
        int i = -1;
        PackageInfo packageinfo = context.getPackageManager().getPackageInfo(s, 0);
        if (packageinfo == null)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        i = packageinfo.versionCode;
_L2:
        return i;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        if (ud.d)
        {
            Log.e("stat.AppInfoUtils", "Failed to get VersionCode!");
            return i;
        }
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        if (ud.d)
        {
            Log.e("stat.AppInfoUtils", "Failed to get VersionCode!");
            return i;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String c(Context context, String s)
    {
        String s1 = "";
        String s2;
        Signature asignature[] = context.getPackageManager().getPackageInfo(s, 64).signatures;
        if (asignature.length <= 0)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        s2 = te.a(asignature[0].toByteArray());
        s1 = s2;
_L2:
        return s1;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        if (ud.d)
        {
            Log.e("stat.AppInfoUtils", "Failed to get signature!", namenotfoundexception);
            return s1;
        }
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        if (ud.d)
        {
            Log.e("stat.AppInfoUtils", "Failed to get signature!", exception);
            return s1;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }
}
