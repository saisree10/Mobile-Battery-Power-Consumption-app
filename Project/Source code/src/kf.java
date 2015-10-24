// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.dianxinos.appupdate.DownloadService;

class kf
    implements ServiceConnection
{

    final ka a;

    kf(ka ka1)
    {
        a = ka1;
        super();
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        if (ka.p())
        {
            Log.d("UpdateManager", "Service connected");
        }
        jb jb1 = (jb)ibinder;
        synchronized (ka.f(a))
        {
            ka.a(a, jb1.a());
            if (ka.g(a) != null)
            {
                ka.h(a).a(ka.g(a));
            }
        }
        return;
        exception;
        serviceconnection;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        if (ka.p())
        {
            Log.d("UpdateManager", "Service disconnected");
        }
        synchronized (ka.f(a))
        {
            ka.a(a, null);
        }
        return;
        exception;
        serviceconnection;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
