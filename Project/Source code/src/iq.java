// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class iq
{

    public static int a(Context context, int i)
    {
        return (int)(0.5F + context.getResources().getDisplayMetrics().density * (float)i);
    }

    public static String a(String s)
    {
        String s1;
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.update(s.getBytes());
            s1 = a(messagedigest.digest());
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            nosuchalgorithmexception.printStackTrace();
            return s;
        }
        return s1;
    }

    private static String a(byte abyte0[])
    {
        StringBuffer stringbuffer = new StringBuffer();
        int i = 0;
        while (i < abyte0.length) 
        {
            int j = 0xff & abyte0[i];
            if (j < 16)
            {
                stringbuffer.append((new StringBuilder()).append("0").append(Integer.toHexString(j)).toString());
            } else
            if (j >= 16)
            {
                stringbuffer.append(Integer.toHexString(j));
            }
            i++;
        }
        return stringbuffer.toString();
    }

    public static void a(View view, Context context)
    {
        view.getViewTreeObserver().addOnPreDrawListener(new ir(view, context));
    }

    public static boolean a()
    {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public static boolean a(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        return networkinfo != null && networkinfo.isConnected();
    }

    public static boolean a(Context context, String s)
    {
        return b(context, s) > 0;
    }

    public static boolean a(Thread thread)
    {
        while (thread == null || Thread.State.TERMINATED.equals(thread.getState()) || Thread.State.NEW.equals(thread.getState())) 
        {
            return false;
        }
        return true;
    }

    public static int b(Context context, String s)
    {
        PackageManager packagemanager = context.getPackageManager();
        int i;
        try
        {
            i = packagemanager.getPackageInfo(s, 0).versionCode;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            namenotfoundexception.printStackTrace();
            return -1;
        }
        return i;
    }

    public static boolean b(Context context)
    {
        return ((ConnectivityManager)context.getSystemService("connectivity")).getNetworkInfo(1).isConnected();
    }
}
