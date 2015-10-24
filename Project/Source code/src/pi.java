// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;

public class pi
{

    public static int a(android.graphics.BitmapFactory.Options options, int i, int j)
    {
        int k = options.outHeight;
        int l = options.outWidth;
        int i1 = 1;
        if (k > j || l > i)
        {
            int j1 = k / 2;
            for (int k1 = l / 2; j1 / i1 > j && k1 / i1 > i; i1 *= 2) { }
            long l1 = (k * l) / i1;
            for (long l2 = 2 * (i * j); l1 > l2;)
            {
                int i2 = i1 * 2;
                l1 /= 2L;
                i1 = i2;
            }

        }
        return i1;
    }

    public static Bitmap a(FileDescriptor filedescriptor, int i, int j)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(filedescriptor, null, options);
        options.inSampleSize = a(options, i, j);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFileDescriptor(filedescriptor, null, options);
    }

    public static Bitmap a(byte abyte0[], int i, int j)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, options);
        options.inSampleSize = a(options, i, j);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, options);
    }

    public static String a(String s)
    {
        return b(s);
    }

    private static String a(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < abyte0.length; i++)
        {
            String s = Integer.toHexString(0xff & abyte0[i]);
            if (s.length() == 1)
            {
                stringbuilder.append('0');
            }
            stringbuilder.append(s);
        }

        return stringbuilder.toString();
    }

    public static List a(Context context, List list)
    {
        Iterator iterator = list.iterator();
        int i = 0;
        while (iterator.hasNext()) 
        {
            ou ou1 = (ou)iterator.next();
            ou1.t = a(context, ou1.f);
            int k;
            if (ou1.t)
            {
                nz.b("Utils", (new StringBuilder()).append("Skip installed: ").append(ou1.b()).toString());
                iterator.remove();
                k = i;
            } else
            {
                int j = i + 1;
                ou1.i = i;
                k = j;
            }
            i = k;
        }
        return list;
    }

    public static void a(Closeable closeable)
    {
        if (closeable == null)
        {
            return;
        }
        try
        {
            closeable.close();
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    public static boolean a()
    {
        return android.os.Build.VERSION.SDK_INT >= 11;
    }

    public static boolean a(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        return networkinfo != null && networkinfo.isConnected();
    }

    public static boolean a(Context context, String s)
    {
        PackageManager packagemanager = context.getPackageManager();
        try
        {
            packagemanager.getPackageInfo(s, 0);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return false;
        }
        return true;
    }

    public static String b(String s)
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
            return String.valueOf(s.hashCode());
        }
        return s1;
    }

    public static void b(Context context, String s)
    {
        Intent intent;
        try
        {
            intent = context.getPackageManager().getLaunchIntentForPackage(s);
        }
        catch (Exception exception)
        {
            return;
        }
        if (intent == null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        intent.setFlags(0x10200000);
        context.startActivity(intent);
    }
}
