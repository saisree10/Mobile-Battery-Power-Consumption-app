// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.lang.reflect.Method;

public final class ro extends rv
{

    private static Class b;
    private static Method c;
    private static boolean d = false;
    private Object a;

    public ro(Object obj)
    {
        a = obj;
    }

    public int a(int i)
    {
        Object obj = a;
        Method method = c;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i);
        return ((Integer)a(obj, method, aobj)).intValue();
    }

    protected void a()
    {
        b = Class.forName("com.android.internal.os.BatteryStatsImpl$Uid$Pkg");
        Class class1 = b;
        Class aclass[] = new Class[1];
        aclass[0] = Integer.TYPE;
        c = class1.getMethod("getWakeups", aclass);
    }

    protected void a(boolean flag)
    {
        d = flag;
    }

    protected boolean b()
    {
        return d;
    }

}
