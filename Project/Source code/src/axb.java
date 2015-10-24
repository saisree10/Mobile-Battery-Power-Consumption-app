// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.text.Spanned;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

public class axb
{

    public static int a(Context context)
    {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        return displaymetrics.widthPixels;
    }

    public static int a(Context context, int i)
    {
        return (int)(0.5F + (float)i * b(context));
    }

    public static Bitmap a(Resources resources, int i, int j, boolean flag)
    {
        int k;
        if (flag)
        {
            com.dianxinos.dxbs.R.color _tmp = ly.c;
            k = resources.getColor(0x7f090085);
        } else
        {
            com.dianxinos.dxbs.R.color _tmp1 = ly.c;
            k = resources.getColor(0x7f090087);
        }
        if (i <= 0 || j <= 0)
        {
            return null;
        } else
        {
            Bitmap bitmap = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap);
            Paint paint = new Paint();
            Rect rect = new Rect(0, 0, i, j);
            RectF rectf = new RectF(rect);
            paint.setAntiAlias(true);
            canvas.drawARGB(0, 0, 0, 0);
            paint.setColor(k);
            canvas.drawRect(rectf, paint);
            canvas.drawBitmap(bitmap, rect, rect, paint);
            return bitmap;
        }
    }

    public static Bitmap a(Resources resources, int i, boolean flag)
    {
        if (i > 0)
        {
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            Bitmap bitmap = BitmapFactory.decodeResource(resources, 0x7f0204ad, null);
            if (bitmap != null)
            {
                return a(resources, i, bitmap.getHeight(), flag);
            }
        }
        return null;
    }

    public static Bitmap a(Drawable drawable, int i, int j)
    {
        if (drawable != null)
        {
            if (i <= 0)
            {
                i = drawable.getIntrinsicWidth();
            }
            if (j <= 0)
            {
                j = drawable.getIntrinsicHeight();
            }
            if (i > 0 && j > 0)
            {
                drawable.setBounds(0, 0, i, j);
                Bitmap bitmap = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
                drawable.draw(new Canvas(bitmap));
                return bitmap;
            }
        }
        return null;
    }

    public static float b(Context context)
    {
        float f;
        try
        {
            DisplayMetrics displaymetrics = new DisplayMetrics();
            ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
            f = displaymetrics.density;
        }
        catch (Exception exception)
        {
            return 160F;
        }
        return f;
    }

    public static Spanned b(Context context, int i)
    {
        String s = "";
        if (i != 0)
        {
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Object aobj[] = new Object[1];
            aobj[0] = context.getString(i);
            s = context.getString(0x7f0a0373, aobj);
        }
        return Html.fromHtml(s);
    }
}
