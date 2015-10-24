// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import android.view.WindowManager;

class aur extends Handler
{

    final auq a;

    aur(auq auq1)
    {
        a = auq1;
        super();
    }

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 273 273: default 24
    //                   273 25;
           goto _L1 _L2
_L1:
        return;
_L2:
        if (auq.a(a))
        {
            auq.a(a, false);
            auq.b(a).removeView(a);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }
}
