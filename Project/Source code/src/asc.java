// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.util.Calendar;

public class asc
{

    private static asc a;
    private Context b;
    private asd c;
    private amp d;
    private and e;
    private amh f;
    private anh g;

    private asc(Context context)
    {
        b = context;
        c = new asd(this, 2);
        d = amp.a(b);
        e = and.a(b);
        f = d.g();
        g = anh.a(b);
    }

    static Context a(asc asc1)
    {
        return asc1.b;
    }

    public static asc a(Context context)
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        asc;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new asc(context);
        }
        asc;
        JVM INSTR monitorexit ;
_L2:
        return a;
        Exception exception;
        exception;
        asc;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(int i, int j)
    {
        a(i, j, false, 0);
    }

    private void a(int i, int j, boolean flag, int k)
    {
        int l = f.b(i, 2);
        int i1 = f.b(i, 4);
        int j1 = f.b(i, 13);
        if (flag)
        {
            int _tmp = -l;
            int _tmp1 = -i1;
            int _tmp2 = -j1;
        } else
        {
            k = i;
        }
        (new asw(b)).a(j, d.c(k));
    }

    private String b(String s)
    {
        return (new StringBuilder()).append("smart_").append(s).toString();
    }

    private static void c(String s)
    {
    }

    public void a()
    {
        arr arr1;
        amp amp1;
        if (g.a() == 1)
        {
            return;
        }
        arr1 = arr.a(b);
        amp1 = amp.a(b);
        if (!arr1.i())
        {
            break MISSING_BLOCK_LABEL_125;
        }
        int j = arr1.j();
        if (acz.a(b).c().c > j)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        c("fix low battery");
        int k = amq.d(arr1.h(1));
        String s1 = b("switch_by_battery");
        g.a(k, s1);
        g.a(s1, amp1.f().a(k));
        c("Push");
        c.a("switch_by_battery");
_L1:
        long l;
        long l1;
        long l2;
        if (!arr1.l())
        {
            break MISSING_BLOCK_LABEL_320;
        }
        int ai[] = arr1.n();
        int ai1[] = arr1.o();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        l = calendar.getTimeInMillis();
        calendar.set(11, ai[0]);
        calendar.set(12, ai[1]);
        calendar.set(13, 0);
        l1 = calendar.getTimeInMillis();
        calendar.set(11, ai1[0]);
        calendar.set(12, ai1[1]);
        calendar.set(13, 0);
        l2 = calendar.getTimeInMillis();
        if (l < l1 || l >= l2)
        {
            break MISSING_BLOCK_LABEL_320;
        }
        c("fix time switch");
        int i = amq.d(arr1.f(1));
        String s = b("switch_by_time");
        g.a(i, s);
        g.a(s, amp1.f().a(i));
        Exception exception2;
        try
        {
            c("Push");
            c.a("switch_by_time");
        }
        catch (Exception exception1)
        {
            try
            {
                exception1.printStackTrace();
            }
            catch (Exception exception) { }
        }
        g.a(1);
        return;
        exception2;
        exception2.printStackTrace();
          goto _L1
    }

    public void a(ase ase1, int i)
    {
        a(ase1, false, i);
    }

    public void a(ase ase1, boolean flag, int i)
    {
        if (ase1 == null)
        {
            return;
        }
        c((new StringBuilder()).append("SwitchMode switchWay:").append(ase1.a).append(" isManual:").append(flag).append(" modeIndex:").append(i).toString());
        if (flag)
        {
            ase1.b = 0;
        }
        if (!flag)
        {
            a(i, ase1.b);
        }
        e.a(i, ase1.b);
        e.a();
        try
        {
            c("Push");
            c.a(ase1.a);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void a(String s)
    {
        c.b(s);
    }
}
