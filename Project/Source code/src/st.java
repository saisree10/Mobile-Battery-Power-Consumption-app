// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;

class st extends BroadcastReceiver
{

    final ss a;

    st(ss ss1)
    {
        a = ss1;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        NetworkInfo networkinfo;
        networkinfo = ((ConnectivityManager)ss.a(a).getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo == null || !networkinfo.isConnectedOrConnecting())
        {
            break MISSING_BLOCK_LABEL_120;
        }
        si.a(ss.a(a)).a();
        if (networkinfo.getType() != 0) goto _L2; else goto _L1
_L1:
        if (ud.c)
        {
            Log.i("stat.ConnectivityChangeListener", "Mobile data connection!");
        }
        if (tn.a(context))
        {
            se.a(context).a(5);
        }
_L4:
        return;
_L2:
        if (networkinfo.getType() != 1) goto _L4; else goto _L3
_L3:
        if (ud.c)
        {
            Log.i("stat.ConnectivityChangeListener", "Wifi data connection!");
        }
        if (!tn.a(context)) goto _L4; else goto _L5
_L5:
        se.a(context).a(4);
        return;
        si.a(ss.a(a)).b();
        return;
    }
}
