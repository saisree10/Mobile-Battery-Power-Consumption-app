// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

public class ik
{

    public static InputStream a(HttpEntity httpentity)
    {
        InputStream inputstream = httpentity.getContent();
        Header header;
        String s;
        if (inputstream != null)
        {
            if ((header = httpentity.getContentEncoding()) != null && (s = header.getValue()) != null)
            {
                Object obj;
                if (s.contains("gzip"))
                {
                    obj = new GZIPInputStream(inputstream);
                } else
                {
                    obj = inputstream;
                }
                return ((InputStream) (obj));
            }
        }
        return inputstream;
    }

    public static String a(InputStream inputstream)
    {
        StringBuilder stringbuilder = new StringBuilder();
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(inputstream, "UTF-8"));
_L3:
        String s = bufferedreader.readLine();
        if (s == null) goto _L2; else goto _L1
_L1:
        stringbuilder.append(s);
          goto _L3
        Exception exception;
        exception;
_L5:
        bufferedreader.close();
        throw exception;
_L2:
        bufferedreader.close();
        return stringbuilder.toString();
        exception;
        bufferedreader = null;
        if (true) goto _L5; else goto _L4
_L4:
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
}
