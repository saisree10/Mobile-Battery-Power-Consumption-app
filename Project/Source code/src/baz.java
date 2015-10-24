// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;

class baz extends Handler
{

    private baz()
    {
    }

    baz(bau bau)
    {
        this();
    }

    public void handleMessage(Message message)
    {
        bay bay1 = (bay)message.obj;
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            bat.c(bay1.a, bay1.b[0]);
            return;

        case 2: // '\002'
            bay1.a.b(bay1.b);
            break;
        }
    }
}
