// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.ActivityManager;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;
import java.lang.reflect.Method;

public class azu
{

    public static int a = 200;
    private static Method b = null;
    private static int c = -1;

    private static long a(File file)
    {
        long l = 0L;
        if (file.exists())
        {
            StatFs statfs = new StatFs(file.getAbsolutePath());
            l = (long)statfs.getAvailableBlocks() * (long)statfs.getBlockSize();
        }
        return l;
    }

    public static boolean a()
    {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public static int[] a(ActivityManager activitymanager, int ai[])
    {
        android.os.Debug.MemoryInfo amemoryinfo[] = activitymanager.getProcessMemoryInfo(ai);
        int ai1[] = new int[amemoryinfo.length];
        for (int i = 0; i < amemoryinfo.length; i++)
        {
            ai1[i] = amemoryinfo[i].getTotalPss();
        }

        return ai1;
    }

    public static long b()
    {
        return a(Environment.getDataDirectory());
    }

    public static long c()
    {
        return a(Environment.getExternalStorageDirectory());
    }

}
