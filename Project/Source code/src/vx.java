// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class vx extends Handler
{

    final vw a;

    public vx(vw vw1, Looper looper)
    {
        a = vw1;
        super(looper);
    }

    public void handleMessage(Message message)
    {
        a.a((Intent)message.obj);
    }
}
