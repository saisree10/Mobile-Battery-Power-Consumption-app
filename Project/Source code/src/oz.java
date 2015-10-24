// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.widget.ImageView;

class oz
    implements Runnable
{

    final Bitmap a;
    final oy b;

    oz(oy oy1, Bitmap bitmap)
    {
        b = oy1;
        a = bitmap;
        super();
    }

    public void run()
    {
        b.a.a(oy.a(b));
        String s = (String)oy.b(b).getTag(0xfacecafe);
        if (oy.a(b).equals(s))
        {
            oy.b(b).setImageBitmap(a);
        }
    }
}
