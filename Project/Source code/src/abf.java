// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.dianxinos.powermanager.PowerMgrReceiver;

public class abf extends Handler
{

    final PowerMgrReceiver a;

    private abf(PowerMgrReceiver powermgrreceiver)
    {
        a = powermgrreceiver;
        super();
    }

    public abf(PowerMgrReceiver powermgrreceiver, abe abe)
    {
        this(powermgrreceiver);
    }

    public void handleMessage(Message message)
    {
        if (message.what == PowerMgrReceiver.c())
        {
            azh.a(PowerMgrReceiver.b(a)).g();
        } else
        {
            if (message.what == PowerMgrReceiver.a())
            {
                Context context = PowerMgrReceiver.b(a);
                Context context1 = PowerMgrReceiver.b(a);
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                Toast.makeText(context, context1.getString(0x7f0a0191), 0).show();
                return;
            }
            if (message.what == PowerMgrReceiver.b())
            {
                return;
            }
        }
    }
}
