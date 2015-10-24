// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.optimizer.analysis;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import wm;

public class PerformanceMonitorService extends Service
{

    private wm a;

    public PerformanceMonitorService()
    {
    }

    public static void a(Context context)
    {
        context.startService(new Intent(context, com/dianxinos/optimizer/analysis/PerformanceMonitorService));
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        super.onCreate();
        a = new wm(this);
        a.a();
    }

    public void onDestroy()
    {
        a.b();
        super.onDestroy();
    }
}
