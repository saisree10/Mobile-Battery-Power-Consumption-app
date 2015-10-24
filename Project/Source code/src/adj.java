// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.facebook.Session;
import com.facebook.SessionState;

class adj
    implements com.facebook.Session.StatusCallback
{

    final adi a;

    adj(adi adi1)
    {
        a = adi1;
        super();
    }

    public void call(Session session, SessionState sessionstate, Exception exception)
    {
        if (session != null)
        {
            adi.a(a, session);
        }
    }
}
