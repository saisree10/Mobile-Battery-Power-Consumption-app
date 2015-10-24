// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class gl
{

    private static Class a;
    private static Method b;

    public static IBinder a(Object obj)
    {
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        IBinder ibinder = (IBinder)b.invoke(null, new Object[] {
            obj
        });
        return ibinder;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        xz.a("ServiceManagerCompat", "unexpected", illegalaccessexception);
_L2:
        return null;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        xz.a("ServiceManagerCompat", "unexpected", invocationtargetexception);
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        xz.a("ServiceManagerCompat", "unexpected", exception);
        if (true) goto _L2; else goto _L1
_L1:
    }

    static 
    {
        try
        {
            a = Class.forName("android.os.ServiceManager", false, Thread.currentThread().getContextClassLoader());
            b = a.getMethod("getService", new Class[] {
                java/lang/String
            });
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            xz.a("ServiceManagerCompat", "unexpected", classnotfoundexception);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            xz.a("ServiceManagerCompat", "unexpected", nosuchmethodexception);
        }
    }
}
