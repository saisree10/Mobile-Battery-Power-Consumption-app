// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.widget.Toast;

public class and
{

    private static and e;
    private amh a;
    private amp b;
    private Context c;
    private boolean d;
    private int f;

    private and(Context context)
    {
        c = context;
        b = amp.a(context);
        a = b.g();
    }

    public static and a(Context context)
    {
        if (e != null) goto _L2; else goto _L1
_L1:
        and;
        JVM INSTR monitorenter ;
        if (e == null)
        {
            e = new and(context);
        }
        and;
        JVM INSTR monitorexit ;
_L2:
        return e;
        Exception exception;
        exception;
        and;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean b()
    {
        a.g();
        f = b.b();
        a.c(b.b());
        if (!a.h())
        {
            d = true;
        } else
        {
            d = false;
        }
        return d;
    }

    public void a()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        String s = context.getString(0x7f0a00f4);
        Toast.makeText(c, s, 0).show();
    }

    public boolean a(int i, int j)
    {
        b();
        if (f == i && !d)
        {
            return false;
        } else
        {
            b.a(i);
            a.a(d);
            a.c(i);
            a.a(i, j);
            return true;
        }
    }
}
