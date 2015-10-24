// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.StatFs;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class bcl
{

    private static final Method a;
    private static final Method b;
    private static final Method c;
    private static final Method d;
    private static final String e = bcl.getName();
    private StatFs f;

    public bcl(String s)
    {
        f = new StatFs(s);
    }

    public long a()
    {
        long l = 0L;
        if (b == null) goto _L2; else goto _L1
_L1:
        long l2 = ((Long)b.invoke(f, new Object[0])).longValue();
        long l1;
        boolean flag1;
        l1 = l2;
        flag1 = false;
_L5:
        if (flag1) goto _L4; else goto _L3
_L3:
        l = l1;
_L7:
        return l;
        ClassCastException classcastexception1;
        classcastexception1;
        Log.e(e, "getBlockSizeLong invoke failed: ", classcastexception1);
        l1 = l;
        flag1 = true;
          goto _L5
        IllegalAccessException illegalaccessexception1;
        illegalaccessexception1;
        Log.e(e, "getBlockSizeLong invoke failed: ", illegalaccessexception1);
        l1 = l;
        flag1 = true;
          goto _L5
        IllegalArgumentException illegalargumentexception1;
        illegalargumentexception1;
        Log.e(e, "getBlockSizeLong invoke failed: ", illegalargumentexception1);
        l1 = l;
        flag1 = true;
          goto _L5
        InvocationTargetException invocationtargetexception1;
        invocationtargetexception1;
        Log.e(e, "getBlockSizeLong invoke failed: ", invocationtargetexception1);
        l1 = l;
        flag1 = true;
          goto _L5
_L4:
        l = l1;
_L2:
        if (a == null) goto _L7; else goto _L6
_L6:
        int i = ((Integer)a.invoke(f, new Object[0])).intValue();
        boolean flag;
        l = i;
        flag = false;
_L8:
        if (!flag)
        {
            return l;
        }
          goto _L7
        ClassCastException classcastexception;
        classcastexception;
        Log.e(e, "getBlockSize invoke failed: ", classcastexception);
        flag = true;
          goto _L8
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        Log.e(e, "getBlockSize invoke failed: ", illegalaccessexception);
        flag = true;
          goto _L8
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        Log.e(e, "getBlockSize invoke failed: ", illegalargumentexception);
        flag = true;
          goto _L8
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        Log.e(e, "getBlockSize invoke failed: ", invocationtargetexception);
        flag = true;
          goto _L8
    }

    public long b()
    {
        long l = 0L;
        if (d == null) goto _L2; else goto _L1
_L1:
        long l2 = ((Long)d.invoke(f, new Object[0])).longValue();
        long l1;
        boolean flag1;
        l1 = l2;
        flag1 = false;
_L5:
        if (flag1) goto _L4; else goto _L3
_L3:
        l = l1;
_L7:
        return l;
        ClassCastException classcastexception1;
        classcastexception1;
        Log.e(e, "getAvailableBlocksLong invoke failed: ", classcastexception1);
        l1 = l;
        flag1 = true;
          goto _L5
        IllegalAccessException illegalaccessexception1;
        illegalaccessexception1;
        Log.e(e, "getAvailableBlocksLong invoke failed: ", illegalaccessexception1);
        l1 = l;
        flag1 = true;
          goto _L5
        IllegalArgumentException illegalargumentexception1;
        illegalargumentexception1;
        Log.e(e, "getAvailableBlocksLong invoke failed: ", illegalargumentexception1);
        l1 = l;
        flag1 = true;
          goto _L5
        InvocationTargetException invocationtargetexception1;
        invocationtargetexception1;
        Log.e(e, "getAvailableBlocksLong invoke failed: ", invocationtargetexception1);
        l1 = l;
        flag1 = true;
          goto _L5
_L4:
        l = l1;
_L2:
        if (c == null) goto _L7; else goto _L6
_L6:
        int i = ((Integer)c.invoke(f, new Object[0])).intValue();
        boolean flag;
        l = i;
        flag = false;
_L8:
        if (!flag)
        {
            return l;
        }
          goto _L7
        ClassCastException classcastexception;
        classcastexception;
        Log.e(e, "getAvailableBlocks invoke failed: ", classcastexception);
        flag = true;
          goto _L8
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        Log.e(e, "getAvailableBlocks invoke failed: ", illegalaccessexception);
        flag = true;
          goto _L8
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        Log.e(e, "getAvailableBlocks invoke failed: ", illegalargumentexception);
        flag = true;
          goto _L8
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        Log.e(e, "getAvailableBlocks invoke failed: ", invocationtargetexception);
        flag = true;
          goto _L8
    }

    static 
    {
        Method method7 = android/os/StatFs.getMethod("getBlockSize", new Class[0]);
        Method method = method7;
_L1:
        a = method;
        Method method6 = android/os/StatFs.getMethod("getBlockSizeLong", new Class[0]);
        Method method1 = method6;
_L2:
        b = method1;
        Method method5 = android/os/StatFs.getMethod("getAvailableBlocks", new Class[0]);
        Method method2 = method5;
_L3:
        c = method2;
        Method method4 = android/os/StatFs.getMethod("getAvailableBlocksLong", new Class[0]);
        Method method3 = method4;
_L4:
        d = method3;
        return;
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        method = null;
          goto _L1
        NoSuchMethodException nosuchmethodexception1;
        nosuchmethodexception1;
        method1 = null;
          goto _L2
        NoSuchMethodException nosuchmethodexception2;
        nosuchmethodexception2;
        method2 = null;
          goto _L3
        NoSuchMethodException nosuchmethodexception3;
        nosuchmethodexception3;
        method3 = null;
          goto _L4
    }
}
