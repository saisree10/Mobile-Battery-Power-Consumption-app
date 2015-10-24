// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.net.ConnectivityManager;
import android.view.View;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class azv
{

    private static Method a;
    private static Method b;
    private static Field c;
    private static Field d;

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

    public static boolean a(View view)
    {
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        boolean flag = ((Boolean)a.invoke(view, new Object[0])).booleanValue();
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

    public static boolean a(View view, int i)
    {
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        c.set(view, Integer.valueOf(i));
        return true;
        Exception exception;
        exception;
        return false;
    }

    public static boolean b(View view, int i)
    {
        if (d == null)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        d.set(view, Integer.valueOf(i));
        return true;
        Exception exception;
        exception;
        return false;
    }

    static 
    {
        try
        {
            a = android/view/View.getMethod("isRootNamespace", new Class[0]);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            a = null;
        }
        try
        {
            Class aclass[] = new Class[1];
            aclass[0] = Boolean.TYPE;
            b = android/net/ConnectivityManager.getMethod("setBackgroundDataSetting", aclass);
        }
        catch (NoSuchMethodException nosuchmethodexception1)
        {
            b = null;
        }
        try
        {
            c = android/view/View.getDeclaredField("mScrollX");
            c.setAccessible(true);
            d = android/view/View.getDeclaredField("mScrollY");
            d.setAccessible(true);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            c = null;
            d = null;
        }
    }
}
