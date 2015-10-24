// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import com.dianxinos.powermanager.menu.AppWhiteListActivity;

public class alf extends Handler
{

    final AppWhiteListActivity a;

    public alf(AppWhiteListActivity appwhitelistactivity)
    {
        a = appwhitelistactivity;
        super();
    }

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 0: // '\0'
            a.b();
            return;

        case 1: // '\001'
            a.a();
            break;
        }
    }
}
