// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;

class sg extends Handler
{

    final se a;

    private sg(se se)
    {
        a = se;
        super();
    }

    sg(se se, sf sf)
    {
        this(se);
    }

    public void handleMessage(Message message)
    {
        int _tmp = message.what;
        super.handleMessage(message);
    }
}
