// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.os.Message;

class aiz
    implements Runnable
{

    final aiy a;

    aiz(aiy aiy1)
    {
        a = aiy1;
        super();
    }

    public void run()
    {
        a.b();
        Message.obtain(a.d, 10, a).sendToTarget();
        a.c.sendBroadcast(new Intent("com.dianxinos.dxbs.action.RemainingTimeUpate"));
    }
}
