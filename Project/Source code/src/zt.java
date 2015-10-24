// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.ActivityManager;
import android.content.Context;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class zt
{

    private static final boolean a;

    public static int a(ActivityManager activitymanager, int i)
    {
        return activitymanager.getProcessMemoryInfo(new int[] {
            i
        })[0].getTotalPss();
    }

    public static int a(Context context, int i)
    {
        return a((ActivityManager)context.getSystemService("activity"), i);
    }

    public static int[] a()
    {
        int i;
        Object obj;
        i = 0;
        obj = null;
        BufferedReader bufferedreader = new BufferedReader(new FileReader("/proc/meminfo"));
        int j;
        int k;
        j = 0;
        k = 0;
_L14:
        String s = bufferedreader.readLine();
        if (s == null) goto _L2; else goto _L1
_L1:
        if (!s.contains("MemTotal")) goto _L4; else goto _L3
_L3:
        j++;
        k = zy.a(s, 0);
        continue; /* Loop/switch isn't completed */
_L12:
        int l;
        int i1;
        if (l <= 0 || i1 <= 0) goto _L6; else goto _L5
_L5:
        int ai[] = {
            l, i1
        };
        zq.a(bufferedreader);
        return ai;
_L4:
        if (!s.contains("MemFree"))
        {
            break MISSING_BLOCK_LABEL_118;
        }
        j++;
        i += zy.a(s, 0);
        continue; /* Loop/switch isn't completed */
        if (!s.contains("Cached"))
        {
            continue; /* Loop/switch isn't completed */
        }
        j++;
        int j1 = zy.a(s, 0);
        i += j1;
        continue; /* Loop/switch isn't completed */
_L6:
        zq.a(bufferedreader);
_L7:
        return (new int[] {
            0, 0
        });
        FileNotFoundException filenotfoundexception1;
        filenotfoundexception1;
_L11:
        zq.a(((java.io.Closeable) (obj)));
          goto _L7
        IOException ioexception1;
        ioexception1;
        bufferedreader = null;
_L10:
        zq.a(bufferedreader);
          goto _L7
        Exception exception1;
        exception1;
        Exception exception;
        bufferedreader = null;
        exception = exception1;
_L9:
        zq.a(bufferedreader);
        throw exception;
        exception;
        if (true) goto _L9; else goto _L8
_L8:
        IOException ioexception;
        ioexception;
          goto _L10
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        obj = bufferedreader;
          goto _L11
_L2:
        l = i;
        i1 = k;
          goto _L12
        if (j != 3) goto _L14; else goto _L13
_L13:
        l = i;
        i1 = k;
          goto _L12
        if (true) goto _L14; else goto _L15
_L15:
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

    public static int[] a(Context context, int ai[])
    {
        return a((ActivityManager)context.getSystemService("activity"), ai);
    }

    static 
    {
        a = xy.a;
    }
}
