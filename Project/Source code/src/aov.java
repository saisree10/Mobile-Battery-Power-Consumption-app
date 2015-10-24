// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class aov extends BroadcastReceiver
{

    final aou a;

    aov(aou aou1)
    {
        a = aou1;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if (!s.equals("com.dianxinos.dxbs.MODEMODIFIED")) goto _L2; else goto _L1
_L1:
        int i;
        amh amh1;
        i = intent.getIntExtra("command", -1);
        amh1 = amp.a(aou.b()).g();
        if (i != 2) goto _L4; else goto _L3
_L3:
        aou.a(a, "wifi");
        a.a(amh1.a(2).a());
_L6:
        aou.b(a);
        return;
_L4:
        if (i == 4)
        {
            aou.a(a, "mobileData");
            a.b(amh1.a(4).a());
        } else
        if (i == 0)
        {
            aou.a(a, "brightness");
            a.a(amh1.a(0).g());
        } else
        if (i == 6)
        {
            aou.a(a, "vibrate");
            a.b(api.a(aou.b()).b());
        } else
        if (i == 9)
        {
            aou.a(a, "GPS");
            a.d(amh1.a(9).a());
        } else
        if (i == 3)
        {
            aou.a(a, "bluetooth");
            a.e(amh1.a(3).a());
        } else
        if (i == 5)
        {
            aou.a(a, "sync");
            a.f(amh1.a(5).a());
        } else
        if (i == 13)
        {
            aou.a(a, "airplane");
            a.c = amh1.l().a();
            a.c(a.c);
            if (azf.i())
            {
                a.b(amh1.a(4).a());
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (s.equals("com.dianxinos.dxbs.MODECHANGE"))
        {
            aou.a(a);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
