// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import com.dianxinos.powermanager.PowerMgrHomeActivity;
import com.dianxinos.powermanager.ui.BatteryInfoView;

public class abc extends Handler
{

    final PowerMgrHomeActivity a;

    private abc(PowerMgrHomeActivity powermgrhomeactivity)
    {
        a = powermgrhomeactivity;
        super();
    }

    public abc(PowerMgrHomeActivity powermgrhomeactivity, aba aba)
    {
        this(powermgrhomeactivity);
    }

    public void handleMessage(Message message)
    {
        boolean flag = true;
        if (message.what != flag) goto _L2; else goto _L1
_L1:
        if (PowerMgrHomeActivity.a(a) != null) goto _L4; else goto _L3
_L3:
        flag = PowerMgrHomeActivity.b(a);
_L6:
        PowerMgrHomeActivity.a(a, PowerMgrHomeActivity.c(a).j, flag);
        PowerMgrHomeActivity.d(a).a();
_L2:
        return;
_L4:
        if (!PowerMgrHomeActivity.b(a) || PowerMgrHomeActivity.a(a).e() == 100 || PowerMgrHomeActivity.a(a).e() == 103)
        {
            flag = false;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
