// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.dianxinos.powermanager.PowerMangerApplication;

public class aaw extends Handler
{

    final PowerMangerApplication a;

    public aaw(PowerMangerApplication powermangerapplication)
    {
        a = powermangerapplication;
        super();
    }

    public void handleMessage(Message message)
    {
        int i;
        switch (message.what)
        {
        default:
            return;

        case 2: // '\002'
            i = message.arg1;
            break;
        }
        int j = message.arg2;
        if (j > 0)
        {
            Toast.makeText(PowerMangerApplication.b(), j, i).show();
            return;
        } else
        {
            Toast.makeText(PowerMangerApplication.b(), (CharSequence)message.obj, i).show();
            return;
        }
    }
}
