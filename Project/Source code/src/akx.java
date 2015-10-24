// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;

public class akx
{

    private static akx a;
    private static ArrayList b = new ArrayList();
    private static aec c;
    private static Context d;
    private ArrayList e;

    private akx(Context context)
    {
        e = new ArrayList();
        d = context;
    }

    public static akx a(Context context)
    {
        akx;
        JVM INSTR monitorenter ;
        akx akx1;
        if (a == null)
        {
            a = new akx(context);
            c = new aec(context);
            b.add(c);
            a.f();
        }
        akx1 = a;
        akx;
        JVM INSTR monitorexit ;
        return akx1;
        Exception exception;
        exception;
        throw exception;
    }

    private void f()
    {
        for (Iterator iterator = b.iterator(); iterator.hasNext(); ((akp)iterator.next()).b()) { }
    }

    void a()
    {
        boolean flag = b();
        for (Iterator iterator = e.iterator(); iterator.hasNext(); ((akq)iterator.next()).a(flag)) { }
    }

    public void a(akq akq1)
    {
        if (!e.contains(akq1))
        {
            e.add(akq1);
        }
    }

    public void a(Activity activity, String s, Handler handler)
    {
        aej aej1 = new aej(activity, s, handler, c.g());
        c.a(activity, aej1);
    }

    public void b(akq akq1)
    {
        if (e.contains(akq1))
        {
            e.remove(akq1);
        }
    }

    public boolean b()
    {
        if (anx.a(d) || b.size() <= 0)
        {
            return true;
        }
        for (Iterator iterator = b.iterator(); iterator.hasNext();)
        {
            if (((akp)iterator.next()).c())
            {
                return true;
            }
        }

        return false;
    }

    public boolean c()
    {
        if (anx.a(d) || b.size() <= 0)
        {
            return true;
        }
        for (Iterator iterator = b.iterator(); iterator.hasNext();)
        {
            if (((akp)iterator.next()).d())
            {
                return true;
            }
        }

        return false;
    }

    public void d()
    {
        for (Iterator iterator = b.iterator(); iterator.hasNext(); ((akp)iterator.next()).e()) { }
    }

    public void e()
    {
        for (Iterator iterator = b.iterator(); iterator.hasNext(); ((akp)iterator.next()).f()) { }
    }

}
