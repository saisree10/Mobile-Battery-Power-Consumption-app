// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Messenger;
import android.util.Log;
import java.util.Iterator;
import java.util.List;

class sf
    implements ServiceConnection
{

    final se a;

    sf(se se1)
    {
        a = se1;
        super();
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        if (ud.c)
        {
            Log.i("stat.DXServiceInterator", "Service is connected!");
        }
        se.a(a, new Messenger(ibinder));
        se.a(a, true);
        if (se.a(a))
        {
            a.b();
        }
        tf tf1;
        for (Iterator iterator = se.b(a).iterator(); iterator.hasNext(); a.a(tf1))
        {
            tf1 = (tf)iterator.next();
        }

        se.b(a, false);
        se.b(a).clear();
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        if (ud.c)
        {
            Log.i("stat.DXServiceInterator", "Service is Disconnected!");
        }
        se.a(a, false);
    }
}
