// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcel;
import android.util.SparseArray;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public class rk extends rs
{

    public static final android.os.Parcelable.Creator a = new rl();
    private static Class c;
    private static Constructor d;
    private static Method e;
    private static Method f;
    private static Method g;
    private static Method h;
    private static Method i;
    private static Method j;
    private static Method k;
    private static Method l;
    private static Method m;
    private static boolean n = false;
    private Object b;

    public rk(Parcel parcel)
    {
        b = a(d, new Object[] {
            parcel
        });
    }

    public long a(long l1, int i1)
    {
        Object obj = b;
        Method method = f;
        Object aobj[] = new Object[2];
        aobj[0] = Long.valueOf(l1);
        aobj[1] = Integer.valueOf(i1);
        return ((Long)a(obj, method, aobj)).longValue();
    }

    protected void a()
    {
        c = Class.forName("com.android.internal.os.BatteryStatsImpl");
        d = c.getConstructor(new Class[] {
            android/os/Parcel
        });
        e = c.getMethod("getUidStats", new Class[0]);
        Class class1 = c;
        Class aclass[] = new Class[2];
        aclass[0] = Long.TYPE;
        aclass[1] = Integer.TYPE;
        f = class1.getMethod("computeBatteryRealtime", aclass);
        Class class2 = c;
        Class aclass1[] = new Class[2];
        aclass1[0] = Long.TYPE;
        aclass1[1] = Integer.TYPE;
        g = class2.getMethod("getScreenOnTime", aclass1);
        Class class3 = c;
        Class aclass2[] = new Class[3];
        aclass2[0] = Integer.TYPE;
        aclass2[1] = Long.TYPE;
        aclass2[2] = Integer.TYPE;
        h = class3.getMethod("getScreenBrightnessTime", aclass2);
        Class class4 = c;
        Class aclass3[] = new Class[2];
        aclass3[0] = Long.TYPE;
        aclass3[1] = Integer.TYPE;
        i = class4.getMethod("getPhoneOnTime", aclass3);
        Class class5 = c;
        Class aclass4[] = new Class[3];
        aclass4[0] = Integer.TYPE;
        aclass4[1] = Long.TYPE;
        aclass4[2] = Integer.TYPE;
        j = class5.getMethod("getPhoneSignalStrengthTime", aclass4);
        Class class6 = c;
        Class aclass5[] = new Class[2];
        aclass5[0] = Long.TYPE;
        aclass5[1] = Integer.TYPE;
        k = class6.getMethod("getPhoneSignalScanningTime", aclass5);
        Class class7 = c;
        Class aclass6[] = new Class[2];
        aclass6[0] = Integer.TYPE;
        aclass6[1] = Integer.TYPE;
        l = class7.getMethod("getPhoneSignalStrengthCount", aclass6);
        try
        {
            Class class8 = c;
            Class aclass7[] = new Class[1];
            aclass7[0] = Integer.TYPE;
            m = class8.getMethod("distributeWorkLocked", aclass7);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void a(int i1)
    {
        if (m != null)
        {
            Object obj = b;
            Method method = m;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i1);
            a(obj, method, aobj);
        }
    }

    protected void a(boolean flag)
    {
        n = flag;
    }

    protected boolean b()
    {
        return n;
    }

    public SparseArray c()
    {
        int i1 = 0;
        SparseArray sparsearray = (SparseArray)a(b, e, new Object[0]);
        SparseArray sparsearray1 = new SparseArray(sparsearray.size());
        for (int j1 = sparsearray.size(); i1 < j1; i1++)
        {
            sparsearray1.put(sparsearray.keyAt(i1), new rn(sparsearray.valueAt(i1)));
        }

        return sparsearray1;
    }

}
