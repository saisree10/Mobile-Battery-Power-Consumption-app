// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.lang.reflect.Method;

public final class rp extends rw
{

    private static Class b;
    private static Method c;
    private static Method d;
    private static Method e;
    private static Method f;
    private static boolean g = false;
    private Object a;

    public rp(Object obj)
    {
        a = obj;
    }

    public long a(int i)
    {
        Object obj = a;
        Method method = c;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i);
        return ((Long)a(obj, method, aobj)).longValue();
    }

    protected void a()
    {
        b = Class.forName("com.android.internal.os.BatteryStatsImpl$Uid$Proc");
        Class class1 = b;
        Class aclass[] = new Class[1];
        aclass[0] = Integer.TYPE;
        c = class1.getMethod("getUserTime", aclass);
        Class class2 = b;
        Class aclass1[] = new Class[1];
        aclass1[0] = Integer.TYPE;
        d = class2.getMethod("getSystemTime", aclass1);
        Class class3 = b;
        Class aclass2[] = new Class[1];
        aclass2[0] = Integer.TYPE;
        e = class3.getMethod("getForegroundTime", aclass2);
        Class class4 = b;
        Class aclass3[] = new Class[2];
        aclass3[0] = Integer.TYPE;
        aclass3[1] = Integer.TYPE;
        f = class4.getMethod("getTimeAtCpuSpeedStep", aclass3);
    }

    protected void a(boolean flag)
    {
        g = flag;
    }

    public long b(int i)
    {
        Object obj = a;
        Method method = d;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i);
        return ((Long)a(obj, method, aobj)).longValue();
    }

    protected boolean b()
    {
        return g;
    }

}
