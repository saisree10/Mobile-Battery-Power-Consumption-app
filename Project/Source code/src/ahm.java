// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.os.Handler;

class ahm extends ContentObserver
{

    final ahl a;

    public ahm(ahl ahl1, Handler handler)
    {
        a = ahl1;
        super(handler);
    }

    public void a()
    {
        android.net.Uri uri = android.provider.Settings.System.getUriFor("screen_brightness");
        ahl.a(a).registerContentObserver(uri, false, this);
        android.net.Uri uri1 = android.provider.Settings.System.getUriFor("screen_brightness_mode");
        ahl.a(a).registerContentObserver(uri1, false, this);
    }

    public void onChange(boolean flag)
    {
        ahl.b(a);
        if (a.e != null)
        {
            a.e.a(a, ahl.c(a), a.g());
        }
    }
}
