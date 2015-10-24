// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.widget.Toast;
import com.facebook.Session;
import com.facebook.SessionState;

class adk
    implements com.facebook.Session.StatusCallback
{

    final adi a;

    adk(adi adi1)
    {
        a = adi1;
        super();
    }

    public void call(Session session, SessionState sessionstate, Exception exception)
    {
        if (session != null && sessionstate.equals(SessionState.OPENED))
        {
            adi.a(a, session);
            adi.a(a, session, adi.a(a), adi.b(a));
        } else
        if (sessionstate.equals(SessionState.CLOSED_LOGIN_FAILED))
        {
            android.app.Activity activity = adi.c(a);
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Toast.makeText(activity, 0x7f0a02b8, 0).show();
            return;
        }
    }
}
