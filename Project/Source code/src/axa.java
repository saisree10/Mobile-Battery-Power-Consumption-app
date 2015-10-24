// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.widget.Toast;

public class axa
{

    private static axa a;
    private Context b;

    private axa(Context context)
    {
        b = context;
    }

    public static axa a(Context context)
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        axa;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new axa(context);
        }
        axa;
        JVM INSTR monitorexit ;
_L2:
        return a;
        Exception exception;
        exception;
        axa;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a()
    {
        Context context = b;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        Toast.makeText(context, 0x7f0a0109, 0).show();
    }
}
