// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class gk
{

    private static Class a;
    private static Class b;
    private static Method c;
    private static Constructor d;
    private static Constructor e;
    private static Field f;
    private static Field g;
    private static Class h;
    private static Class i;
    private static Class j;
    private static Field k;
    private static Method l;

    public static int a(Object obj)
    {
        if (f == null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        int i1 = ((Integer)f.get(obj)).intValue();
        return i1;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        illegalaccessexception.printStackTrace();
        return -1;
    }

    public static int a(String s)
    {
        if (g != null)
        {
            Object aobj[] = new Object[1];
            aobj[0] = a();
            if (a(s, aobj))
            {
                return b(aobj[0]);
            }
        }
        return -1;
    }

    public static Object a()
    {
        if (e == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        Object obj = e.newInstance(new Object[0]);
        return obj;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
_L2:
        return null;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        continue; /* Loop/switch isn't completed */
        InstantiationException instantiationexception;
        instantiationexception;
        continue; /* Loop/switch isn't completed */
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static boolean a(Object obj, Object aobj[])
    {
        if (aobj == null || aobj.length != 1)
        {
            return false;
        }
        if (c == null || aobj[0] == null) goto _L2; else goto _L1
_L1:
        boolean flag;
        Method method = c;
        Object aobj1[] = new Object[2];
        aobj1[0] = obj;
        aobj1[1] = aobj[0];
        flag = ((Boolean)method.invoke(a, aobj1)).booleanValue();
        return flag;
        IllegalAccessException illegalaccessexception1;
        illegalaccessexception1;
        illegalaccessexception1.printStackTrace();
_L4:
        return false;
        InvocationTargetException invocationtargetexception1;
        invocationtargetexception1;
        invocationtargetexception1.printStackTrace();
        continue; /* Loop/switch isn't completed */
_L2:
        if (l == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        Object obj1 = k.get(h);
        aobj[0] = l.invoke(obj1, new Object[] {
            obj
        });
        return true;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        illegalaccessexception.printStackTrace();
        continue; /* Loop/switch isn't completed */
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        invocationtargetexception.printStackTrace();
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static int b(Object obj)
    {
        if (g == null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        int i1 = ((Integer)g.get(obj)).intValue();
        return i1;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        illegalaccessexception.printStackTrace();
        return -1;
    }

    static 
    {
        NoSuchFieldException nosuchfieldexception;
        NoSuchMethodException nosuchmethodexception;
        ClassNotFoundException classnotfoundexception1;
        try
        {
            a = Class.forName("android.os.FileUtils", false, Thread.currentThread().getContextClassLoader());
            b = Class.forName("android.os.FileUtils$FileStatus", false, Thread.currentThread().getContextClassLoader());
            Class class1 = a;
            Class aclass[] = new Class[2];
            aclass[0] = java/lang/String;
            aclass[1] = b;
            c = class1.getMethod("getFileStatus", aclass);
            d = a.getConstructor(new Class[0]);
            e = b.getConstructor(new Class[0]);
            f = b.getField("uid");
            g = b.getField("mode");
        }
        catch (ClassNotFoundException classnotfoundexception) { }
        catch (NoSuchMethodException nosuchmethodexception1) { }
        catch (NoSuchFieldException nosuchfieldexception1) { }
        if (b != null)
        {
            break MISSING_BLOCK_LABEL_218;
        }
        h = Class.forName("libcore.io.Libcore", false, Thread.currentThread().getContextClassLoader());
        i = Class.forName("libcore.io.Os", false, Thread.currentThread().getContextClassLoader());
        j = Class.forName("libcore.io.StructStat", false, Thread.currentThread().getContextClassLoader());
        k = h.getField("os");
        l = i.getMethod("stat", new Class[] {
            java/lang/String
        });
        f = j.getField("st_uid");
        g = j.getField("st_mode");
        return;
        classnotfoundexception1;
        classnotfoundexception1.printStackTrace();
        return;
        nosuchmethodexception;
        nosuchmethodexception.printStackTrace();
        return;
        nosuchfieldexception;
        nosuchfieldexception.printStackTrace();
        return;
    }
}
