// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class bbp
{

    private static int a(android.graphics.BitmapFactory.Options options, int i, int j)
    {
        int k = options.outHeight;
        int l = options.outWidth;
        if (k > j || l > i)
        {
            return Math.min(Math.round((float)k / (float)j), Math.round((float)l / (float)i));
        } else
        {
            return 1;
        }
    }

    public static Bitmap a(InputStream inputstream, int i, int j)
    {
        android.graphics.BitmapFactory.Options options;
        ByteArrayOutputStream bytearrayoutputstream;
        byte abyte0[];
        options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        bytearrayoutputstream = new ByteArrayOutputStream();
        abyte0 = new byte[4096];
_L1:
        int k;
        try
        {
            k = inputstream.read(abyte0);
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return null;
        }
        if (k == -1)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        bytearrayoutputstream.write(abyte0, 0, k);
          goto _L1
        byte abyte1[] = bytearrayoutputstream.toByteArray();
        if (i > 0 && j > 0)
        {
            break MISSING_BLOCK_LABEL_90;
        }
        return BitmapFactory.decodeByteArray(abyte1, 0, abyte1.length);
        Bitmap bitmap;
        BitmapFactory.decodeByteArray(abyte1, 0, abyte1.length, options);
        options.inSampleSize = a(options, i, j);
        options.inJustDecodeBounds = false;
        bitmap = BitmapFactory.decodeByteArray(abyte1, 0, abyte1.length, options);
        return bitmap;
    }

    public static boolean a()
    {
        return android.os.Build.VERSION.SDK_INT > 10;
    }
}
