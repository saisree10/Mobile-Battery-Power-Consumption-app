// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.common.dxsplash;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import java.util.HashMap;
import mm;
import mw;
import mx;

public class SplashDownloadFileService extends Service
{

    private HashMap a;
    private mx b;

    public SplashDownloadFileService()
    {
    }

    public static HashMap a(SplashDownloadFileService splashdownloadfileservice)
    {
        return splashdownloadfileservice.a;
    }

    public void a(String s)
    {
        mw mw1 = (mw)a.get(s);
        if (mw1 != null)
        {
            mw1.a(true);
            a.remove(s);
        }
    }

    public void a(String s, String s1, long l, long l1, mm mm)
    {
        if (a.get(s) == null)
        {
            mw mw1 = new mw(this, mm);
            a.put(s, mw1);
            Object aobj[] = new Object[4];
            aobj[0] = s;
            aobj[1] = s1;
            aobj[2] = Long.valueOf(l);
            aobj[3] = Long.valueOf(l1);
            mw1.execute(aobj);
        }
    }

    public IBinder onBind(Intent intent)
    {
        return b;
    }

    public void onCreate()
    {
        super.onCreate();
        a = new HashMap();
        b = new mx(this);
    }

    public void onDestroy()
    {
        super.onDestroy();
    }
}
