// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;

class o extends Handler
{

    final n a;

    o(n n1)
    {
        a = n1;
        super();
    }

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 2: default 28
    //                   1 34
    //                   2 53;
           goto _L1 _L2 _L3
_L1:
        super.handleMessage(message);
_L5:
        return;
_L2:
        if (!a.f) goto _L5; else goto _L4
_L4:
        a.a(false);
        return;
_L3:
        a.a();
        a.b.e();
        return;
    }
}
