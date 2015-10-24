// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;

public class afl extends BroadcastReceiver
{

    final afk a;

    public afl(afk afk1)
    {
        a = afk1;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        afk.a((new StringBuilder()).append("onReceive:").append(s).toString());
        if ("com.dianxinos.dxbs.HEALTHCHARGING".equals(s) && (afk.a(a) == 103 || afk.a(a) == 102))
        {
            afk.a(a, afk.b(a).c());
            afk.c(a).d(afk.a(a));
            afk.b(a, afk.b(a).d());
            afk.a((new StringBuilder()).append("Status:").append(afk.a(a)).append(" remain time:").append(afk.d(a)).toString());
            if (afk.a(a) == 103)
            {
                a.a = (afg)afk.e(a).get(2);
                afk.c(a, 3);
                afk.b(a, 0);
                afu afu1 = afk.f(a).b();
                afu1.e = 1 + afu1.e;
                afk.f(a).b(afu1);
                try
                {
                    afk.h(a).unregisterReceiver(afk.g(a));
                }
                catch (Exception exception) { }
            }
            if (afk.i(a).h())
            {
                afk.h(a).sendBroadcast(new Intent("com.dianxinos.dxbs.action.RemainingTimeUpate"));
            }
        }
    }
}
