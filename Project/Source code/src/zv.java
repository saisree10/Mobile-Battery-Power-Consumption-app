// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;

public class zv
{

    private static final boolean a;
    private static ConnectivityManager b;

    public static int a(Context context)
    {
        byte byte0;
        int i;
        int j;
        byte0 = 2;
        NetworkInfo networkinfo = d(context).getActiveNetworkInfo();
        if (networkinfo == null)
        {
            break MISSING_BLOCK_LABEL_184;
        }
        i = networkinfo.getType();
        j = networkinfo.getSubtype();
        if (a)
        {
            xz.a("NetworkUtils", (new StringBuilder()).append("network type = ").append(i).append(" : ").append(j).toString());
        }
        if (i != 1 && i != 6 && i != 9) goto _L2; else goto _L1
_L1:
        byte0 = 1;
_L4:
        return byte0;
_L2:
        if (i != 0 && (i != 7 || j <= 0))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (j != 3 && j != 5 && j != 6 && j != 8 && j != 9 && j != 10 && j != 12 && j != 13 && j != 14 && j != 15) goto _L4; else goto _L3
_L3:
        return 3;
        if (i != byte0 && i != 7) goto _L4; else goto _L5
_L5:
        return -1;
        return -1;
    }

    public static HttpURLConnection a(Context context, String s)
    {
        int i;
        String s1;
        Proxy proxy;
        IllegalArgumentException illegalargumentexception;
        HttpURLConnection httpurlconnection;
        if (e(context))
        {
            s1 = gi.a(context, s);
            i = gi.b(context, s);
        } else
        {
            i = -1;
            s1 = null;
        }
        if (s1 == null || i == -1)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        proxy = new Proxy(java.net.Proxy.Type.HTTP, new InetSocketAddress(s1, i));
        httpurlconnection = (HttpURLConnection)(new URL(s)).openConnection(proxy);
        return httpurlconnection;
        illegalargumentexception;
        xz.a("NetworkUtils", "Unexpected exception: ", illegalargumentexception);
        return (HttpURLConnection)(new URL(s)).openConnection();
    }

    public static int b(Context context)
    {
        byte byte0;
        int i;
        byte0 = 4;
        NetworkInfo networkinfo = d(context).getActiveNetworkInfo();
        if (networkinfo == null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        i = networkinfo.getType();
        if (i != 1 && i != 6 && i != 9) goto _L2; else goto _L1
_L1:
        byte0 = 1;
_L4:
        return byte0;
_L2:
        if (i == 0 || i != 2 && i != 7) goto _L4; else goto _L3
_L3:
        return -1;
        return -1;
    }

    public static boolean c(Context context)
    {
        NetworkInfo networkinfo = d(context).getActiveNetworkInfo();
        return networkinfo != null && networkinfo.isConnected();
    }

    private static ConnectivityManager d(Context context)
    {
        if (b == null)
        {
            b = (ConnectivityManager)context.getSystemService("connectivity");
        }
        return b;
    }

    private static boolean e(Context context)
    {
        NetworkInfo networkinfo = d(context).getActiveNetworkInfo();
        boolean flag = false;
        if (networkinfo != null)
        {
            int i = networkinfo.getType();
            flag = false;
            if (i == 0)
            {
                flag = true;
            }
        }
        return flag;
    }

    static 
    {
        a = xy.a;
    }
}
