// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;

class gv extends BroadcastReceiver
{

    final gu a;

    gv(gu gu1)
    {
        a = gu1;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        long l = 1L;
        android.content.ContentResolver contentresolver = gu.a(a).getContentResolver();
        long l1 = SystemClock.elapsedRealtime() / 60000L;
        long l2 = android.provider.Settings.System.getLong(contentresolver, gu.b(a), -1L);
        if (l2 != -1L)
        {
            long l4 = l1 - l2;
            long l3;
            if (l4 >= l)
            {
                l = l4;
            }
        }
        android.provider.Settings.System.putLong(contentresolver, gu.b(a), l1);
        l3 = android.provider.Settings.System.getLong(contentresolver, gu.c(a), -1L);
        if (l3 > 0L)
        {
            android.provider.Settings.System.putLong(contentresolver, gu.c(a), l3 - l);
        }
    }
}
