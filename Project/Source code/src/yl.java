// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

class yl extends bat
{

    final yi a;
    private String e;
    private final WeakReference f;

    public yl(yi yi1, ImageView imageview)
    {
        a = yi1;
        super();
        f = new WeakReference(imageview);
    }

    static String a(yl yl1)
    {
        return yl1.e;
    }

    protected transient Bitmap a(String as[])
    {
        e = as[0];
        return yi.a(a, e);
    }

    protected volatile Object a(Object aobj[])
    {
        return a((String[])aobj);
    }

    protected void a(Bitmap bitmap)
    {
        if (d())
        {
            bitmap = null;
        }
        yi.a(a, e, bitmap);
        if (f != null)
        {
            ImageView imageview = (ImageView)f.get();
            if (imageview != null)
            {
                yl yl1 = yi.a(imageview);
                if (yl1 != null && this == yl1 && yi.a(a) != null && yi.a(a) == Thread.currentThread() && bitmap != null)
                {
                    imageview.setImageBitmap(bitmap);
                    imageview.setVisibility(0);
                }
            }
        }
    }

    protected volatile void a(Object obj)
    {
        a((Bitmap)obj);
    }
}
