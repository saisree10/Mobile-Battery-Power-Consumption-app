// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Environment;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class azo
{

    public static String a(Context context)
    {
        if (azf.h() || azf.p())
        {
            String s = (new StringBuilder()).append(Environment.getExternalStorageDirectory().getAbsolutePath()).append("/Android/data/").append("com.dianxinos.dxbs").append("/cache/").toString();
            File file = new File(s);
            if (!file.exists() || !file.isDirectory())
            {
                file.mkdirs();
            }
            return s;
        } else
        {
            return context.getExternalCacheDir().getAbsolutePath();
        }
    }

    public static String a(InputStream inputstream)
    {
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(inputstream));
        StringBuilder stringbuilder = new StringBuilder();
_L1:
        String s = bufferedreader.readLine();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_83;
        }
        stringbuilder.append(s).append('\n');
          goto _L1
        IOException ioexception1;
        ioexception1;
        azt.d("", (new StringBuilder()).append("Exception: ").append(ioexception1).toString());
        Exception exception;
        String s1;
        IOException ioexception3;
        try
        {
            bufferedreader.close();
        }
        catch (IOException ioexception2) { }
        return null;
        s1 = stringbuilder.toString();
        try
        {
            bufferedreader.close();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception3)
        {
            return s1;
        }
        return s1;
        exception;
        try
        {
            bufferedreader.close();
        }
        catch (IOException ioexception) { }
        throw exception;
    }

    public static String a(String s)
    {
        FileInputStream fileinputstream;
        try
        {
            fileinputstream = new FileInputStream(s);
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            azt.d("", (new StringBuilder()).append("Exception: ").append(filenotfoundexception).toString());
            return null;
        }
        return a(((InputStream) (fileinputstream)));
    }

    public static String b(String s)
    {
        String s1 = a(s);
        if (s1 != null)
        {
            s1 = s1.trim();
            if (s1.length() == 0)
            {
                s1 = null;
            }
        }
        return s1;
    }
}
