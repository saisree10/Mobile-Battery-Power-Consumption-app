// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.ByteArrayOutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.zip.GZIPOutputStream;

public final class lx
{

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

    public static String a(Date date)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
        simpledateformat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpledateformat.format(date);
    }

    public static String a(byte abyte0[])
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

    public static Date b(String s)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
        simpledateformat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpledateformat.parse(s);
    }

    public static byte[] c(String s)
    {
        if (s == null || s.length() == 0)
        {
            return new byte[0];
        } else
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            GZIPOutputStream gzipoutputstream = new GZIPOutputStream(bytearrayoutputstream);
            gzipoutputstream.write(s.getBytes("UTF-8"));
            gzipoutputstream.close();
            return bytearrayoutputstream.toByteArray();
        }
    }
}
