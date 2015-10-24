// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.lang.reflect.Method;

public final class rr extends ry
{

    private static Class b;
    private static Method c;
    private static boolean d = false;
    private Object a;

    public rr(Object obj)
    {
        a = obj;
    }

    public rm a(int i)
    {
        Object obj = a;
        Method method = c;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i);
        Object obj1 = a(obj, method, aobj);
        if (obj1 == null)
        {
            return null;
        } else
        {
            return new rm(obj1);
        }
    }

    protected void a()
    {
        b = Class.forName("com.android.internal.os.BatteryStatsImpl$Uid$Wakelock");
        Class class1 = b;
        Class aclass[] = new Class[1];
        aclass[0] = Integer.TYPE;
        c = class1.getMethod("getWakeTime", aclass);
    }

    protected void a(boolean flag)
    {
        d = flag;
    }

    public rt b(int i)
    {
        return a(i);
    }

    protected boolean b()
    {
        return d;
    }

}
