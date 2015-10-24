// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class azy
{

    private static final String a[] = {
        "cn.opda.a.phonoalbumshoushou", "com.baidu.browser.inter", "cn.jingling.motu.photowonder"
    };

    public static String a(String s)
    {
        String s1;
        try
        {
            s1 = acq.e(s).c().versionName;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return "";
        }
        return s1;
    }

    public static void a(Context context)
    {
        try
        {
            if (azf.f())
            {
                ((ActivityManager)context.getSystemService("activity")).killBackgroundProcesses(context.getPackageName());
            }
            return;
        }
        catch (Exception exception)
        {
            azt.c("PackageUtils", (new StringBuilder()).append("Exception caught: ").append(exception).toString());
        }
    }

    public static boolean a(ActivityManager activitymanager, String s)
    {
label0:
        {
            if (azl.a().a(s))
            {
                break label0;
            }
            if (azf.f())
            {
                activitymanager.killBackgroundProcesses(s);
                break label0;
            }
            try
            {
                activitymanager.restartPackage(s);
            }
            catch (Exception exception)
            {
                azt.c("PackageUtils", (new StringBuilder()).append("Exception caught: ").append(exception).toString());
                return false;
            }
        }
        return true;
    }

    public static boolean a(Context context, Intent intent)
    {
        boolean flag = true;
        if (intent == null || context == null)
        {
            flag = false;
        } else
        {
            List list = context.getPackageManager().queryIntentActivities(intent, flag);
            if (list == null || list.size() <= 0)
            {
                return false;
            }
        }
        return flag;
    }

    public static boolean a(Context context, String s)
    {
        return acq.g(s).a();
    }

    public static boolean a(String s, Context context)
    {
        int i = 0;
        if (TextUtils.isEmpty(s))
        {
            return false;
        }
        String as[] = a;
        for (int j = as.length; i < j; i++)
        {
            if (as[i].equals(s))
            {
                return true;
            }
        }

        if (s.startsWith("com.dianxinos"))
        {
            return true;
        } else
        {
            return aln.a(context).a(s);
        }
    }

    public static int b(String s)
    {
        int i = acq.e(s).c().versionCode;
        return i;
        NullPointerException nullpointerexception;
        nullpointerexception;
_L2:
        return -1;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static boolean b(Context context)
    {
        List list = ((ActivityManager)context.getSystemService("activity")).getRunningTasks(1);
        List list1 = c(context);
        if (list1 != null && list1.size() > 0)
        {
            return list1.contains(((android.app.ActivityManager.RunningTaskInfo)list.get(0)).topActivity.getPackageName());
        } else
        {
            return false;
        }
    }

    public static boolean b(Context context, String s)
    {
        if (s.equals("com.dianxinos.dxbs"))
        {
            return true;
        }
        if (azl.a().b(s))
        {
            return true;
        }
label0:
        {
            ActivityManager activitymanager = (ActivityManager)context.getSystemService("activity");
            if (azf.f())
            {
                activitymanager.killBackgroundProcesses(s);
                break label0;
            }
            try
            {
                activitymanager.restartPackage(s);
            }
            catch (Exception exception)
            {
                azt.c("PackageUtils", (new StringBuilder()).append("Exception caught: ").append(exception).toString());
                return false;
            }
        }
        return true;
    }

    public static boolean b(String s, Context context)
    {
        if (!TextUtils.isEmpty(s))
        {
            String as[] = any.a(context).f();
            int i = as.length;
            int j = 0;
            while (j < i) 
            {
                if (as[j].startsWith(s))
                {
                    return true;
                }
                j++;
            }
        }
        return false;
    }

    private static List c(Context context)
    {
        ArrayList arraylist = new ArrayList();
        PackageManager packagemanager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        for (Iterator iterator = packagemanager.queryIntentActivities(intent, 0x10000).iterator(); iterator.hasNext(); arraylist.add(((ResolveInfo)iterator.next()).activityInfo.packageName)) { }
        return arraylist;
    }

    public static boolean c(Context context, String s)
    {
        if (!bag.a().b())
        {
            bag.a().a(null);
        }
        return azl.a().b(s);
    }

    public static boolean c(String s)
    {
        return s.equalsIgnoreCase("com.android.camera");
    }

    public static boolean d(Context context, String s)
    {
        ActivityManager activitymanager = (ActivityManager)context.getSystemService("activity");
        List list = activitymanager.getRunningServices(0x7fffffff);
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        if (list.size() == 0)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        Iterator iterator = list.iterator();
        boolean flag;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_85;
            }
            flag = s.equals(((android.app.ActivityManager.RunningServiceInfo)iterator.next()).service.getClassName());
        } while (!flag);
        return true;
        Exception exception;
        exception;
        return false;
        return false;
    }

}
