// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import com.dianxinos.powermanager.PowerMgrService;

public class abk extends Handler
{

    final PowerMgrService a;

    private abk(PowerMgrService powermgrservice)
    {
        a = powermgrservice;
        super();
    }

    public abk(PowerMgrService powermgrservice, abg abg)
    {
        this(powermgrservice);
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
            PowerMgrService.b(a).c();
            break;
        }
        PowerMgrService.c(a);
    }
}
