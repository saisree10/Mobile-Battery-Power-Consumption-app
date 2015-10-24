// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URI;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;

public class im
{

    public static int a(Context context, String s, String s1)
    {
        File file;
        FileOutputStream fileoutputstream;
        String s2 = (new StringBuilder()).append(context.getDir("dxad", 0).getAbsolutePath()).append("/").append(s1).toString();
        in.b("LocalFileManager", (new StringBuilder()).append(" abs path: ").append(s2).toString());
        if (s == null)
        {
            return 0;
        }
        file = new File(s2);
        fileoutputstream = null;
        boolean flag = file.exists();
        fileoutputstream = null;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        file.createNewFile();
        FileOutputStream fileoutputstream1 = new FileOutputStream(file);
        fileoutputstream1.write(s.getBytes());
        try
        {
            fileoutputstream1.close();
        }
        catch (Exception exception4)
        {
            in.a("LocalFileManager", exception4.toString());
            return 1;
        }
        return 1;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
_L6:
        filenotfoundexception.printStackTrace();
        try
        {
            fileoutputstream.close();
        }
        catch (Exception exception3)
        {
            in.a("LocalFileManager", exception3.toString());
        }
_L1:
        return -1;
        IOException ioexception;
        ioexception;
_L4:
        ioexception.printStackTrace();
        try
        {
            fileoutputstream.close();
        }
        catch (Exception exception2)
        {
            in.a("LocalFileManager", exception2.toString());
        }
          goto _L1
        Exception exception;
        exception;
_L3:
        try
        {
            fileoutputstream.close();
        }
        catch (Exception exception1)
        {
            in.a("LocalFileManager", exception1.toString());
        }
        throw exception;
        exception;
        fileoutputstream = fileoutputstream1;
        if (true) goto _L3; else goto _L2
_L2:
        ioexception;
        fileoutputstream = fileoutputstream1;
          goto _L4
        filenotfoundexception;
        fileoutputstream = fileoutputstream1;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private static int a(InputStream inputstream, String s)
    {
        File file;
        FileOutputStream fileoutputstream;
        file = new File(s);
        fileoutputstream = null;
        boolean flag = file.exists();
        fileoutputstream = null;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        file.createNewFile();
        FileOutputStream fileoutputstream1 = new FileOutputStream(file);
        byte abyte0[] = new byte[4096];
_L3:
        int i = inputstream.read(abyte0);
        if (-1 == i) goto _L2; else goto _L1
_L1:
        fileoutputstream1.write(abyte0, 0, i);
          goto _L3
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        fileoutputstream = fileoutputstream1;
_L9:
        filenotfoundexception.printStackTrace();
        Exception exception4;
        try
        {
            inputstream.close();
            fileoutputstream.close();
        }
        catch (Exception exception2)
        {
            in.a("LocalFileManager", exception2.toString());
            return 0;
        }
        return 0;
_L2:
        try
        {
            inputstream.close();
            fileoutputstream1.close();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception4)
        {
            in.a("LocalFileManager", exception4.toString());
            return 1;
        }
        return 1;
        IOException ioexception;
        ioexception;
_L7:
        ioexception.printStackTrace();
        try
        {
            inputstream.close();
            fileoutputstream.close();
        }
        catch (Exception exception3)
        {
            in.a("LocalFileManager", exception3.toString());
            return 0;
        }
        return 0;
        Exception exception;
        exception;
_L5:
        try
        {
            inputstream.close();
            fileoutputstream.close();
        }
        catch (Exception exception1)
        {
            in.a("LocalFileManager", exception1.toString());
        }
        throw exception;
        exception;
        fileoutputstream = fileoutputstream1;
        if (true) goto _L5; else goto _L4
_L4:
        ioexception;
        fileoutputstream = fileoutputstream1;
        if (true) goto _L7; else goto _L6
_L6:
        filenotfoundexception;
        fileoutputstream = null;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public static String a(Context context, String s)
    {
        in.b("LocalFileManager", (new StringBuilder()).append(" manage file of this url: ").append(s).toString());
        String s1;
        if (s == null || "".equals(s))
        {
            s1 = null;
        } else
        {
            s1 = ij.a(s);
            String s2 = (new StringBuilder()).append(context.getDir("dxad", 0).getAbsolutePath()).append("/").append(s1).toString();
            File file = new File(s2);
            if (file.exists())
            {
                return file.getAbsolutePath();
            }
            if (b(context, s, s2) != 1)
            {
                return null;
            }
        }
        return s1;
    }

    public static void a(Context context)
    {
        int i = 0;
        File file = context.getDir("dxad", 0);
        if (file.exists())
        {
            File afile[] = file.listFiles();
            if (afile != null)
            {
                int j = afile.length;
                in.b("LocalFileManager", (new StringBuilder()).append(" current file number:  ").append(j).toString());
                if (j > 11)
                {
                    in.b("LocalFileManager", " found too much file . we delete. ");
                    for (; i < j; i++)
                    {
                        afile[i].delete();
                    }

                }
            }
        }
    }

    private static int b(Context context, String s, String s1)
    {
        InputStream inputstream = d(context, s);
        if (inputstream == null)
        {
            in.b("LocalFileManager", "  don't got file download stream. failed");
            return -1;
        } else
        {
            int i = a(inputstream, s1);
            in.b("LocalFileManager", (new StringBuilder()).append(" got file ?   res:").append(i).toString());
            return i;
        }
    }

    public static String b(Context context, String s)
    {
        File file;
        StringBuilder stringbuilder;
        String s1 = (new StringBuilder()).append(context.getDir("dxad", 0).getAbsolutePath()).append("/").append(s).toString();
        in.b("LocalFileManager", (new StringBuilder()).append("readcontent abs path: ").append(s1).toString());
        file = new File(s1);
        if (file == null || !file.exists())
        {
            return null;
        }
        stringbuilder = new StringBuilder();
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
_L3:
        String s2 = bufferedreader.readLine();
        if (s2 == null) goto _L2; else goto _L1
_L1:
        stringbuilder.append(s2);
          goto _L3
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
_L9:
        filenotfoundexception.printStackTrace();
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception3)
            {
                in.a("LocalFileManager", ioexception3.toString());
            }
        }
_L4:
        return stringbuilder.toString();
_L2:
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception4)
            {
                in.a("LocalFileManager", ioexception4.toString());
            }
        }
        break MISSING_BLOCK_LABEL_152;
        IOException ioexception5;
        ioexception5;
        IOException ioexception;
        bufferedreader = null;
        ioexception = ioexception5;
