// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.SyncStatusObserver;
import android.os.Handler;

class ahg
    implements SyncStatusObserver
{

    final ahf a;

    ahg(ahf ahf1)
    {
        a = ahf1;
        super();
    }

    public void onStatusChanged(int i)
    {
        ahf.a(a).post(new ahh(this));
    }
}
