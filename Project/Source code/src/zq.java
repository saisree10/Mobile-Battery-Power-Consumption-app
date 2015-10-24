// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class zq
{

    private static final boolean a;

    public static String a(InputStream inputstream)
    {
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(inputstream, "UTF-8"));
        StringBuilder stringbuilder = new StringBuilder();
        boolean flag = true;
        do
        {
            String s = bufferedreader.readLine();
            if (s != null)
            {
                if (!flag)
                {
                    stringbuilder.append('\n');
                } else
                {
                    flag = false;
                }
                stringbuilder.append(s);
            } else
            {
                return stringbuilder.toString();
            }
        } while (true);
    }

    public static String a(String s)
    {
        FileInputStream fileinputstream = new FileInputStream(s);
        String s1 = a(((InputStream) (fileinputstream)));
        a(((Closeable) (fileinputstream)));
        return s1;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        fileinputstream = null;
_L6:
        xz.a("FileHelper", "Unexpected excetion: ", filenotfoundexception);
        a(((Closeable) (fileinputstream)));
        return null;
        IOException ioexception;
        ioexception;
        fileinputstream = null;
_L4:
        xz.a("FileHelper", "Unexpected excetion", ioexception);
        a(((Closeable) (fileinputstream)));
        return null;
        Exception exception1;
        exception1;
        Exception exception;
        fileinputstream = null;
        exception = exception1;
_L2:
        a(((Closeable) (fileinputstream)));
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
        ioexception;
        if (true) goto _L4; else goto _L3
_L3:
        filenotfoundexception;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static void a(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
        return;
        IOException ioexception;
        ioexception;
        xz.a("FileHelper", "Failed to close the target", ioexception);
        return;
    }

    public static void a(InputStream inputstream, File file)
    {
        FileOutputStream fileoutputstream;
        File file1 = file.getParentFile();
        if (!file1.exists())
        {
            file1.mkdirs();
        }
        fileoutputstream = new FileOutputStream(file);
        byte abyte0[] = new byte[4096];
_L1:
        int i = inputstream.read(abyte0);
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        fileoutputstream.write(abyte0, 0, i);
          goto _L1
        Exception exception;
        exception;
        a(((Closeable) (fileoutputstream)));
        a(((Closeable) (inputstream)));
        throw exception;
        fileoutputstream.flush();
        a(((Closeable) (fileoutputstream)));
        a(((Closeable) (inputstream)));
        return;
    }

    static 
    {
        a = xy.a;
    }
}
