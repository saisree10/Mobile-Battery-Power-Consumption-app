// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;

public class azx
{

    public static int a(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo != null && networkinfo.isConnected())
        {
            int i = networkinfo.getType();
            if (i == 1 || i == 6 || i == 9)
            {
                return 1;
            }
            if (i == 0)
            {
                int j = networkinfo.getSubtype();
                return j != 3 && j != 5 && j != 6 && j != 8 && j != 9 && j != 10 && j != 12 && j != 13 && j != 14 && j != 15 ? 2 : 3;
            }
            return i != 2 && i != 7 ? 2 : -1;
        } else
        {
            return -1;
        }
    }

    public static HttpURLConnection a(Context context, String s)
    {
        String s1 = d(context);
        int i = e(context);
        if (s1 != null && i != -1)
        {
            Proxy proxy = new Proxy(java.net.Proxy.Type.HTTP, new InetSocketAddress(s1, i));
            return (HttpURLConnection)(new URL(s)).openConnection(proxy);
        } else
        {
            return (HttpURLConnection)(new URL(s)).openConnection();
        }
    }

    public static boolean b(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        return networkinfo != null && networkinfo.isConnected();
    }

    public static boolean c(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        return networkinfo != null && 1 == networkinfo.getType() && networkinfo.isConnected();
    }

    private static String d(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo != null && networkinfo.getType() == 0)
        {
            return android.net.Proxy.getHost(context);
        } else
        {
            return null;
        }
    }

    private static int e(Context context)
    {
        Uri uri;
        uri = Uri.parse("content://telephony/carriers/preferapn");
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo == null || networkinfo.getType() != 0)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        Cursor cursor = context.getContentResolver().query(uri, null, null, null, null);
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        int i;
        if (!cursor.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_81;
        }
        i = cursor.getInt(cursor.getColumnIndex("port"));
        return i;
        Exception exception;
        exception;
        return -1;
    }
}
