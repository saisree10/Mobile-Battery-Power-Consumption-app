// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class io
{

    public static int a(Context context)
    {
        byte byte0 = 2;
        NetworkInfo networkinfo = b(context);
        if (networkinfo != null)
        {
            String s = networkinfo.getTypeName();
            if (s.toLowerCase().equals("wifi"))
            {
                byte0 = 1;
            } else
            if (s.toLowerCase().equals("mobile"))
            {
                String s1 = networkinfo.getSubtypeName();
                if (!s1.toLowerCase().equals("gsm") && !s1.toLowerCase().equals("gprs") && !s1.toLowerCase().equals("edge"))
                {
                    if (s1.toLowerCase().startsWith("cdma") || s1.toLowerCase().equals("umts") || s1.toLowerCase().equals("1xrtt") || s1.toLowerCase().equals("ehrpd") || s1.toLowerCase().equals("hsupa") || s1.toLowerCase().equals("hsdpa") || s1.toLowerCase().equals("hspa"))
                    {
                        return 3;
                    }
                    if (s1.toLowerCase().equals("lte") || s1.toLowerCase().equals("umb") || s1.toLowerCase().equals("hspa+"))
                    {
                        return 4;
                    }
                }
            }
        }
        return byte0;
    }

    private static NetworkInfo b(Context context)
    {
        NetworkInfo networkinfo1 = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        NetworkInfo networkinfo;
        networkinfo = networkinfo1;
        if (networkinfo != null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        in.b("NetTypeUtils", " getNetWorkInfo info is null");
        return networkinfo;
        in.b("NetTypeUtils", (new StringBuilder()).append(" sNetworkInfo is :").append(networkinfo).append(" \nsNetworkInfo.isConnected() is :").append(networkinfo.isConnected()).append(" \nsNetworkInfo.isAvailable() is :").append(networkinfo.isAvailable()).append(" \nsNetworkInfo.getType() is :").append(networkinfo.getType()).append(" \nsNetworkInfo.getTypeName() is :").append(networkinfo.getTypeName()).toString());
        return networkinfo;
        Exception exception1;
        exception1;
_L2:
        exception1.printStackTrace();
        return networkinfo;
        Exception exception;
        exception;
        exception1 = exception;
        networkinfo = null;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
