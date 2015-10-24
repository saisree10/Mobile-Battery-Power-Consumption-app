// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.util.Log;

public class bbo extends BitmapDrawable
{

    private int a;
    private int b;
    private Bitmap c;

    public bbo(Resources resources, Bitmap bitmap)
    {
        super(resources, bitmap);
        a = 0;
        b = 0;
    }

    private void a()
    {
        if (a <= 0 && b <= 0 && c != null && !c.isRecycled())
        {
            Log.d("RecycleBitmap", "recycle bitmap");
            c.recycle();
        }
    }

    public void a(boolean flag)
    {
        if (flag)
        {
            a = 1 + a;
        } else
        {
            a = -1 + a;
        }
        a();
    }
}
