// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.HashMap;

class oy
    implements Runnable
{

    final ov a;
    private String b;
    private ox c;
    private ImageView d;

    public oy(ov ov1, String s, ox ox1)
    {
        a = ov1;
        super();
        b = s;
        c = ox1;
    }

    static String a(oy oy1)
    {
        return oy1.b;
    }

    static ImageView b(oy oy1)
    {
        return oy1.d;
    }

    public void a(ImageView imageview)
    {
        d = imageview;
    }

    public void run()
    {
        android.graphics.Bitmap bitmap = ov.a(a).a(b, c.b, c.c);
        if (bitmap == null)
        {
            a.a(b);
            return;
        } else
        {
            ov.b(a).put(b, new WeakReference(bitmap));
            ov.c(a).post(new oz(this, bitmap));
            return;
        }
    }
}
