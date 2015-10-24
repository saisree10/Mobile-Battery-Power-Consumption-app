// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import com.dianxinos.powermanager.usage.HardwaresPowerUsageSummary;

public class ayo extends Handler
{

    final HardwaresPowerUsageSummary a;

    public ayo(HardwaresPowerUsageSummary hardwarespowerusagesummary)
    {
        a = hardwarespowerusagesummary;
        super();
    }

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 1: default 24
    //                   1 25;
           goto _L1 _L2
_L1:
        return;
_L2:
        if (a.getActivity() != null && !a.getActivity().isFinishing())
        {
            HardwaresPowerUsageSummary.a(a);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }
}
