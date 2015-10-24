// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.os.Handler;

class aie extends ContentObserver
{

    final aid a;

    public aie(aid aid1, Handler handler)
    {
        a = aid1;
        super(handler);
    }

    public void a()
    {
        android.net.Uri uri = android.provider.Settings.System.getUriFor("screen_off_timeout");
        aid.a(a).registerContentObserver(uri, false, this);
    }

    public void onChange(boolean flag)
    {
        a.b();
        if (aid.b(a) != null)
        {
            aid.b(a).a(a, aid.c(a), a.g());
        }
    }
}
