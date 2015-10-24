// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.dianxinos.powermanager.batterytheme.CropImageActivity;

class ady
    implements Runnable
{

    final Bitmap a;
    final adx b;

    ady(adx adx1, Bitmap bitmap)
    {
        b = adx1;
        a = bitmap;
        super();
    }

    public void run()
    {
        CropImageActivity.a(b.a).setImageBitmap(a);
        CropImageActivity.a(b.a, a);
        CropImageActivity.a(b.a, CropImageActivity.a(b.a).getDrawable().getBounds());
        b.a.b();
    }
}
