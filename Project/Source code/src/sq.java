// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import android.util.Log;

class sq
    implements Runnable
{

    final Intent a;
    final sm b;

    public sq(sm sm1, Intent intent)
    {
        b = sm1;
        super();
        a = intent;
    }

    public void run()
    {
        boolean flag = false;
        if (ud.b)
        {
            Log.d("stat.AppInfoService", (new StringBuilder()).append("Enter in handleAppAction!\nAction received: ").append(a.getAction()).toString());
        }
        String s = a.getDataString().substring(8);
        sr sr1;
        if ("android.intent.action.PACKAGE_ADDED".equals(a.getAction()))
        {
            if (sm.d())
            {
                if (ud.b)
                {
                    Log.d("stat.AppInfoService", "This add broadcast is Update action!");
                }
                sm.a(false);
                sr1 = null;
            } else
            {
                sr1 = ub.a(s, "install");
                flag = true;
            }
        } else
        if ("android.intent.action.PACKAGE_REMOVED".equals(a.getAction()))
        {
            sr sr3 = ub.a(s, "uninstall");
            if (sr3.b() != null)
            {
                if (ud.b)
                {
                    Log.d("stat.AppInfoService", "This remove broadcast is Update action!");
                }
                sm.a(true);
                sr1 = sr3;
                flag = false;
            } else
            {
                sr3.a(System.currentTimeMillis());
                flag = true;
                sr1 = sr3;
            }
        } else
        if ("android.intent.action.PACKAGE_REPLACED".equals(a.getAction()))
        {
            sr sr2 = ub.a(s, "change");
            sm.a(false);
            flag = true;
            sr1 = sr2;
        } else
        {
            flag = true;
            sr1 = null;
        }
        if (flag)
        {
            if (ud.b)
            {
                Log.d("stat.AppInfoService", (new StringBuilder()).append("[packageName:").append(sr1.a()).append("][actionType:").append(sr1.g()).append("] is to put into DB!").toString());
            }
            boolean flag1 = sm.a(b, sr1);
            if (!ub.a(sr1))
            {
                ub.b(sr1);
            }
            if (ud.b)
            {
                Log.d("stat.AppInfoService", (new StringBuilder()).append("Put to db :").append(flag1).append(" and Now used DB size is ").append(sm.e().a()).append("Byte!").toString());
            }
        }
    }
}
