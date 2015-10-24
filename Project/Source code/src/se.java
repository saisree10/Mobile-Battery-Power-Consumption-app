// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import com.dianxinos.dxservice.core.DXCoreService;
import java.util.ArrayList;
import java.util.List;

public class se
{

    private static volatile se g;
    final Messenger a = new Messenger(new sg(this, null));
    private Context b;
    private boolean c;
    private Messenger d;
    private List e;
    private boolean f;
    private ServiceConnection h;

    private se(Context context)
    {
        h = new sf(this);
        b = context.getApplicationContext();
        c = false;
        d = null;
        e = new ArrayList();
        f = false;
        a();
    }

    static Messenger a(se se1, Messenger messenger)
    {
        se1.d = messenger;
        return messenger;
    }

    public static se a(Context context)
    {
        se;
        JVM INSTR monitorenter ;
        if (g == null)
        {
            g = new se(context);
        }
        se;
        JVM INSTR monitorexit ;
        return g;
        Exception exception;
        exception;
        se;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean a(Message message)
    {
        try
        {
            d.send(message);
        }
        catch (RemoteException remoteexception)
        {
            if (ud.d)
            {
                Log.e("stat.DXServiceInterator", (new StringBuilder()).append(message.toString()).append(" has RemoteException!").toString(), remoteexception);
            }
            return false;
        }
        catch (Exception exception)
        {
            if (ud.d)
            {
                Log.e("stat.DXServiceInterator", (new StringBuilder()).append(message.toString()).append(" has Exception!").toString(), exception);
            }
            return false;
        }
        return true;
    }

    static boolean a(se se1)
    {
        return se1.f;
    }

    static boolean a(se se1, boolean flag)
    {
        se1.c = flag;
        return flag;
    }

    static List b(se se1)
    {
        return se1.e;
    }

    static boolean b(se se1, boolean flag)
    {
        se1.f = flag;
        return flag;
    }

    private void c()
    {
        b.bindService(new Intent(b, com/dianxinos/dxservice/core/DXCoreService), h, 1);
    }

    public void a()
    {
        if (ud.c)
        {
            Log.i("stat.DXServiceInterator", "Start to bind!");
        }
        c();
    }

    public boolean a(int i)
    {
        if (!c)
        {
            if (ud.c)
            {
                Log.i("stat.DXServiceInterator", "Service haven't bind.The status change trigger will be ignored!");
            }
            return true;
        } else
        {
            return a(Message.obtain(null, i));
        }
    }

    public boolean a(tf tf1)
    {
        if (!c)
        {
            if (ud.c)
            {
                Log.i("stat.DXServiceInterator", (new StringBuilder()).append("Service haven't bind.The event ").append(tf1.toString()).append(" will send again when service is bound!").toString());
            }
            e.add(tf1);
            return true;
        } else
        {
            Message message = Message.obtain(null, 1);
            message.setData(tf1.a());
            return a(message);
        }
    }

    public boolean b()
    {
        if (!c)
        {
            if (ud.c)
            {
                Log.i("stat.DXServiceInterator", "Service haven't bind.When is bound,it will send again!");
            }
            f = true;
            return true;
        } else
        {
            return a(Message.obtain(null, 2));
        }
    }
}
