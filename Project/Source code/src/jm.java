// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import java.io.File;
import java.lang.reflect.Field;

public class jm
{

    private static Field a = jq.b(android/content/pm/PackageInfo, "firstInstallTime");
    private static Field b = jq.b(android/content/pm/PackageInfo, "lastUpdateTime");

    public static long a(PackageInfo packageinfo)
    {
        if (packageinfo == null)
        {
            return -1L;
        }
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_31;
        }
        long l = ((Long)b.get(packageinfo)).longValue();
        return l;
        Exception exception;
        exception;
        return (new File(packageinfo.applicationInfo.sourceDir)).lastModified();
    }

}
