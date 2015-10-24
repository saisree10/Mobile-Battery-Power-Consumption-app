// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.util.Log;
import java.io.File;
import java.util.Random;
import java.util.regex.Pattern;

public class ix
{

    public static Random a = new Random(SystemClock.uptimeMillis());
    private static final boolean b;
    private static final Pattern c = Pattern.compile("attachment;\\s*filename\\s*=\\s*\"([^\"]*)\"");

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

    public static String a(Context context, int i)
    {
        File file;
        switch (i)
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("Unknown download destination:").append(i).toString());

        case 0: // '\0'
            return (new StringBuilder()).append(Environment.getExternalStorageDirectory().getAbsolutePath()).append("/app-update").append("/").toString();

        case 5: // '\005'
            file = context.getFilesDir();
            break;
        }
        if (file == null)
        {
            if (b)
            {
                Log.w("DownloadHelpers", "context.getFilesDir() return null");
            }
            return (new StringBuilder()).append(Environment.getExternalStorageDirectory().getAbsolutePath()).append("/app-update").append("/").toString();
        } else
        {
            return (new StringBuilder()).append(file.getAbsolutePath()).append("/").toString();
        }
    }

    public static boolean a()
    {
        if (!Environment.getExternalStorageState().equals("mounted"))
        {
            Log.d("DownloadHelpers", "no external storage");
            return false;
        } else
        {
            return true;
        }
    }

    public static boolean a(jw jw1)
    {
        return jw1.b() != null;
    }

    public static boolean b(String s)
    {
        String s1 = s.replaceFirst("/+", "/");
        return s1.startsWith(Environment.getDownloadCacheDirectory().toString()) || s1.startsWith(Environment.getExternalStorageDirectory().toString()) || s1.startsWith(Environment.getDataDirectory().toString());
    }

    static 
    {
        b = it.a;
    }
}
