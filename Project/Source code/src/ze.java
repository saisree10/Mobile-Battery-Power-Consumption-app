// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class ze
{

    public static Bitmap a(String s)
    {
        if (!zx.a())
        {
            return null;
        } else
        {
            return c(s);
        }
    }

    public static boolean a(String s, String s1)
    {
        return (new File((new StringBuilder()).append(s).append(s1).toString())).exists();
    }

    public static boolean a(String s, String s1, Bitmap bitmap, long l)
    {
        Object obj = null;
        if (zx.a()) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        File file;
        b(s);
        file = new File((new StringBuilder()).append(s).append(s1).toString());
        if (bitmap == null) goto _L1; else goto _L3
_L3:
        if (file.exists())
        {
            file.delete();
        }
        Object obj1;
        file.createNewFile();
        obj1 = new FileOutputStream(file);
        Exception exception;
        IOException ioexception;
        FileInputStream fileinputstream;
        try
        {
            bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, ((java.io.OutputStream) (obj1)));
            ((FileOutputStream) (obj1)).flush();
            ((FileOutputStream) (obj1)).close();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            obj = obj1;
            fileinputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            obj = null;
            continue; /* Loop/switch isn't completed */
        }
        if (file == null) goto _L5; else goto _L4
_L4:
        fileinputstream = new FileInputStream(file);
        if (fileinputstream.available() == 0 && file.exists())
        {
            file.delete();
        }
_L10:
        if (l <= 0L)
        {
            break MISSING_BLOCK_LABEL_151;
        }
        file.setLastModified(l);
        zq.a(((java.io.Closeable) (obj1)));
        zq.a(fileinputstream);
        return true;
        ioexception;
        fileinputstream = null;
_L8:
        ioexception.printStackTrace();
        zq.a(((java.io.Closeable) (obj)));
        zq.a(fileinputstream);
        return false;
        exception;
        obj1 = null;
_L7:
        zq.a(((java.io.Closeable) (obj1)));
        zq.a(((java.io.Closeable) (obj)));
        throw exception;
        exception;
        obj = fileinputstream;
        continue; /* Loop/switch isn't completed */
        exception;
        obj1 = obj;
        obj = fileinputstream;
        if (true) goto _L7; else goto _L6
_L6:
        break MISSING_BLOCK_LABEL_100;
        ioexception;
        obj = obj1;
        if (true) goto _L8; else goto _L5
_L5:
        fileinputstream = null;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public static void b(String s, String s1)
    {
        (new File(s, s1)).delete();
    }

    private static boolean b(String s)
    {
        if (!zx.a())
        {
            return false;
        }
        File file = new File(s);
        if (file.exists())
        {
            if (!file.isDirectory())
            {
                file.mkdirs();
            }
        } else
        {
            file.mkdirs();
        }
        return true;
    }

    private static Bitmap c(String s)
    {
        android.graphics.BitmapFactory.Options options;
        options = new android.graphics.BitmapFactory.Options();
        options.inPreferredConfig = android.graphics.Bitmap.Config.RGB_565;
        options.inPurgeable = true;
        options.inInputShareable = true;
        FileInputStream fileinputstream = new FileInputStream(s);
        Bitmap bitmap = BitmapFactory.decodeStream(fileinputstream, null, options);
        zq.a(fileinputstream);
        return bitmap;
        FileNotFoundException filenotfoundexception1;
        filenotfoundexception1;
        fileinputstream = null;
_L4:
        zq.a(fileinputstream);
        return null;
        Exception exception1;
        exception1;
        Exception exception;
        fileinputstream = null;
        exception = exception1;
_L2:
        zq.a(fileinputstream);
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        if (true) goto _L4; else goto _L3
_L3:
    }
}
