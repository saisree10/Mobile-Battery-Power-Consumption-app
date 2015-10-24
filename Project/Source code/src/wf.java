// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;
import java.util.HashMap;
import java.util.LinkedList;

class wf
    implements ServiceConnection
{

    final wd a;

    wf(wd wd1)
    {
        a = wd1;
        super();
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        a.c = true;
        a.a.put(componentname.getPackageName(), wb.a(ibinder));
        if (vy.a)
        {
            Log.i("WidgetClientService", (new StringBuilder("WidgetClientService onServiceConnected mService= ")).append(a.a.get(componentname.getPackageName())).append(",mTaskQueue.size()=").append(wd.b(a).size()).toString());
        }
        android.os.Message message = wd.c(a).obtainMessage(2);
        wd.c(a).sendMessage(message);
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        if (vy.a)
        {
            Log.i("WidgetClientService", "WidgetClientService onServiceDisconnected");
        }
        a.a.put(componentname.getPackageName(), null);
        if (wd.d(a))
        {
            if (vy.a)
            {
                Log.i("WidgetClientService", "DXHome is Running!!");
            }
            Intent intent = new Intent();
            intent.setAction("com.dianxinos.dxhome.dxwidget.WidgetServerService");
            a.startService(intent);
        }
    }
}
