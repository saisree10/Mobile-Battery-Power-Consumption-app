// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.dianxinos.powermanager.mode.NewModeActivity;
import com.dianxinos.powermanager.smart.SmartModeBatterySettings;

public class arz extends Handler
{

    final SmartModeBatterySettings a;

    public arz(SmartModeBatterySettings smartmodebatterysettings)
    {
        a = smartmodebatterysettings;
        super();
    }

    public void handleMessage(Message message)
    {
        if (message.what == 1)
        {
            Intent intent = new Intent(a, com/dianxinos/powermanager/mode/NewModeActivity);
            intent.putExtra("index", message.arg1);
            intent.putExtra("counts", message.arg1);
            a.startActivityForResult(intent, 1);
        }
        super.handleMessage(message);
    }
}
