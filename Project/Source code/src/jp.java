// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.util.Log;
import java.util.List;

public class jp
{

    private static final boolean a;

    public static void a(Context context, Intent intent)
    {
        ka ka1;
label0:
        {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()))
            {
                if (a)
                {
                    Log.d("ReceiverHelper", "OnNetWorkChanged Check update scheduled");
                }
                boolean flag = intent.getBooleanExtra("isFailover", false);
                boolean flag1 = intent.getBooleanExtra("noConnectivity", false);
                if (a)
                {
                    Log.d("ReceiverHelper", (new StringBuilder()).append("Receive network status chaned broadcast, failover:").append(flag).append(", noNetwork:").append(flag1).toString());
                }
                ka1 = ka.a(context);
                if (!flag1)
                {
                    boolean flag2 = kj.a(ka1.a());
                    if (!jo.a(context, "pref-need-redownload", false))
                    {
                        break label0;
                    }
                    boolean flag3 = jo.a(context, "pref-last-progress-enable", true);
                    if (flag2 || flag3)
                    {
                        if (a)
                        {
                            Log.d("ReceiverHelper", "Schedule re-download");
                        }
                        AlarmManager alarmmanager = (AlarmManager)context.getSystemService("alarm");
                        Intent intent1 = new Intent("com.dianxinos.appupdate.intent.DOWNLOAD_RETRY");
                        intent1.setPackage(context.getPackageName());
                        PendingIntent pendingintent = PendingIntent.getService(context, 0, intent1, 0x10000000);
                        alarmmanager.set(1, 5000L + System.currentTimeMillis(), pendingintent);
                    }
                    ka1.a(false, true);
                }
            }
            return;
        }
        ka1.a(true, true);
    }

    public static void b(Context context, Intent intent)
    {
        String s = intent.getAction();
        if ("android.intent.action.PACKAGE_ADDED".equals(s))
        {
            String s1 = intent.getData().getEncodedSchemeSpecificPart();
            if (it.a)
            {
                Log.d("ReceiverHelper", (new StringBuilder()).append("got an ").append(s).append("for").append(s1).toString());
            }
            PackageManager packagemanager = context.getPackageManager();
            if (packagemanager.checkSignatures(context.getPackageName(), s1) >= 0)
            {
                Intent intent1 = new Intent("com.dianxinos.appupdate.intent.NOTIFY_INSTALLED");
                intent1.setComponent(new ComponentName(s1, "com.dianxinos.appupdate.NotifyInstalledReceiver"));
                if (!packagemanager.queryBroadcastReceivers(intent1, 0).isEmpty())
                {
                    context.sendBroadcast(intent1);
                    if (it.a)
                    {
                        Log.d("ReceiverHelper", (new StringBuilder()).append("sent an com.dianxinos.appupdate.intent.NOTIFY_INSTALLED ").append(intent1.getComponent()).toString());
                        return;
                    }
                }
            }
        }
    }

    static 
    {
        a = it.a;
    }
}
