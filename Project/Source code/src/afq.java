// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;

public class afq extends BroadcastReceiver
{

    final afp a;

    public afq(afp afp1)
    {
        a = afp1;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        if ("com.dianxinos.dxbs.HEALTHCHARGING".equals(intent.getAction()) && (afp.a(a) == 103 || afp.a(a) == 102))
        {
            afp.a(a, afp.b(a).c());
            afp.c(a).d(afp.a(a));
            afp.b(a, afp.b(a).d());
            if (afp.a(a) == 103)
            {
                a.a = (afg)afp.d(a).get(2);
                afp.c(a, 3);
                afp.b(a, 0);
                try
                {
                    afp.f(a).unregisterReceiver(afp.e(a));
                }
                catch (Exception exception) { }
            }
            afp.f(a).sendBroadcast(new Intent("com.dianxinos.dxbs.action.RemainingTimeUpate"));
        }
    }
}
