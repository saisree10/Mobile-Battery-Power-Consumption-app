// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.appsflyer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.appsflyer:
//            AppsFlyerLib

public class MultipleInstallBroadcastReceiver extends BroadcastReceiver
{

    public MultipleInstallBroadcastReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        Log.i("AppsFlyer", "MultipleInstallBroadcastReceiver called");
        Iterator iterator = context.getPackageManager().queryBroadcastReceivers(new Intent("com.android.vending.INSTALL_REFERRER"), 0).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ResolveInfo resolveinfo = (ResolveInfo)iterator.next();
            String s = intent.getAction();
            if (resolveinfo.activityInfo.packageName.equals(context.getPackageName()) && "com.android.vending.INSTALL_REFERRER".equals(s) && !getClass().getName().equals(resolveinfo.activityInfo.name))
            {
                Log.i("AppsFlyer", (new StringBuilder()).append("trigger onReceive: class: ").append(resolveinfo.activityInfo.name).toString());
                try
                {
                    ((BroadcastReceiver)Class.forName(resolveinfo.activityInfo.name).newInstance()).onReceive(context, intent);
                }
                catch (InstantiationException instantiationexception)
                {
                    instantiationexception.printStackTrace();
                }
                catch (IllegalAccessException illegalaccessexception)
                {
                    illegalaccessexception.printStackTrace();
                }
                catch (ClassNotFoundException classnotfoundexception)
                {
                    classnotfoundexception.printStackTrace();
                }
            }
        } while (true);
        (new AppsFlyerLib()).onReceive(context, intent);
    }
}
