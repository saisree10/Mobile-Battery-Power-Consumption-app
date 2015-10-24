// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class gw
{

    public static int a = 0;
    public static String b = "";

    private static String a()
    {
        return gz.b("/system/etc/dianxinos/ota/lc").trim();
    }

    public static String a(Context context)
    {
        if (TextUtils.isEmpty(b))
        {
            b = b(context);
        }
        return b;
    }

    public static boolean a(int i)
    {
        if (!gs.a(i))
        {
            return false;
        } else
        {
            a = i;
            return true;
        }
    }

    private static String b()
    {
        return gz.a("ro.dianxinos.os.lc");
    }

    private static String b(Context context)
    {
        if (a == 0)
        {
            return c(context);
        }
        if (1 == a)
        {
            return d(context);
        }
        if (2 == a)
        {
            return a();
        }
        if (4 == a)
        {
            return b();
        } else
        {
            return "";
        }
    }

    private static String c(Context context)
    {
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(context.getResources().getAssets().open("lc.txt")));
        String s1 = bufferedreader.readLine();
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        s1 = s1.trim();
        int i = s1.length();
        String s;
        s = null;
        if (i != 0)
        {
            s = s1;
        }
        if (bufferedreader == null)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        bufferedreader.close();
_L2:
        return s;
        IOException ioexception2;
        ioexception2;
        if (!gz.b) goto _L2; else goto _L1
_L1:
        Log.e("dxbase.lcService", "Failed to get the lc info.", ioexception2);
        return s;
        Exception exception;
        exception;
        bufferedreader = null;
_L9:
        if (gz.b)
        {
            Log.e("dxbase.lcService", "Failed to get the lc info.", exception);
        }
        s = null;
        if (bufferedreader == null) goto _L2; else goto _L3
_L3:
        bufferedreader.close();
        return null;
        IOException ioexception1;
        ioexception1;
        boolean flag;
        flag = gz.b;
        s = null;
        if (!flag) goto _L2; else goto _L4
_L4:
        Log.e("dxbase.lcService", "Failed to get the lc info.", ioexception1);
        return null;
        Exception exception2;
        exception2;
        Exception exception1;
        bufferedreader = null;
        exception1 = exception2;
_L8:
        if (bufferedreader == null)
        {
            break MISSING_BLOCK_LABEL_172;
        }
        bufferedreader.close();
_L6:
        throw exception1;
        IOException ioexception;
        ioexception;
        if (gz.b)
        {
            Log.e("dxbase.lcService", "Failed to get the lc info.", ioexception);
        }
        if (true) goto _L6; else goto _L5
_L5:
        exception1;
        if (true) goto _L8; else goto _L7
_L7:
        exception;
          goto _L9
    }

    private static String d(Context context)
    {
        String s;
        try
        {
            s = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString("LC");
        }
        catch (Throwable throwable)
        {
            if (gz.b)
            {
                Log.e("dxbase.lcService", "Failed to get the lc info.", throwable);
            }
            return null;
        }
        return s;
    }

}
