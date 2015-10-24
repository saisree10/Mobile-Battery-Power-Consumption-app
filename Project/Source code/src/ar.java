// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Notification;

class ar
    implements aq
{

    ar()
    {
    }

    public Notification a(ao ao1)
    {
        Notification notification = ao1.r;
        notification.setLatestEventInfo(ao1.a, ao1.b, ao1.c, ao1.d);
        if (ao1.j > 0)
        {
            notification.flags = 0x80 | notification.flags;
        }
        return notification;
    }
}
