// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.os.Handler;

class aic extends ContentObserver
{

    final aib a;

    public aic(aib aib1, Handler handler)
    {
        a = aib1;
        super(handler);
    }

    public void a()
    {
        android.net.Uri uri = android.provider.Settings.System.getUriFor("accelerometer_rotation");
        aib.a(a).registerContentObserver(uri, false, this);
    }

    public void onChange(boolean flag)
    {
        a.a();
        if (a.e != null)
        {
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
