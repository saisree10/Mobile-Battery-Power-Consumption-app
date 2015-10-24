// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import com.dianxinos.feedback.NotifyReceiver;

class uq
    implements Runnable
{

    final un a;

    uq(un un1)
    {
        a = un1;
        super();
    }

    public void run()
    {
        java.net.URI uri = ve.a(un.a(a), un.c(), un.d());
        long l = vu.a(un.a(a), NotifyReceiver.a, -1L);
        vf vf1 = vc.b(un.a(a), uri, l);
        if (vf1 != null)
        {
            if (vf1.a() > 0L)
            {
                vu.b(un.a(a), NotifyReceiver.a, vf1.a());
                a.a(System.currentTimeMillis() + vf1.a(), "com.dianxinos.feedback.CHECK_UPDATE");
                vt.c("DXFBManager", (new StringBuilder()).append(" set Notify alarm time is ").append(vf1.a()).append(" log totoal ").append(vf1.b()).toString());
            }
            if (vf1.b() > 0)
            {
                Intent intent = new Intent((new StringBuilder()).append(un.a(a).getPackageName()).append(".feedback.DATA_UPDATE").toString());
                intent.putExtra("update_number", vf1.b());
                un.a(a).sendBroadcast(intent);
            }
            return;
        } else
        {
            vu.b(un.a(a), NotifyReceiver.a, 0xdbba00L + System.currentTimeMillis());
            a.a(0xdbba00L + System.currentTimeMillis(), "com.dianxinos.feedback.CHECK_UPDATE");
            vt.c("DXFBManager", " set Notify alarm next time  4 hours later");
            return;
        }
    }
}
