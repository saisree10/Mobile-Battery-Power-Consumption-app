// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import com.dianxinos.powermanager.ShortcutOnekeyActivity;

public class aca extends Handler
{

    final ShortcutOnekeyActivity a;

    private aca(ShortcutOnekeyActivity shortcutonekeyactivity)
    {
        a = shortcutonekeyactivity;
        super();
    }

    public aca(ShortcutOnekeyActivity shortcutonekeyactivity, abz abz)
    {
        this(shortcutonekeyactivity);
    }

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            ShortcutOnekeyActivity.b(a);
            return;

        case 2: // '\002'
            ShortcutOnekeyActivity.c(a);
            break;
        }
        a.finish();
    }
}
