// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Message;

class re
    implements Runnable
{

    final Message a;
    final rd b;

    re(rd rd, Message message)
    {
        b = rd;
        a = message;
        super();
    }

    public void run()
    {
        a.sendToTarget();
    }
}
