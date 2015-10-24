// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.common.coins.CoinManager;
import com.dianxinos.optimizer.module.messagebox.MessageBoxActivity;

public class yr
    implements Runnable
{

    final MessageBoxActivity a;

    public yr(MessageBoxActivity messageboxactivity)
    {
        a = messageboxactivity;
        super();
    }

    public void run()
    {
        CoinManager.a(a).a(null, null);
    }
}
