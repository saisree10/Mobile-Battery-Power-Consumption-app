// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Random;
import org.apache.http.client.utils.URLEncodedUtils;

public class hi
{

    public static long a(File file)
    {
        StatFs statfs = new StatFs(file.getPath());
        return ((long)statfs.getAvailableBlocks() - 4L) * (long)statfs.getBlockSize();
    }

    public static File a(String s)
    {
        File file = Environment.getDownloadCacheDirectory();
        if (!s.startsWith(file.getPath()))
        {
            if (!s.startsWith((file = Environment.getExternalStorageDirectory()).getPath()))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Cannot determine filesystem root for ").append(s).toString());
            }
        }
        return file;
    }

    public static String a(Context context, String s, String s1, boolean flag)
    {
        if (!TextUtils.isEmpty(s1))
        {
            ArrayList arraylist = new ArrayList();
            String s2 = (new StringBuilder()).append(gt.a(context)).append("&").append(URLEncodedUtils.format(arraylist, "UTF-8")).toString();
            s1 = (new StringBuilder()).append(s1).append("?").append(s2).append("&").append("sik").append("=").append(flag).append("&id=").append(s).toString();
        }
        return s1;
    }

    public static String a(String s, String s1)
    {
        return iq.a((new StringBuilder()).append("dx").append(s).append("-").append(s1).toString());
    }

    public static void a(Context context, String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            File file = new File(s);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
            intent.addFlags(0x10000000);
            context.startActivity(intent);
        }
    }

    public static boolean a()
    {
        File file = new File("/sdcard/download/");
        if (!file.exists())
        {
            return file.mkdirs();
        } else
        {
            return true;
        }
    }

    public static int b()
    {
        return (new Random(1024L + System.currentTimeMillis())).nextInt();
    }

    public static long b(String s)
    {
        File file = new File(s);
        if (file.exists())
        {
            return file.length();
        } else
        {
            return 0L;
        }
    }

    public static String b(String s, String s1)
    {
        if (!TextUtils.isEmpty(s) && !TextUtils.isEmpty(s1))
        {
            return (new StringBuilder()).append("/sdcard/download/").append(a(s, s1)).append(".apk").toString();
        } else
        {
            return "error";
        }
    }
}
