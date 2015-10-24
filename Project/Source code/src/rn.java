// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class rn extends ru
{

    private static Class b;
    private static Method c;
    private static Method d;
    private static Method e;
    private static Method f;
    private static Method g;
    private static Method h;
    private static Method i;
    private static Method j;
    private static Method k;
    private static Method l;
    private static boolean m = false;
    private Object a;

    public rn(Object obj)
    {
        a = obj;
    }

    public long a(long l1, int i1)
    {
        Object obj = a;
        Method method = j;
        Object aobj[] = new Object[2];
        aobj[0] = Long.valueOf(l1);
        aobj[1] = Integer.valueOf(i1);
        return ((Long)a(obj, method, aobj)).longValue();
    }

    protected void a()
    {
        b = Class.forName("com.android.internal.os.BatteryStatsImpl$Uid");
        c = b.getMethod("getWakelockStats", new Class[0]);
        d = b.getMethod("getSensorStats", new Class[0]);
        e = b.getMethod("getProcessStats", new Class[0]);
        f = b.getMethod("getPackageStats", new Class[0]);
        g = b.getMethod("getUid", new Class[0]);
        Class class1 = b;
        Class aclass[] = new Class[1];
        aclass[0] = Integer.TYPE;
        h = class1.getMethod("getTcpBytesReceived", aclass);
        Class class2 = b;
        Class aclass1[] = new Class[1];
        aclass1[0] = Integer.TYPE;
        i = class2.getMethod("getTcpBytesSent", aclass1);
        Class class3 = b;
        Class aclass2[] = new Class[2];
        aclass2[0] = Long.TYPE;
        aclass2[1] = Integer.TYPE;
        j = class3.getMethod("getAudioTurnedOnTime", aclass2);
        Class class4 = b;
        Class aclass3[] = new Class[2];
        aclass3[0] = Long.TYPE;
        aclass3[1] = Integer.TYPE;
        k = class4.getMethod("getVideoTurnedOnTime", aclass3);
        try
        {
            Class class6 = b;
            Class aclass5[] = new Class[2];
            aclass5[0] = Long.TYPE;
            aclass5[1] = Integer.TYPE;
            l = class6.getMethod("getWifiRunningTime", aclass5);
            return;
        }
        catch (Exception exception)
        {
            Class class5 = b;
            Class aclass4[] = new Class[2];
            aclass4[0] = Long.TYPE;
            aclass4[1] = Integer.TYPE;
            l = class5.getMethod("getWifiTurnedOnTime", aclass4);
            return;
        }
    }

    protected void a(boolean flag)
    {
        m = flag;
    }

    public long b(long l1, int i1)
    {
        Object obj = a;
        Method method = k;
        Object aobj[] = new Object[2];
        aobj[0] = Long.valueOf(l1);
        aobj[1] = Integer.valueOf(i1);
        return ((Long)a(obj, method, aobj)).longValue();
    }

    protected boolean b()
    {
        return m;
    }

    public long c(long l1, int i1)
    {
        Object obj = a;
        Method method = l;
        Object aobj[] = new Object[2];
        aobj[0] = Long.valueOf(l1);
        aobj[1] = Integer.valueOf(i1);
        return ((Long)a(obj, method, aobj)).longValue();
    }

    public Map c()
    {
        Map map = (Map)a(a, c, new Object[0]);
        HashMap hashmap = new HashMap(map.size());
        String s;
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); hashmap.put(s, new rr(map.get(s))))
        {
            s = (String)iterator.next();
        }

        return hashmap;
    }

    public Map d()
    {
        Map map = (Map)a(a, d, new Object[0]);
        HashMap hashmap = new HashMap(map.size());
        Integer integer;
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); hashmap.put(integer, new rq(map.get(integer))))
        {
            integer = (Integer)iterator.next();
        }

        return hashmap;
    }

    public Map e()
    {
        Map map = (Map)a(a, e, new Object[0]);
        HashMap hashmap = new HashMap(map.size());
        String s;
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); hashmap.put(s, new rp(map.get(s))))
        {
            s = (String)iterator.next();
        }

        return hashmap;
    }

    public Map f()
    {
        Map map = (Map)a(a, f, new Object[0]);
        HashMap hashmap = new HashMap(map.size());
        String s;
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); hashmap.put(s, new ro(map.get(s))))
        {
            s = (String)iterator.next();
        }

        return hashmap;
    }

    public int g()
    {
        return ((Integer)a(a, g, new Object[0])).intValue();
    }

}