_L7:
        in.a("LocalFileManager", ioexception.toString());
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception2)
            {
                in.a("LocalFileManager", ioexception2.toString());
            }
        }
          goto _L4
        Exception exception1;
        exception1;
        Exception exception;
        bufferedreader = null;
        exception = exception1;
_L6:
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception1)
            {
                in.a("LocalFileManager", ioexception1.toString());
            }
        }
        throw exception;
        exception;
        if (true) goto _L6; else goto _L5
_L5:
        ioexception;
          goto _L7
        FileNotFoundException filenotfoundexception1;
        filenotfoundexception1;
        filenotfoundexception = filenotfoundexception1;
        bufferedreader = null;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public static int c(Context context, String s)
    {
        File file = new File((new StringBuilder()).append(context.getDir("dxad", 0).getAbsolutePath()).append("/").append(s).toString());
        try
        {
            if (file.exists())
            {
                file.delete();
            }
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return 0;
        }
        return 0;
    }

    public static InputStream d(Context context, String s)
    {
        HttpGet httpget;
        hr hr1;
        httpget = new HttpGet(s);
        in.b("LocalFileManager", (new StringBuilder()).append("pureGetInputStream request , ").append(httpget.getURI().toString()).toString());
        hr1 = new hr(context);
        InputStream inputstream = hr1.execute(httpget).getEntity().getContent();
        return inputstream;
        ClientProtocolException clientprotocolexception;
        clientprotocolexception;
        in.a("LocalFileManager", clientprotocolexception.toString());
_L2:
        return null;
        IOException ioexception;
        ioexception;
        in.a("LocalFileManager", ioexception.toString());
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        in.b("LocalFileManager", " unexpected exception : ");
        in.a("LocalFileManager", exception.toString());
        if (true) goto _L2; else goto _L1
_L1:
    }
}
