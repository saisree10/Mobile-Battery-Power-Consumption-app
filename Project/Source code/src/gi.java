// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.net.Proxy;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;

public class gi
{

    private static Method a;

    public static String a(Context context, String s)
    {
        Method method;
        if (android.os.Build.VERSION.SDK_INT < 16)
        {
            return Proxy.getHost(context);
        }
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            return Proxy.getDefaultHost();
        }
        method = a;
        if (method == null)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        java.net.Proxy proxy = (java.net.Proxy)method.invoke(null, new Object[] {
            context, s
        });
        if (proxy == null)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        if (proxy == java.net.Proxy.NO_PROXY)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        String s1 = ((InetSocketAddress)proxy.address()).getHostName();
        return s1;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
_L2:
        return null;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        if (true) goto _L2; else goto _L1
_L1:
        return null;
    }

    public static int b(Context context, String s)
    {
        Method method;
        Object aobj[];
        if (android.os.Build.VERSION.SDK_INT < 16)
        {
            return Proxy.getPort(context);
        }
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            return Proxy.getDefaultPort();
        }
        method = a;
        if (method == null)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        aobj = (new Object[] {
            context, s
        });
        java.net.Proxy proxy = (java.net.Proxy)method.invoke(null, aobj);
        if (proxy == null)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        if (proxy == java.net.Proxy.NO_PROXY)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        int i = ((InetSocketAddress)proxy.address()).getPort();
        return i;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
_L2:
        return -1;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        if (true) goto _L2; else goto _L1
_L1:
        return -1;
    }

    static 
    {
        try
        {
            a = android/net/Proxy.getMethod("getProxy", new Class[] {
                android/content/Context, java/lang/String
            });
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            a = null;
        }
    }
}
