// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.text.TextUtils;

public class aio
    implements adc
{

    private static ain d;
    private static aio e;
    private Context a;
    private aik b;
    private aim c;
    private ain f;

    private aio(Context context)
    {
        a = context;
        b = aik.a(context);
        c = aim.a(context);
    }

    public static aio a(Context context)
    {
        if (e != null) goto _L2; else goto _L1
_L1:
        aio;
        JVM INSTR monitorenter ;
        if (e == null)
        {
            e = new aio(context);
        }
        aio;
        JVM INSTR monitorexit ;
_L2:
        return e;
        Exception exception;
        exception;
        aio;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(int i)
    {
        a(i, System.currentTimeMillis());
    }

    public void a(int i, long l)
    {
        int j = bap.a(l);
        if (d == null || !c.a(d, i, l)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        ain ain1;
        ain1 = b.a();
        if (ain1 != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        ain1 = c.a(l, i);
        b.a(ain1);
_L4:
        d = ain1;
        return;
        if (TextUtils.isEmpty(ain1.c)) goto _L1; else goto _L3
_L3:
        if (bap.a(l, ain1.a))
        {
            c.a(ain1, j, i);
            b.c(ain1);
        } else
        {
            c.a(ain1, l, i);
            b.b(ain1);
        }
          goto _L4
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void a(add add1)
    {
        a(add1.j);
    }

    public double[] a()
    {
        f = null;
        f = b.a();
        ain ain1 = f;
        double ad[] = null;
        if (ain1 != null)
        {
            boolean flag = TextUtils.isEmpty(f.c);
            ad = null;
            if (!flag)
            {
                ad = c.a(f);
            }
        }
        return ad;
    }

    public double[] b()
    {
        if (f != null && !TextUtils.isEmpty(f.b))
        {
            return c.b(f);
        } else
        {
            return null;
        }
    }
}
