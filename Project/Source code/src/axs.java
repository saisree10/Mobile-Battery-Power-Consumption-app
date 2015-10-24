// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import android.widget.Toast;

class axs extends Handler
{

    final axn a;

    private axs(axn axn1)
    {
        a = axn1;
        super();
    }

    axs(axn axn1, axo axo)
    {
        this(axn1);
    }

    public void handleMessage(Message message)
    {
        android.app.Activity activity;
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            axn.b(a);
            return;

        case 2: // '\002'
            axn.c(a);
            return;

        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
            axu axu1 = (axu)message.obj;
            axn.a(a, axu1.a, axu1.b, axu1.d, axu1.c);
            return;

        case 6: // '\006'
            android.app.Activity activity1 = axn.d(a);
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Toast.makeText(activity1, 0x7f0a0207, 0).show();
            return;

        case 7: // '\007'
            activity = axn.d(a);
            break;
        }
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        Toast.makeText(activity, 0x7f0a0209, 0).show();
    }
}
