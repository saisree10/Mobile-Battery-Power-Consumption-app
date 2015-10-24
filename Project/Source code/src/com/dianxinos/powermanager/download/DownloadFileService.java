// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.download;

import ajw;
import ajx;
import ajy;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import java.util.HashMap;

public class DownloadFileService extends Service
{

    private HashMap a;
    private ajx b;

    public DownloadFileService()
    {
    }

    public static HashMap a(DownloadFileService downloadfileservice)
    {
        return downloadfileservice.a;
    }

    public static void c(String s)
    {
        d(s);
    }

    private static void d(String s)
    {
    }

    public void a(String s)
    {
        ajw ajw1 = (ajw)a.get(s);
        if (ajw1 != null)
        {
            ajw1.a(true);
            a.remove(s);
        }
    }

    public void a(String s, String s1, long l, long l1, ajy ajy)
    {
        if (a.get(s) == null)
        {
            ajw ajw1 = new ajw(this, ajy);
            a.put(s, ajw1);
            Object aobj[] = new Object[4];
            aobj[0] = s;
            aobj[1] = s1;
            aobj[2] = Long.valueOf(l);
            aobj[3] = Long.valueOf(l1);
            ajw1.execute(aobj);
        }
    }

    public boolean b(String s)
    {
        return a.containsKey(s);
    }

    public IBinder onBind(Intent intent)
    {
        return b;
    }

    public void onCreate()
    {
        super.onCreate();
        a = new HashMap();
        b = new ajx(this);
    }

    public void onDestroy()
    {
        super.onDestroy();
    }
}
