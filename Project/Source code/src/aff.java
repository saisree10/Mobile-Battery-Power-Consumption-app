// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;

public class aff
{

    private static volatile aff a;
    private afh b;
    private int c;
    private Context d;
    private adh e;
    private boolean f;
    private boolean g;
    private boolean h;
    private AlarmManager i;
    private PendingIntent j;
    private afs k;

    private aff(Context context)
    {
        i = null;
        j = null;
        k = null;
        d = context;
        e = adh.a(d);
        c = e.d();
        k = afs.a(d);
        i = (AlarmManager)d.getSystemService("alarm");
    }

    public static aff a(Context context)
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        aff;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new aff(context);
        }
        aff;
        JVM INSTR monitorexit ;
_L2:
        return a;
        Exception exception;
        exception;
        aff;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(add add1)
    {
        boolean flag;
        boolean flag1;
        if (add1.e != 0 && c == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        g = flag;
        if (add1.e == 0 && c != 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        h = flag1;
        c = add1.e;
        e.c(c);
        if (add1.e == 0)
        {
            f = false;
        } else
        {
            f = true;
        }
        if (h)
        {
            if (h() || d())
            {
                if (e() != 103)
                {
                    i();
                }
            } else
            {
                afu afu1 = k.b();
                afu1.d = 1 + afu1.d;
                k.b(afu1);
            }
            if (b != null)
            {
                b.d();
            }
            if (h())
            {
                e.b(System.currentTimeMillis());
            }
            b = afr.a(d.getApplicationContext());
        }
        if (g)
        {
            if (add1.c <= 20 || d())
            {
                b = afk.a(d.getApplicationContext());
            } else
            {
                b = afp.a(d.getApplicationContext());
            }
            if (j != null)
            {
                i.cancel(j);
                j = null;
            }
        }
        if (b == null)
        {
            if (!g())
            {
                b = afr.a(d.getApplicationContext());
            } else
            if (add1.c <= 20 || d())
            {
                b = afk.a(d.getApplicationContext());
            } else
            {
                b = afp.a(d.getApplicationContext());
            }
        }
        if (h())
        {
            c();
            azt.a("ChargerManager", "healthy charging");
        }
        b.a(add1);
    }

    public boolean a()
    {
        return g;
    }

    public boolean b()
    {
        return h;
    }

    public void c()
    {
        if (b != null && (b instanceof afk))
        {
            e.b(System.currentTimeMillis());
        }
    }

    public boolean d()
    {
        long l = e.e();
        return System.currentTimeMillis() < l + 0x927c0L;
    }

    public int e()
    {
        byte byte0 = 101;
        if (!(b instanceof afp)) goto _L2; else goto _L1
_L1:
        afg afg2 = b.a();
        afg2.b;
        JVM INSTR tableswitch 0 2: default 52
    //                   0 62
    //                   1 65
    //                   2 67;
           goto _L3 _L4 _L5 _L6
_L5:
        break MISSING_BLOCK_LABEL_65;
_L3:
        throw new IllegalArgumentException("state error");
_L4:
        byte0 = 105;
_L8:
        return byte0;
_L6:
        if (afg2.d() == 1)
        {
            return 102;
        }
        if (afg2.d() == 2)
        {
            return 103;
        } else
        {
            azt.a("ChargerManager", "state error");
            return 102;
        }
_L2:
        if (b instanceof afk)
        {
            afg afg1 = b.a();
            switch (afg1.b)
            {
            default:
                throw new IllegalArgumentException("state error");

            case 0: // '\0'
                return 105;

            case 2: // '\002'
                if (afg1.d() == 1)
                {
                    return 102;
                }
                if (afg1.d() == 2)
                {
                    return 103;
                } else
                {
                    azt.a("ChargerManager", "state error");
                    return 102;
                }

            case 1: // '\001'
                break;
            }
        } else
        {
            return 104;
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    public afh f()
    {
        return b;
    }

    public boolean g()
    {
        return f;
    }

    public boolean h()
    {
        return b != null && (b instanceof afk);
    }

    public void i()
    {
        Intent intent = new Intent("com.dianxinos.powermanager.savenormalcharge");
        j = PendingIntent.getBroadcast(d, 0, intent, 0);
        i.set(0, 0x927c0L + System.currentTimeMillis(), j);
    }
}
