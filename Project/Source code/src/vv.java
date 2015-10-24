// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import org.apache.http.Header;
import org.apache.http.HttpResponse;

public class vv
{

    public static String a = "If-Modified-Since";
    public static String b = "Last-Modified";

    public static long a(HttpResponse httpresponse)
    {
        Header header = httpresponse.getFirstHeader(b);
        if (header != null)
        {
            return a(header.getValue()).getTime();
        } else
        {
            return 0L;
        }
    }

    public static String a(String s, int i, String s1)
    {
        return (new StringBuilder()).append("dianxin").append(s).append(String.valueOf(i)).append(s1).toString();
    }

    public static String a(Date date)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
        simpledateformat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpledateformat.format(date);
    }

    public static String a(byte abyte0[])
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

    public static Date a(String s)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
        simpledateformat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpledateformat.parse(s);
    }

    public static boolean a(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        return networkinfo != null && networkinfo.isConnected();
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
            nosuchalgorithmexception.printStackTrace();
            return s;
        }
        return s1;
    }

}
