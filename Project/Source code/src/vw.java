// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Service;
import android.content.Intent;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;

abstract class vw extends Service
{

    private volatile Looper a;
    private volatile vx b;
    private String c;
    private boolean d;

    public vw(String s)
    {
        c = s;
    }

    protected abstract void a(Intent intent);

    public void a(boolean flag)
    {
        d = flag;
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        super.onCreate();
        HandlerThread handlerthread = new HandlerThread((new StringBuilder("IntentService[")).append(c).append("]").toString());
        handlerthread.start();
        a = handlerthread.getLooper();
        b = new vx(this, a);
    }

    public void onDestroy()
    {
        a.quit();
    }

    public void onStart(Intent intent, int i)
    {
        Message message = b.obtainMessage();
        message.arg1 = i;
        message.obj = intent;
        b.sendMessage(message);
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        onStart(intent, j);
        return !d ? 2 : 3;
    }
}
