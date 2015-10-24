// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.lang.reflect.Method;

public final class rq extends rx
{

    private static Class b;
    private static Method c;
    private static Method d;
    private static boolean e = false;
    private Object a;

    public rq(Object obj)
    {
        a = obj;
    }

    protected void a()
    {
        b = Class.forName("com.android.internal.os.BatteryStatsImpl$Uid$Sensor");
        c = b.getMethod("getHandle", new Class[0]);
        d = b.getMethod("getSensorTime", new Class[0]);
    }

    protected void a(boolean flag)
    {
        e = flag;
    }

    protected boolean b()
    {
        return e;
    }

    public int c()
    {
        return ((Integer)a(a, c, new Object[0])).intValue();
    }

    public rm d()
    {
        return new rm(a(a, d, new Object[0]));
    }

    public rt e()
    {
        return d();
    }

}
