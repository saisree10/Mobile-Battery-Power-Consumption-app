// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

class asu extends BroadcastReceiver
{

    final ass a;

    asu(ass ass1)
    {
        a = ass1;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if (a.b) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (!"com.dianxinos.dxbs.ALARMCHECKER".equals(s))
        {
            break; /* Loop/switch isn't completed */
        }
        a.b = false;
        if (ass.b(a).a())
        {
            Context context1 = ass.c(a);
            ly.i;
            Toast.makeText(context1, 0x7f0a00f4, 0).show();
            ass.b(a).d();
            ass.b(a).c();
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (!"android.intent.action.SCREEN_OFF".equals(s))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!ass.b(a).a()) goto _L1; else goto _L4
_L4:
        ass.d(a);
        return;
        if (!"android.intent.action.SCREEN_ON".equals(s) || !ass.b(a).a()) goto _L1; else goto _L5
_L5:
        ass.d(a);
        return;
    }
}
