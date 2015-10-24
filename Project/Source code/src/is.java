// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.ServiceManager;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;

public class is
{

    private static final boolean a;

    public static int a(Context context, String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return 1;
        }
        File file = new File(s);
        if (!file.exists() || !file.isFile())
        {
            return 1;
        }
        PackageManager packagemanager = context.getPackageManager();
        jz jz1 = ka.a(context).m();
        if (jz1 == null)
        {
            return 1;
        }
        String s1 = context.getPackageName();
        String s2;
        String s3;
        if (jz1 != null && !TextUtils.isEmpty(jz1.i))
        {
            s2 = jz1.i;
        } else
        {
            s2 = s1;
        }
        s3 = a(s);
        if (TextUtils.isEmpty(s3) || !s3.equals(jz1.g))
        {
            return 4;
        }
        PackageInfo packageinfo = packagemanager.getPackageArchiveInfo(s, 16384);
        if (packageinfo == null)
        {
            return 1;
        }
        if (s1.equals(s2))
        {
            if (!s1.equals(packageinfo.packageName))
            {
                return 3;
            }
            int i = kj.b(context);
            if (i < 0)
            {
                return 1;
            }
            return i < packageinfo.versionCode ? 0 : 2;
        } else
        {
            return 0;
        }
    }

    public static IPackageManager a(Context context)
    {
        IBinder ibinder = a(context, "package", true);
        StringBuilder stringbuilder = (new StringBuilder()).append("PM: ");
        String s;
        if (ibinder == null)
        {
            s = "null";
        } else
        {
            s = ibinder.toString();
        }
        Log.d("AndroidUtils", stringbuilder.append(s).toString());
        return android.content.pm.IPackageManager.Stub.asInterface(ibinder);
    }

    private static IBinder a(Context context, String s, boolean flag)
    {
        ApplicationInfo applicationinfo1 = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
        ApplicationInfo applicationinfo = applicationinfo1;
_L2:
        int i = context.checkCallingOrSelfPermission("android.permission.INSTALL_PACKAGES");
        if (flag && (1 & applicationinfo.flags) == 1 && i == 0)
        {
            IBinder ibinder1 = ServiceManager.getService(s);
            Log.i("AndroidUtils", "system service");
            return ibinder1;
        } else
        {
            IBinder ibinder = b(s);
            Log.i("AndroidUtils", "BP service");
            return ibinder;
        }
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        applicationinfo = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static String a(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return null;
        }
        String s1;
        try
        {
            s1 = iw.a(new File(s));
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            return null;
        }
        return s1;
    }

    private static IBinder b(String s)
    {
        f f1 = d.a();
        if (f1 == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        IBinder ibinder = f1.a(s);
        return ibinder;
        Exception exception;
        exception;
        Log.e("AndroidUtils", "BP daemon is not running.");
        return null;
    }

    static 
    {
        a = it.a;
    }
}
