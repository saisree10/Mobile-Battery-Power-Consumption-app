// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.appupdate;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import it;
import iy;
import iz;
import ja;
import jb;
import jd;
import jw;
import kj;

public class DownloadService extends Service
{

    private static final boolean e;
    protected boolean a;
    protected boolean b;
    protected boolean c;
    protected boolean d;
    private jd f;
    private iz g;
    private iz h;
    private Object i;
    private final jb j = new jb(this);
    private jw k;

    public DownloadService()
    {
        i = new Object();
        a = false;
        b = false;
        c = false;
        d = false;
        k = new ja(this);
    }

    public static boolean a()
    {
        return e;
    }

    private void b()
    {
        if (e)
        {
            Log.d("DownloadService", (new StringBuilder()).append("Canceling downlaod, tid:").append(Thread.currentThread().getId()).toString());
        }
        Object obj = i;
        obj;
        JVM INSTR monitorenter ;
        if (f == null) goto _L2; else goto _L1
_L1:
        f.a();
        f = null;
        if (e)
        {
            Log.d("DownloadService", "Download canceled");
        }
_L4:
        stopSelf();
        return;
_L2:
        if (e)
        {
            Log.d("DownloadService", "No active download");
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private iz c()
    {
        PackageManager packagemanager;
        ComponentName componentname;
        if (e)
        {
            Log.d("DownloadService", "Reflecting download progress listener");
        }
        Context context = getApplicationContext();
        packagemanager = context.getPackageManager();
        componentname = new ComponentName(context, com/dianxinos/appupdate/DownloadService);
        String s = packagemanager.getServiceInfo(componentname, 128).metaData.getString("com.dianxinos.appupdate.DOWNLOAD_PROGRESS_LISTENER");
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        return (iz)kj.a(s, iz);
        if (e)
        {
            Log.w("DownloadService", "Download progress listener not specified");
        }
_L2:
        return null;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        namenotfoundexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void a(iz iz1)
    {
        if (iz1 == null)
        {
            return;
        }
        synchronized (i)
        {
            h = iz1;
            if (f != null)
            {
                f.a(iz1);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(iz iz1)
    {
        if (iz1 == null)
        {
            return;
        }
        synchronized (i)
        {
            h = null;
            if (f != null)
            {
                f.b(iz1);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public IBinder onBind(Intent intent)
    {
        return j;
    }

    public void onCreate()
    {
        super.onCreate();
        if (e)
        {
            Log.d("DownloadService", "onCreate");
        }
        d = true;
        g = c();
    }

    public void onDestroy()
    {
        if (e)
        {
            Log.v("DownloadService", (new StringBuilder()).append("onDestroy, tid:").append(Thread.currentThread().getId()).toString());
        }
        b();
        c = true;
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int l, int i1)
    {
        int j1;
        j1 = 0;
        super.onStart(intent, i1);
        b = false;
        a = false;
        if (intent == null) goto _L2; else goto _L1
_L1:
        String s;
        s = intent.getAction();
        if (e)
        {
            Log.v("DownloadService", (new StringBuilder()).append("onStartCommand, action:").append(s).toString());
        }
        if (!"com.dianxinos.appupdate.intent.DOWNLOAD".equals(s)) goto _L4; else goto _L3
_L3:
        Uri uri = intent.getData();
        if (uri == null) goto _L6; else goto _L5
_L5:
        a = true;
        Object obj = i;
        obj;
        JVM INSTR monitorenter ;
        if (f == null || f.getState().equals(Thread.State.TERMINATED)) goto _L8; else goto _L7
_L7:
        Log.w("DownloadService", "A previous download is still executing");
_L2:
        return super.onStartCommand(intent, l, i1);
_L8:
        iy iy1;
        int k1;
        iy1 = new iy(getApplicationContext(), k);
        iy1.a = uri.toString();
        iy1.c = intent.getStringExtra("extra-filename");
        iy1.b = true;
        k1 = intent.getIntExtra("extra-dest", -1);
        if (k1 != -1)
        {
            break MISSING_BLOCK_LABEL_506;
        }
        Log.w("DownloadService", "Download destination not specified");
_L9:
        iy1.e = j1;
        iy1.m = intent.getIntExtra("extra-pri", 0);
        iy1.n = intent.getStringExtra("extra-dspt");
        iy1.o = intent.getStringExtra("extra-extra_info");
        iy1.l = intent.getStringExtra("extra-checksum");
        iy1.j = intent.getLongExtra("extra-file-size", 0L);
        boolean flag = intent.getBooleanExtra("extra-progress-enable", true);
        f = new jd(getApplicationContext(), k, iy1, flag);
        f.a(g);
        if (h != null)
        {
            f.a(h);
        }
        f.start();
        if (e)
        {
            Log.d("DownloadService", (new StringBuilder()).append("Download thread started, dest:").append(iy1.e).append(", checksum:").append(iy1.l).append(", total:").append(iy1.j).toString());
        }
        obj;
        JVM INSTR monitorexit ;
        return 3;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L6:
        Log.e("DownloadService", "Receive start download command, but no uri specified");
          goto _L2
_L4:
        if ("com.dianxinos.appupdate.intent.CANCEL_DOWNLOAD".equals(s))
        {
            if (e)
            {
                Log.d("DownloadService", "Canceling download action received");
            }
            b = true;
            b();
        } else
        if (e)
        {
            Log.w("DownloadService", (new StringBuilder()).append("Unknown action:").append(s).toString());
        }
          goto _L2
        j1 = k1;
          goto _L9
    }

    static 
    {
        e = it.a;
    }
}
