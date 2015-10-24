// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;

class bac extends BroadcastReceiver
{

    final azz a;

    private bac(azz azz1)
    {
        a = azz1;
        super();
    }

    bac(azz azz1, baa baa1)
    {
        this(azz1);
    }

    public void onReceive(Context context, Intent intent)
    {
        if (azz.a(a) || !"go_rate".equals(intent.getAction()) || azz.b(a) == null) goto _L2; else goto _L1
_L1:
        azz.a(a, (new StringBuilder()).append("click rate, type == ").append(azz.b(a).name()).toString());
        azz.a(a, azz.c(a).edit().putBoolean("had_rated", true).commit());
        baa.a[azz.b(a).ordinal()];
        JVM INSTR tableswitch 1 4: default 144
    //                   1 145
    //                   2 165
    //                   3 185
    //                   4 205;
           goto _L2 _L3 _L4 _L5 _L6
_L2:
        return;
_L3:
        bal.a(true, azz.d(a), "rdc", "rdoc", Integer.valueOf(1));
        return;
_L4:
        bal.a(true, azz.d(a), "rdc", "rdcsc", Integer.valueOf(1));
        return;
_L5:
        bal.a(true, azz.d(a), "rdc", "rdoac", Integer.valueOf(1));
        return;
_L6:
        bal.a(true, azz.d(a), "rdc", "rdcsac", Integer.valueOf(1));
        return;
    }
}
