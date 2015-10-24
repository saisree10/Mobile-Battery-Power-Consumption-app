// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.Locale;

public class oa
{

    public static int a(Context context)
    {
        byte byte0;
        NetworkInfo networkinfo;
        String s;
        byte0 = 2;
        networkinfo = b(context);
        if (networkinfo == null)
        {
            break MISSING_BLOCK_LABEL_184;
        }
        s = networkinfo.getTypeName();
        if (!"wifi".equalsIgnoreCase(s)) goto _L2; else goto _L1
_L1:
        byte0 = 1;
_L4:
        return byte0;
_L2:
        if (!"mobile".equalsIgnoreCase(s)) goto _L4; else goto _L3
_L3:
        String s1 = networkinfo.getSubtypeName();
        if ("gsm".equalsIgnoreCase(s1) || "gprs".equalsIgnoreCase(s1) || "edge".equalsIgnoreCase(s1)) goto _L4; else goto _L5
_L5:
        if (s1.toLowerCase(Locale.ENGLISH).startsWith("cdma") || "umts".equalsIgnoreCase(s1) || "1xrtt".equalsIgnoreCase(s1) || "ehrpd".equalsIgnoreCase(s1) || "hsupa".equalsIgnoreCase(s1) || "hsdpa".equalsIgnoreCase(s1) || "hspa".equalsIgnoreCase(s1))
        {
            return 3;
        }
        if (!"lte".equalsIgnoreCase(s1) && !"umb".equalsIgnoreCase(s1) && !"hspa+".equalsIgnoreCase(s1)) goto _L4; else goto _L6
_L6:
        return 4;
        return 0;
    }

    private static NetworkInfo b(Context context)
    {
        NetworkInfo networkinfo;
        try
        {
            networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return networkinfo;
    }
}
