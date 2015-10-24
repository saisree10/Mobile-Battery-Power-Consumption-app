// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.ActivityManager;
import android.os.AsyncTask;
import android.os.Handler;
import com.dianxinos.powermanager.usage.AppPowerUsageKitKatActivity;

public class axz extends AsyncTask
{

    final AppPowerUsageKitKatActivity a;

    public axz(AppPowerUsageKitKatActivity apppowerusagekitkatactivity)
    {
        a = apppowerusagekitkatactivity;
        super();
    }

    protected transient Void a(Object aobj[])
    {
        AppPowerUsageKitKatActivity.a(a, AppPowerUsageKitKatActivity.b(a).getRunningAppProcesses());
        AppPowerUsageKitKatActivity.d(a).a(AppPowerUsageKitKatActivity.c(a));
        return null;
    }

    protected Object doInBackground(Object aobj[])
    {
        return a(aobj);
    }

    protected void onPostExecute(Object obj)
    {
        AppPowerUsageKitKatActivity.a(a).sendEmptyMessage(1);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        AppPowerUsageKitKatActivity.a(a).sendEmptyMessage(2);
    }
}
