// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.PowerMgrService;
import java.util.TimerTask;

public class abg extends TimerTask
{

    final PowerMgrService a;

    public abg(PowerMgrService powermgrservice)
    {
        a = powermgrservice;
        super();
    }

    public void run()
    {
        if (!PowerMgrService.a(a))
        {
            return;
        } else
        {
            bal.a(a);
            return;
        }
    }
}
