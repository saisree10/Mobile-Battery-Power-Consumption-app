// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.os.Handler;

class ahu extends ContentObserver
{

    final aht a;

    public ahu(aht aht1, Handler handler)
    {
        a = aht1;
        super(handler);
    }

    public void a()
    {
        android.net.Uri uri = android.provider.Settings.System.getUriFor("haptic_feedback_enabled");
        aht.a(a).registerContentObserver(uri, false, this);
    }

    public void onChange(boolean flag)
    {
        if (aht.b(a) != null)
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
            aht.b(a).a(a, i, i);
        }
    }
}
