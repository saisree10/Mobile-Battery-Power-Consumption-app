// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.lang.reflect.Method;

public class rm extends rt
{

    private static Class b;
    private static Method c;
    private static boolean d = false;
    private Object a;

    public rm(Object obj)
    {
        a = obj;
    }

    public long a(long l, int i)
    {
        Object obj = a;
        Method method = c;
        Object aobj[] = new Object[2];
        aobj[0] = Long.valueOf(l);
        aobj[1] = Integer.valueOf(i);
        return ((Long)a(obj, method, aobj)).longValue();
    }

    protected void a()
    {
        b = Class.forName("com.android.internal.os.BatteryStatsImpl$Timer");
        Class class1 = b;
        Class aclass[] = new Class[2];
        aclass[0] = Long.TYPE;
        aclass[1] = Integer.TYPE;
        c = class1.getMethod("getTotalTimeLocked", aclass);
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
