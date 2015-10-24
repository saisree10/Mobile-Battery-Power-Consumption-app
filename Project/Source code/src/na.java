// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.ArrayList;

class na
    implements ServiceConnection
{

    final my a;
    private nc b;
    private nb c;

    public na(my my1, nc nc1)
    {
        a = my1;
        super();
        b = nc1;
        c = new nb(my1, b);
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        a.a = mq.a(ibinder);
        try
        {
            a.a.a(b.e, b.f, 0L, a.d(b), c);
        }
        catch (RemoteException remoteexception)
        {
            remoteexception.printStackTrace();
        }
        synchronized (my.a(a))
        {
            my.a(a).add(b.e);
        }
        return;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        a.a = null;
        try
        {
            a.a.a(b.e);
        }
        catch (RemoteException remoteexception)
        {
            remoteexception.printStackTrace();
        }
        synchronized (my.a(a))
        {
            my.a(a).remove(b.e);
        }
        return;
        exception1;
        arraylist;
        JVM INSTR monitorexit ;
        try
        {
            throw exception1;
        }
        catch (Exception exception)
        {
            return;
        }
    }
}
