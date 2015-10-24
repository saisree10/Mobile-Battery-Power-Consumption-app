// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;

public class aza
{

    private Bitmap a;

    public aza(Resources resources, int i, int j)
    {
        a(resources, i, a(resources, i, j));
        a(j);
    }

    public aza(Resources resources, int i, int j, int k)
    {
        a(resources, i, a(resources, i, j, k));
        a(j, k);
    }

    private azc a(int i, int j, int k)
    {
        azc azc1 = new azc(null);
        azc1.b = i / k;
        azc1.a = 1;
        int l = (int)((float)j / azc1.b);
        do
        {
            if (i / 2 < k || j / 2 < l)
            {
                return azc1;
            }
            i /= 2;
            j /= 2;
            azc1.a = 2 * azc1.a;
        } while (true);
    }

    private azc a(int i, int j, int k, int l)
    {
        azc azc1 = new azc(null);
        azc1.b = j / l;
        azc1.a = 1;
        do
        {
            if (j / 2 < l)
            {
                return azc1;
            }
            i /= 2;
            j /= 2;
            azc1.a = 2 * azc1.a;
        } while (true);
    }

    private azc a(Resources resources, int i, int j)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources, i, options);
        return a(options.outWidth, options.outHeight, j);
    }

    private azc a(Resources resources, int i, int j, int k)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources, i, options);
        return a(options.outWidth, options.outHeight, j, k);
    }

    private void a(int i)
    {
        int j = a.getWidth();
        int k = a.getHeight();
        if (j > 0 && k > 0)
        {
            float f = (float)i / (float)j;
            float f1 = (float)a.getWidth() / (float)i;
            float f2 = (float)(int)((float)k / f1) / (float)k;
            Matrix matrix = new Matrix();
            matrix.postScale(f, f2);
            a = Bitmap.createBitmap(a, 0, 0, j, k, matrix, true);
        }
    }

    private void a(int i, int j)
    {
        int k = a.getWidth();
        int l = a.getHeight();
        if (k > 0 && l > 0)
        {
            float f = (float)i / (float)k;
            float f1 = (float)j / (float)l;
            Matrix matrix = new Matrix();
            matrix.postScale(f, f1);
            a = Bitmap.createBitmap(a, 0, 0, k, l, matrix, true);
        }
    }

    private void a(Resources resources, int i, azc azc1)
    {
        (new Matrix()).postScale(azc1.b, azc1.b);
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inSampleSize = azc1.a;
        a = BitmapFactory.decodeResource(resources, i, options);
    }

    public Bitmap a()
    {
        return a;
    }
}
