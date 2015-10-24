// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.util.Log;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.TimeZone;
import java.util.zip.GZIPOutputStream;

final class tn
{

    public static final TimeZone a = TimeZone.getTimeZone("GMT+8");
    public static final Long b = Long.valueOf(0x1b7740L);
    public static final Long c = Long.valueOf(0x1b77400L);

    public static long a(long l)
    {
        return l / 1000L;
    }

    public static String a()
    {
        return c("/system/dxversion");
    }

    public static boolean a(Context context)
    {
        if (ud.a(context)) goto _L2; else goto _L1
_L1:
        boolean flag;
        boolean flag1 = ud.c;
        flag = false;
        if (flag1)
        {
            Log.i("stat.EventHelper", "Can't report because network is not connected!");
        }
_L4:
        return flag;
_L2:
        Long.valueOf(0L);
        if (!ud.a(context, 0))
        {
            break; /* Loop/switch isn't completed */
        }
        Long long2 = Long.valueOf(ud.a(context, "mb"));
        int j = System.currentTimeMillis() - long2.longValue() != c.longValue();
        flag = false;
        if (j > 0)
        {
            flag = true;
        }
        if (!flag && ud.c)
        {
            Log.i("stat.EventHelper", (new StringBuilder()).append("Can't report because mobile network need interval 8h between reports!While last report time is ").append(long2).toString());
            return flag;
        }
        if (true) goto _L4; else goto _L3
_L3:
        Long long1 = Long.valueOf(ud.a(context, "wf"));
        int i = System.currentTimeMillis() - long1.longValue() != b.longValue();
        flag = false;
        if (i > 0)
        {
            flag = true;
        }
        if (!flag && ud.c)
        {
            Log.i("stat.EventHelper", (new StringBuilder()).append("Can't report because wifi network need interval 30mins between reports!While last report time is ").append(long1).toString());
            return flag;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public static byte[] a(String s)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        GZIPOutputStream gzipoutputstream = new GZIPOutputStream(bytearrayoutputstream);
        BufferedWriter bufferedwriter = new BufferedWriter(new OutputStreamWriter(gzipoutputstream, "UTF-8"));
        bufferedwriter.write(s);
        bufferedwriter.flush();
        bufferedwriter.close();
        gzipoutputstream.finish();
        return bytearrayoutputstream.toByteArray();
    }

    public static long b(long l)
    {
        return (l + (long)a.getOffset(l)) / 0x5265c00L;
    }

    public static String b(String s)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        GZIPOutputStream gzipoutputstream = new GZIPOutputStream(bytearrayoutputstream);
        BufferedWriter bufferedwriter = new BufferedWriter(new OutputStreamWriter(gzipoutputstream, "ISO-8859-1"));
        bufferedwriter.write(s);
        bufferedwriter.flush();
        bufferedwriter.close();
        gzipoutputstream.finish();
        return bytearrayoutputstream.toString("ISO-8859-1");
    }

    public static void b(Context context)
    {
        if (ud.a(context, 0))
        {
            ud.b(context, "mb");
            return;
        } else
        {
            ud.b(context, "wf");
            return;
        }
    }

    private static String c(String s)
    {
        BufferedReader bufferedreader = new BufferedReader(new FileReader(new File(s)));
        StringBuilder stringbuilder = new StringBuilder();
_L3:
        String s2 = bufferedreader.readLine();
        if (s2 == null) goto _L2; else goto _L1
_L1:
        stringbuilder.append(s2);
        stringbuilder.append("\n");
          goto _L3
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        BufferedReader bufferedreader1 = bufferedreader;
_L14:
        if (ud.d)
        {
            Log.w("stat.EventHelper", (new StringBuilder()).append(s).append(" FileNotFoundException.").toString());
        }
        String s1;
        String s3;
        IOException ioexception4;
        if (bufferedreader1 != null)
        {
            try
            {
                bufferedreader1.close();
            }
            catch (IOException ioexception3)
            {
                if (ud.d)
                {
                    Log.e("stat.EventHelper", "IOException.", ioexception3);
                }
            }
        }
_L7:
        s1 = "";
_L5:
        return s1;
_L2:
        s3 = stringbuilder.toString();
        s1 = s3;
        if (bufferedreader == null) goto _L5; else goto _L4
_L4:
        bufferedreader.close();
        return s1;
        ioexception4;
        if (!ud.d) goto _L5; else goto _L6
_L6:
        Log.e("stat.EventHelper", "IOException.", ioexception4);
        return s1;
        IOException ioexception5;
        ioexception5;
        IOException ioexception;
        bufferedreader = null;
        ioexception = ioexception5;
_L12:
        if (ud.d)
        {
            Log.e("stat.EventHelper", "IOException.", ioexception);
        }
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception2)
            {
                if (ud.d)
                {
                    Log.e("stat.EventHelper", "IOException.", ioexception2);
                }
            }
        }
          goto _L7
        Exception exception2;
        exception2;
        Exception exception;
        bufferedreader = null;
        exception = exception2;
_L11:
        if (bufferedreader == null)
        {
            break MISSING_BLOCK_LABEL_245;
        }
        bufferedreader.close();
_L9:
        throw exception;
        IOException ioexception1;
        ioexception1;
        if (ud.d)
        {
            Log.e("stat.EventHelper", "IOException.", ioexception1);
        }
        if (true) goto _L9; else goto _L8
_L8:
        exception;
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        bufferedreader = bufferedreader1;
        exception = exception1;
        if (true) goto _L11; else goto _L10
_L10:
        ioexception;
          goto _L12
        FileNotFoundException filenotfoundexception1;
        filenotfoundexception1;
        bufferedreader1 = null;
        if (true) goto _L14; else goto _L13
_L13:
    }

}
