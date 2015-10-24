// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import android.os.StatFs;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class nd
{

    private static final boolean a;

    public static long a()
    {
        return b(Environment.getDataDirectory());
    }

    public static long a(String s)
    {
        return a(s, "yyyy-MM-dd HH:mm:ss");
    }

    public static long a(String s, String s1)
    {
        SimpleDateFormat simpledateformat;
        Date date;
        simpledateformat = new SimpleDateFormat(s1);
        date = new Date();
        Date date1 = simpledateformat.parse(s);
        date = date1;
_L2:
        return date.getTime();
        ParseException parseexception;
        parseexception;
        date.setTime(0L);
        parseexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String a(File file)
    {
        FileInputStream fileinputstream;
        byte abyte0[] = new byte[32768];
        MessageDigest messagedigest;
        int i;
        try
        {
            messagedigest = MessageDigest.getInstance("MD5");
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            nosuchalgorithmexception.printStackTrace();
            return "0";
        }
        fileinputstream = new FileInputStream(file);
_L2:
        i = fileinputstream.read(abyte0);
        if (i <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        messagedigest.update(abyte0, 0, i);
        if (i > 0) goto _L2; else goto _L1
_L1:
        FileNotFoundException filenotfoundexception;
        Exception exception;
        IOException ioexception2;
        IOException ioexception;
        IOException ioexception1;
        IOException ioexception3;
        if (fileinputstream != null)
        {
            try
            {
                fileinputstream.close();
            }
            catch (IOException ioexception4)
            {
                ioexception4.printStackTrace();
            }
        }
        return a(messagedigest.digest());
        filenotfoundexception;
        fileinputstream = null;
_L8:
        filenotfoundexception.printStackTrace();
        if (fileinputstream != null)
        {
            try
            {
                fileinputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
        }
        return "0";
        ioexception2;
        fileinputstream = null;
_L6:
        ioexception2.printStackTrace();
        if (fileinputstream != null)
        {
            try
            {
                fileinputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception3)
            {
                ioexception3.printStackTrace();
            }
        }
        return "0";
        exception;
        fileinputstream = null;
_L4:
        if (fileinputstream != null)
        {
            try
            {
                fileinputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        throw exception;
        exception;
        if (true) goto _L4; else goto _L3
_L3:
        ioexception2;
        if (true) goto _L6; else goto _L5
_L5:
        filenotfoundexception;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private static String a(byte abyte0[])
    {
        StringBuffer stringbuffer;
        int i;
        stringbuffer = new StringBuffer();
        i = 0;
_L2:
        int j;
        if (i >= abyte0.length)
        {
            return stringbuffer.toString();
        }
        j = 0xff & abyte0[i];
        if (j >= 16)
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuffer.append((new StringBuilder("0")).append(Integer.toHexString(j)).toString());
_L4:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (j < 16) goto _L4; else goto _L3
_L3:
        stringbuffer.append(Integer.toHexString(j));
          goto _L4
    }

    public static HttpURLConnection a(Context context, String s)
    {
        String s1 = c(context);
        int i = d(context);
        if (s1 != null && i != -1)
        {
            Proxy proxy = new Proxy(java.net.Proxy.Type.HTTP, new InetSocketAddress(s1, i));
            return (HttpURLConnection)(new URL(s)).openConnection(proxy);
        } else
        {
            return (HttpURLConnection)(new URL(s)).openConnection();
        }
    }

    public static ne a(long l)
    {
        ne ne1 = new ne();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(l);
        ne1.a = calendar.get(1);
        ne1.b = 1 + calendar.get(2);
        ne1.c = calendar.get(5);
        ne1.d = calendar.get(11);
        ne1.e = calendar.get(12);
        return ne1;
    }

    public static boolean a(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        return networkinfo != null && networkinfo.isConnected();
    }

    public static byte[] a(InputStream inputstream)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream(1024);
        byte abyte0[] = new byte[1024];
        do
        {
            int i = inputstream.read(abyte0, 0, abyte0.length);
            if (i == -1)
            {
                return bytearrayoutputstream.toByteArray();
            }
            bytearrayoutputstream.write(abyte0, 0, i);
        } while (true);
    }

    public static int b(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo != null)
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
            } else
            {
                return 2;
            }
        } else
        {
            return -1;
        }
    }

    public static int b(String s)
    {
        if (s != null)
        {
            if (s.equals("240*320") || s.equals("320*240"))
            {
                return 120;
            }
            if (!s.equals("320*480") && !s.equals("480*320"))
            {
                if (s.equals("480*800") || s.equals("800*480"))
                {
                    return 240;
                }
                if (s.equals("720*1280") || s.equals("1280*720"))
                {
                    return 320;
                }
            }
        }
        return 160;
    }

    public static long b()
    {
        return b(Environment.getExternalStorageDirectory());
    }

    private static long b(File file)
    {
        long l = 0L;
        if (file.exists())
        {
            StatFs statfs = new StatFs(file.getAbsolutePath());
            l = (long)statfs.getAvailableBlocks() * (long)statfs.getBlockSize();
        }
        return l;
    }

    private static String c(Context context)
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

    public static boolean c()
    {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    private static int d(Context context)
    {
        return android.net.Proxy.getPort(context);
    }

    static 
    {
        a = mi.a;
    }
}
