// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class aey extends Handler
{

    final aex a;

    public aey(aex aex1, Looper looper)
    {
        a = aex1;
        super(looper);
    }

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            a.a();
            return;

        case 2: // '\002'
            a.a();
            return;

        case 3: // '\003'
            a.a();
            a.a(1);
            return;

        case 4: // '\004'
            a.a();
            break;
        }
        a.a(2);
    }
}
