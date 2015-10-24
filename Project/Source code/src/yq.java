// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import com.dianxinos.optimizer.module.messagebox.MessageBoxActivity;

public class yq
    implements Runnable
{

    final MessageBoxActivity a;

    public yq(MessageBoxActivity messageboxactivity)
    {
        a = messageboxactivity;
        super();
    }

    public void run()
    {
        java.util.List list = MessageBoxActivity.b(a).a(-1);
        MessageBoxActivity.c(a).obtainMessage(2, 100, 0).sendToTarget();
        MessageBoxActivity.c(a).obtainMessage(3, list).sendToTarget();
        MessageBoxActivity.d(a);
    }
}
