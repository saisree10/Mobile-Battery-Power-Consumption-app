// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;

class adq
    implements Runnable
{

    final Bitmap a;
    final Bitmap b;
    final ads c;
    final adp d;

    adq(adp adp1, Bitmap bitmap, Bitmap bitmap1, ads ads1)
    {
        d = adp1;
        a = bitmap;
        b = bitmap1;
        c = ads1;
        super();
    }

    public void run()
    {
        if (a == null || b == null)
        {
            c.a(false, adp.a(d));
        } else
        {
            String s = (new StringBuilder()).append("ct_").append(adp.a(d)).append("_h").append(".jpg").toString();
            String s1 = (new StringBuilder()).append("ct_").append(adp.a(d)).append("_v").append(".jpg").toString();
            boolean flag = adp.a(d, s, a);
            boolean flag1 = adp.a(d, s1, b);
            if (flag && flag1)
            {
                c.a(true, adp.a(d));
                d.a("ct_");
                d.a(adp.a(d));
                adp.b(d);
                return;
            }
            c.a(false, adp.a(d));
            if (flag)
            {
                adp.a(d, s);
            }
            if (flag1)
            {
                adp.a(d, s1);
                return;
            }
        }
    }
}
