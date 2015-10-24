// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.dianxinos.dxservice.core.DXCoreService;

public class sd extends Handler
{

    final DXCoreService a;

    public sd(DXCoreService dxcoreservice, Looper looper)
    {
        a = dxcoreservice;
        super(looper);
    }

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            super.handleMessage(message);
            return;

        case 1: // '\001'
            tf tf1 = new tf(message.getData());
            DXCoreService.a(a).a(tf1, true);
            return;

        case 2: // '\002'
            DXCoreService.b(a).c();
            return;

        case 3: // '\003'
            DXCoreService.a(a).c();
            return;

        case 5: // '\005'
            DXCoreService.a(a).c();
            return;

        case 4: // '\004'
            DXCoreService.a(a).c();
            DXCoreService.c(a).a();
            return;
        }
    }
}
