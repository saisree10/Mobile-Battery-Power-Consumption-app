// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.lang.ref.WeakReference;

class ym extends BitmapDrawable
{

    private final WeakReference a;

    public ym(Bitmap bitmap, yl yl1)
    {
        super(bitmap);
        a = new WeakReference(yl1);
    }

    public yl a()
    {
        return (yl)a.get();
    }
}
