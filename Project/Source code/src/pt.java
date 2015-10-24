// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

public class pt
{

    private static final Object a = new Object();
    private static boolean b = false;

    static Object a()
    {
        return a;
    }

    public static void a(Context context)
    {
        Context context1;
label0:
        {
            context1 = context.getApplicationContext();
            synchronized (a)
            {
                if (!b)
                {
                    break label0;
                }
            }
            return;
        }
        b = true;
        obj;
        JVM INSTR monitorexit ;
        nz.b("RefreshBalanceBackgroundPuller", "Refresh DU Coins in background...");
        ra.b(new pu(context1));
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static boolean a(boolean flag)
    {
        b = flag;
        return flag;
    }

}
