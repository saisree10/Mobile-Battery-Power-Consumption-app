// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.appupdate;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import it;
import iu;
import iv;
import jo;
import ka;
import kj;

public class AppUpdateService extends Service
{

    private static final boolean a;
    private boolean b;
    private iv c;

    public AppUpdateService()
    {
        b = false;
        c = new iu(this);
    }

    public static boolean a()
    {
        return a;
    }

    public static boolean a(AppUpdateService appupdateservice)
    {
        return appupdateservice.b();
    }

    private boolean b()
    {
        for (long l = kj.c(getApplicationContext()); l < 0L || l > System.currentTimeMillis() || System.currentTimeMillis() - l >= 0x5265c00L;)
        {
            return false;
        }

        return true;
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        super.onCreate();
    }

    public void onStart(Intent intent, int i)
    {
        super.onStart(intent, i);
        if (intent == null || !kj.e(getApplicationContext())) goto _L2; else goto _L1
_L1:
        String s = intent.getAction();
        if (!"com.dianxinos.appupdate.intent.CHECK_UPDATE".equals(s)) goto _L4; else goto _L3
_L3:
        if (a)
        {
            Log.d("AppUpdateService", "Auto checking update");
        }
        ka ka1 = ka.a(getApplicationContext());
        if (!ka1.h() && !ka1.i())
        {
            ka1.a(c, true);
        }
        b = true;
_L2:
        stopSelf();
        return;
_L4:
        if ("com.dianxinos.appupdate.intent.DOWNLOAD_RETRY".equals(s) && jo.a(getApplicationContext(), "pref-need-redownload", false))
        {
            ka.a(getApplicationContext()).a(null, true);
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    static 
    {
        a = it.a;
    }
}
