// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public class uk
{

    public static void a(String s, String s1)
    {
        FileOutputStream fileoutputstream = null;
        boolean flag = "mounted".equals(Environment.getExternalStorageState());
        fileoutputstream = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_262;
        }
        File file;
        boolean flag1;
        file = new File("/sdcard/dianxinos/");
        flag1 = file.exists();
        fileoutputstream = null;
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        file.mkdir();
        File file1;
        boolean flag2;
        file1 = new File((new StringBuilder()).append("/sdcard/dianxinos/").append(s).toString());
        flag2 = file1.exists();
        fileoutputstream = null;
        if (flag2) goto _L2; else goto _L1
_L1:
        file1.createNewFile();
_L4:
        FileOutputStream fileoutputstream1 = new FileOutputStream(file1, true);
        fileoutputstream1.write(s1.getBytes());
        fileoutputstream1.close();
        Exception exception;
        IOException ioexception;
        IOException ioexception1;
        IOException ioexception2;
        IOException ioexception3;
        int i;
        for (; fileoutputstream1 == null; fileoutputstream1 = null)
        {
            break MISSING_BLOCK_LABEL_134;
        }

        fileoutputstream1.close();
_L5:
        return;
_L2:
        i = file1.length() != 0x1400000L;
        fileoutputstream = null;
        if (i <= 0) goto _L4; else goto _L3
_L3:
        file1.delete();
        file1.createNewFile();
          goto _L4
        ioexception1;
_L8:
        if (ud.d)
        {
            Log.e("stat.WriteSDCard", "createNewFile has IOException!", ioexception1);
        }
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception2)
            {
                Log.e("stat.WriteSDCard", "closeFileOutStream has IOException!", ioexception2);
            }
            return;
        }
          goto _L5
        ioexception3;
        Log.e("stat.WriteSDCard", "closeFileOutStream has IOException!", ioexception3);
        return;
        exception;
_L7:
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception)
            {
                Log.e("stat.WriteSDCard", "closeFileOutStream has IOException!", ioexception);
            }
        }
        throw exception;
        exception;
        fileoutputstream = fileoutputstream1;
        if (true) goto _L7; else goto _L6
_L6:
        ioexception1;
        fileoutputstream = fileoutputstream1;
          goto _L8
    }
}
