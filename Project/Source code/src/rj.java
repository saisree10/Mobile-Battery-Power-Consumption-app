// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class rj extends rh
{

    private static Class b;
    private static Method c;
    private static Method d;
    private static boolean e = false;
    private Object a;

    private rj()
    {
    }

    public static rj a(IBinder ibinder)
    {
        rj rj1;
        rj1 = new rj();
        if (d == null)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        rj1.a = d.invoke(null, new Object[] {
            ibinder
        });
        return rj1;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
_L2:
        return null;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void a()
    {
        b = Class.forName("com.android.internal.app.IBatteryStats");
        c = b.getMethod("getStatistics", new Class[0]);
        d = Class.forName("com.android.internal.app.IBatteryStats$Stub").getMethod("asInterface", new Class[] {
            android/os/IBinder
        });
    }

    protected void a(boolean flag)
    {
        e = flag;
    }

    protected boolean b()
    {
        return e;
    }

    public byte[] c()
    {
        return (byte[])(byte[])a(a, c, new Object[0]);
    }

}
