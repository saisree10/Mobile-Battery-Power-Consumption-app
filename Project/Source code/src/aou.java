// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class aou
{

    public static final String a[] = {
        "brightness", "screenTimeout", "wifi", "bluetooth", "mobileData", "sync", "vibrate", "haptic", "autoclean", "GPS", 
        "bkgData", "only2g", "autoRotate", "airplane"
    };
    private static Context d;
    public final HashMap b = new HashMap();
    public boolean c;
    private ahp e;
    private ahp f;
    private ahp g;
    private String h;
    private List i;
    private BroadcastReceiver j;

    public aou(Context context)
    {
        i = new LinkedList();
        j = new aov(this);
        d = context.getApplicationContext();
        c();
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("com.dianxinos.dxbs.MODEMODIFIED");
        intentfilter.addAction("com.dianxinos.dxbs.MODECHANGE");
        d.registerReceiver(j, intentfilter);
    }

    static String a(aou aou1, String s)
    {
        aou1.h = s;
        return s;
    }

    static void a(aou aou1)
    {
        aou1.c();
    }

    static Context b()
    {
        return d;
    }

    static void b(aou aou1)
    {
        aou1.d();
    }

    private void c()
    {
        amh amh1 = amp.a(d).g();
        c = amh1.l().a();
        a(amh1.a(2).a());
        g = amh1.a(4);
        b(g.a());
        a(amh1.a(0).g());
        b(api.a(d).b());
        c(amh1.l().a());
        f = amh1.a(9);
        d(f.a());
        e(amh1.a(3).a());
        f(amh1.a(5).a());
        e = amh1.a(10);
        a();
    }

    private void d()
    {
        List list = i;
        list;
        JVM INSTR monitorenter ;
        for (Iterator iterator = i.iterator(); iterator.hasNext(); ((aox)iterator.next()).a(b)) { }
        break MISSING_BLOCK_LABEL_52;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
    }

    public ArrayList a(String s)
    {
        return new ArrayList(Arrays.asList(s.split("\\|")));
    }

    protected void a()
    {
    }

    protected void a(int k)
    {
    }

    public void a(aox aox1)
    {
        if (f != null)
        {
            d(f.a());
        }
        if (g != null)
        {
            b(g.a());
        }
        synchronized (i)
        {
            i.add(aox1);
        }
        h = "";
        aox1.a(b);
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void a(boolean flag)
    {
    }

    public String b(Context context)
    {
        String s = apg.a(context);
        if (s == null)
        {
            s = "wifi|mobileData|brightness|vibrate|airplane|GPS|bluetooth|sync|bkgData|autoRotate";
        }
        return s;
    }

    protected void b(int k)
    {
    }

    public void b(aox aox1)
    {
        synchronized (i)
        {
            i.remove(aox1);
        }
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void b(boolean flag)
    {
    }

    protected void c(boolean flag)
    {
    }

    protected void d(boolean flag)
    {
    }

    protected void e(boolean flag)
    {
    }

    protected void f(boolean flag)
    {
    }

    protected void finalize()
    {
        try
        {
            d.unregisterReceiver(j);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

}
