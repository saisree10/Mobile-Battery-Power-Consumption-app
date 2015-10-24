// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import com.dianxinos.acomponent.manager.BroadCastReceiver;

public class hp
    implements Runnable
{

    final Context a;
    final BroadCastReceiver b;

    public hp(BroadCastReceiver broadcastreceiver, Context context)
    {
        b = broadcastreceiver;
        a = context;
        super();
    }

    public void run()
    {
        try
        {
            hn.c(a).b(a);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }
}
