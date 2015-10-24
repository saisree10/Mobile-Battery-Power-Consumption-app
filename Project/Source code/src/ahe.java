// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.os.Handler;

class ahe extends ContentObserver
{

    final ahd a;

    public ahe(ahd ahd1, Handler handler)
    {
        a = ahd1;
        super(handler);
    }

    public void a()
    {
        android.net.Uri uri = android.provider.Settings.System.getUriFor("airplane_mode_on");
        ahd.a(a).registerContentObserver(uri, false, this);
    }

    public void onChange(boolean flag)
    {
        if (a.e != null)
        {
            a.a();
            int i;
            if (a.g)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            a.e.a(a, i, i);
        }
    }
}
