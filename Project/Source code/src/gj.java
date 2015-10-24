// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.net.ConnectivityManager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class gj
{

    private static Method a;
    private static Method b;

    public static boolean a(ConnectivityManager connectivitymanager)
    {
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        boolean flag = ((Boolean)a.invoke(connectivitymanager, new Object[0])).booleanValue();
        return flag;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
_L2:
        return false;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static boolean a(ConnectivityManager connectivitymanager, boolean flag)
    {
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        Method method = b;
        Object aobj[] = new Object[1];
        aobj[0] = Boolean.valueOf(flag);
        method.invoke(connectivitymanager, aobj);
        return true;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
_L2:
        return false;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    static 
    {
        try
        {
            Class aclass[] = new Class[1];
            aclass[0] = Boolean.TYPE;
            a = android/net/ConnectivityManager.getMethod("getMobileDataEnabled", new Class[0]);
            b = android/net/ConnectivityManager.getMethod("setMobileDataEnabled", aclass);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            a = null;
            b = null;
        }
    }
}
