// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;

class mv extends BroadcastReceiver
{

    mv()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
label0:
        {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE"))
            {
                NetworkInfo networkinfo = (NetworkInfo)intent.getParcelableExtra("networkInfo");
                if (networkinfo.getType() == 1)
                {
                    if (!networkinfo.isConnected())
                    {
                        break label0;
                    }
                    mu.a("wifi connected!");
                    mu.a(context);
                    my.a(context).d();
                }
            }
            return;
        }
        mu.a("wifi disconnected!");
        my.a(context).e();
    }
}
