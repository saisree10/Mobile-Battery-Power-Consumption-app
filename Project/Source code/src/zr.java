// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

public class zr
{

    public static Bitmap a(Bitmap bitmap, float f)
    {
        return Bitmap.createScaledBitmap(bitmap, (int)(f * (float)bitmap.getWidth()), (int)(f * (float)bitmap.getHeight()), true);
    }

    public static Bitmap a(Bitmap bitmap, int i)
    {
        if (i == 0)
        {
            return bitmap;
        } else
        {
            int j = bitmap.getWidth();
            int k = bitmap.getHeight();
            Matrix matrix = new Matrix();
            matrix.preScale(1.0F, -1F);
            Bitmap bitmap1 = Bitmap.createBitmap(bitmap, 0, k - k / i, j, k / i, matrix, false);
            Bitmap bitmap2 = Bitmap.createBitmap(j, k + k / i, android.graphics.Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap2);
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            canvas.drawBitmap(bitmap, 0.0F, 0.0F, paint);
            canvas.drawRect(0.0F, k, j, k + 0, paint);
            canvas.drawBitmap(bitmap1, 0.0F, k + 0, paint);
            paint.setShader(new LinearGradient(0.0F, bitmap.getHeight(), 0.0F, 0 + bitmap2.getHeight(), 0x70ffffff, 0xffffff, android.graphics.Shader.TileMode.CLAMP));
            paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.DST_IN));
            canvas.drawRect(0.0F, k, j, 0 + bitmap2.getHeight(), paint);
            return bitmap2;
        }
    }

    public static Bitmap a(Drawable drawable)
    {
        return a(drawable, false);
    }

    public static Bitmap a(Drawable drawable, boolean flag)
    {
        if (drawable != null) goto _L2; else goto _L1
_L1:
        Bitmap bitmap1 = null;
_L4:
        return bitmap1;
_L2:
        if (!flag || !(drawable instanceof BitmapDrawable))
        {
            break; /* Loop/switch isn't completed */
        }
        bitmap1 = ((BitmapDrawable)drawable).getBitmap();
        if (bitmap1 != null) goto _L4; else goto _L3
_L3:
        int i = drawable.getIntrinsicWidth();
        int j = drawable.getIntrinsicHeight();
        if (i <= 0 || j <= 0)
        {
            return null;
        }
        android.graphics.Bitmap.Config config;
        Bitmap bitmap;
        Canvas canvas;
        if (drawable.getOpacity() != -1)
        {
            config = android.graphics.Bitmap.Config.ARGB_8888;
        } else
        {
            config = android.graphics.Bitmap.Config.RGB_565;
        }
        bitmap = Bitmap.createBitmap(i, j, config);
        canvas = new Canvas(bitmap);
        drawable.setBounds(0, 0, i, j);
        drawable.draw(canvas);
        return bitmap;
    }
}
