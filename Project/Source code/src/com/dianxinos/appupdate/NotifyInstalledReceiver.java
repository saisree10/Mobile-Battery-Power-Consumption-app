// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.appupdate;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import it;

// Referenced classes of package com.dianxinos.appupdate:
//            AppUpdateService

public class NotifyInstalledReceiver extends BroadcastReceiver
{

    public NotifyInstalledReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if ("com.dianxinos.appupdate.intent.NOTIFY_INSTALLED".equals(s))
        {
            if (it.a)
            {
                Log.d("NotifyInstalledReceiver", (new StringBuilder()).append("got an ").append(s).toString());
            }
            context.startService(new Intent(context, com/dianxinos/appupdate/AppUpdateService));
        }
    }
}
