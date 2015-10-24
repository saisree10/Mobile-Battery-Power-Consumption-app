// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.PowerMgrService;
import java.util.TimerTask;

public class abj extends TimerTask
{

    final PowerMgrService a;

    public abj(PowerMgrService powermgrservice)
    {
        a = powermgrservice;
        super();
    }

    public void run()
    {
        PowerMgrService.a(a, true);
        PowerMgrService.j(a);
    }
}
