// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.util.ArrayList;

public class anb
{

    private static amh a;
    private static anb b;
    private amx c;
    private boolean d;

    private anb(Context context, amp amp, amh amh1)
    {
        a = amh1;
        c = new amx(context);
        boolean flag;
        if (azw.i && azf.b(context))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        d = flag;
    }

    static amx a(anb anb1)
    {
        return anb1.c;
    }

    public static anb a(Context context, amp amp, amh amh1)
    {
        if (b != null) goto _L2; else goto _L1
_L1:
        anb;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new anb(context, amp, amh1);
        }
        anb;
        JVM INSTR monitorexit ;
_L2:
        return b;
        Exception exception;
        exception;
        anb;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static amh b()
    {
        return a;
    }

    public Integer a(int i, int j)
    {
        return (Integer)(new anc(this, i)).a().get(j);
    }

    public ArrayList a()
    {
        a.g();
        return a.f();
    }

    public ArrayList a(int i)
    {
        return (new anc(this, i)).a();
    }

    public int b(int i)
    {
        if (i == 13)
        {
            if (!d)
            {
                return 0;
            } else
            {
                return 1 - a.l().g();
            }
        }
        if (a.f().size() > i)
        {
            return ((Integer)a.f().get(i)).intValue();
        } else
        {
            return a.a(i).g();
        }
    }
}
