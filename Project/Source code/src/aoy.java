// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import java.util.ArrayList;
import java.util.Iterator;

public class aoy
{

    private static aoy a;
    private Context b;
    private BroadcastReceiver c;
    private ArrayList d;

    private aoy(Context context)
    {
        c = new aoz(this);
        d = new ArrayList();
        b = context.getApplicationContext();
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("com.dianxinos.dxbs.MODEMODIFIED");
        intentfilter.addAction("com.dianxinos.dxbs.MODECHANGE");
        b.registerReceiver(c, intentfilter);
    }

    public static aoy a(Context context)
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        aoy;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new aoy(context);
        }
        aoy;
        JVM INSTR monitorexit ;
_L2:
        return a;
        Exception exception;
        exception;
        aoy;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(int i)
    {
        for (Iterator iterator = d.iterator(); iterator.hasNext(); ((apa)iterator.next()).a(i)) { }
    }

    static void a(aoy aoy1, int i)
    {
        aoy1.a(i);
    }

    public void a(apa apa1)
    {
        if (!d.contains(apa1))
        {
            d.add(apa1);
        }
    }

    public void b(apa apa1)
    {
        if (d.contains(apa1))
        {
            d.remove(apa1);
        }
    }
}
