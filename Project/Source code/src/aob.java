// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.dianxinos.powermanager.PowerMangerApplication;
import java.util.HashMap;

public class aob
{

    private static aob a;
    private HashMap b;
    private Handler c;
    private aoa d;
    private Context e;

    private aob()
    {
        b = new HashMap();
        HandlerThread handlerthread = new HandlerThread("cmsserverpullscheduler");
        handlerthread.start();
        e = PowerMangerApplication.a();
        c = new Handler(handlerthread.getLooper());
        d = new aoa();
    }

    public static aob a()
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        aob;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new aob();
        }
        aob;
        JVM INSTR monitorexit ;
_L2:
        return a;
        Exception exception;
        exception;
        aob;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static HashMap a(aob aob1)
    {
        return aob1.b;
    }

    static void a(aob aob1, String s)
    {
        aob1.a(s);
    }

    private void a(String s)
    {
    }

    static aoa b(aob aob1)
    {
        return aob1.d;
    }

    static Context c(aob aob1)
    {
        return aob1.e;
    }

    public void a(anz anz)
    {
        String s;
        if (anz != null)
        {
            if (!b.containsKey(s = anz.getClass().getName()))
            {
                b.put(s, anz);
                return;
            }
        }
    }

    public void b()
    {
        c.post(new aoc(this));
    }
}
