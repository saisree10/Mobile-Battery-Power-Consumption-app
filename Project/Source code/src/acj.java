// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.IBinder;
import java.util.Timer;

public abstract class acj extends Service
    implements adc
{

    private static Timer d;
    protected Resources a;
    private acz b;
    private boolean c;
    private BroadcastReceiver e;

    public acj()
    {
        e = new acl(this);
    }

    static boolean a(acj acj1)
    {
        return acj1.c;
    }

    static boolean a(acj acj1, boolean flag)
    {
        acj1.c = flag;
        return flag;
    }

    static acz b(acj acj1)
    {
        return acj1.b;
    }

    protected void a()
    {
    }

    public void a(add add)
    {
        if (b(add))
        {
            a();
        }
    }

    protected boolean b(add add)
    {
        return true;
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        b = acz.a(this);
        a = getResources();
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.intent.action.SCREEN_OFF");
        intentfilter.addAction("android.intent.action.SCREEN_ON");
        registerReceiver(e, intentfilter);
        if (d == null)
        {
            d = new Timer();
            d.schedule(new ack(this), 10000L, 0xa4cb80L);
        }
    }

    public void onDestroy()
    {
        if (c)
        {
            b.b(this);
        }
        try
        {
            unregisterReceiver(e);
        }
        catch (Exception exception) { }
        d.cancel();
        d = null;
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        if (!c)
        {
            b.a(this);
            c = true;
        } else
        {
            a();
        }
        return super.onStartCommand(intent, i, j);
    }
}
