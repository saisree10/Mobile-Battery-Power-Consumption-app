// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.appsflyer;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.util.UUID;

public class Installation
{

    private static String a = null;

    public Installation()
    {
    }

    public static String a(Context context)
    {
        com/appsflyer/Installation;
        JVM INSTR monitorenter ;
        File file;
        if (a != null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        file = new File(context.getFilesDir(), "AF_INSTALLATION");
        if (!file.exists())
        {
            b(file);
        }
        a = a(file);
        String s = a;
        com/appsflyer/Installation;
        JVM INSTR monitorexit ;
        return s;
        Exception exception1;
        exception1;
        throw new RuntimeException(exception1);
        Exception exception;
        exception;
        com/appsflyer/Installation;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static String a(File file)
    {
        RandomAccessFile randomaccessfile = new RandomAccessFile(file, "r");
        byte abyte0[] = new byte[(int)randomaccessfile.length()];
        randomaccessfile.readFully(abyte0);
        randomaccessfile.close();
        return new String(abyte0);
    }

    private static void b(File file)
    {
        FileOutputStream fileoutputstream = new FileOutputStream(file);
        fileoutputstream.write(UUID.randomUUID().toString().getBytes());
        fileoutputstream.close();
    }

}
