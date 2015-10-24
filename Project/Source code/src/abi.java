// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.dianxinos.powermanager.PowerMgrService;

public class abi extends BroadcastReceiver
{

    final PowerMgrService a;

    public abi(PowerMgrService powermgrservice)
    {
        a = powermgrservice;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if (!"com.dianxinos.dxbs.KILLSELF".equals(s)) goto _L2; else goto _L1
_L1:
        PowerMgrService.e(a).sendEmptyMessageDelayed(2, 5000L);
_L4:
        return;
_L2:
        if ("com.dianxinos.dxbs.ABORTKILL".equals(s))
        {
            PowerMgrService.e(a).removeMessages(2);
            return;
        }
        if (!"android.intent.action.USER_PRESENT".equals(s) || !PowerMgrService.a(a, s))
        {
            continue; /* Loop/switch isn't completed */
        }
        PowerMgrService.f(a).a(true);
        if (!PowerMgrService.g(a)) goto _L4; else goto _L3
_L3:
        PowerMgrService.a(a, context);
        PowerMgrService.h(a);
        PowerMgrService.a(a, false);
        return;
        if (!"android.intent.action.SCREEN_ON".equals(s) && !"android.intent.action.SCREEN_OFF".equals(s) || !PowerMgrService.f(a).b() && !PowerMgrService.f(a).c() || !PowerMgrService.a(a, s)) goto _L4; else goto _L5
_L5:
        PowerMgrService.i(a);
        return;
    }
}
