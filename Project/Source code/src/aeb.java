// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

class aeb
    implements ServiceConnection
{

    final adz a;

    private aeb(adz adz1)
    {
        a = adz1;
        super();
    }

    aeb(adz adz1, aea aea)
    {
        this(adz1);
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        a.a = akc.a(ibinder);
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        a.a = null;
    }
}
