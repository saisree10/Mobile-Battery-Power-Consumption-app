// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.dxservice.core;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Messenger;
import android.util.Log;
import sd;
import si;
import sm;
import ss;
import tj;
import ty;
import ud;
import uf;

public class DXCoreService extends Service
{

    final Messenger a = new Messenger(new sd(this, uf.a()));
    private Context b;
    private sm c;
    private tj d;
    private ty e;
    private ss f;

    public DXCoreService()
    {
    }

    public static tj a(DXCoreService dxcoreservice)
    {
        return dxcoreservice.d;
    }

    public static sm b(DXCoreService dxcoreservice)
    {
        return dxcoreservice.c;
    }

    public static ty c(DXCoreService dxcoreservice)
    {
        return dxcoreservice.e;
    }

    public IBinder onBind(Intent intent)
    {
        if (ud.c)
        {
            Log.i("stat.DXCoreService", "DXCoreSevice onBind");
        }
        c.a();
        d.a();
        f.a();
        if (ud.a(getApplicationContext()))
        {
            si.a(getApplicationContext()).a();
        }
        return a.getBinder();
    }

    public void onCreate()
    {
        if (ud.c)
        {
            Log.i("stat.DXCoreService", "DXCoreSevice onCreate");
        }
        b = getApplicationContext();
        c = new sm(b);
        d = new tj(b);
        f = new ss(b);
        e = new ty(b);
    }

    public void onDestroy()
    {
        if (ud.c)
        {
            Log.i("stat.DXCoreService", "DXCoreSevice onDestroy");
        }
        d.b();
        c.b();
        f.b();
    }
}
