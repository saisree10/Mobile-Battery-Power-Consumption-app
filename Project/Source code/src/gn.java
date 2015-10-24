// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;
import java.lang.reflect.Method;

public class gn
{

    private static final boolean a;
    private static Method b;

    public static int a(String s, int i)
    {
        return zy.a(a(s, String.valueOf(i)), i);
    }

    public static String a(String s, String s1)
    {
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        String s2 = (String)b.invoke(null, new Object[] {
            s, s1
        });
        s1 = s2;
_L2:
        return s1;
        Exception exception;
        exception;
        if (a)
        {
            Log.w("SystemBuildPropCompat", (new StringBuilder()).append("Exception: ").append(exception).toString());
            return s1;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    static 
    {
        a = xy.a;
        try
        {
            b = Class.forName("android.os.SystemProperties", false, Thread.currentThread().getContextClassLoader()).getMethod("get", new Class[] {
                java/lang/String, java/lang/String
            });
        }
        catch (Exception exception)
        {
            if (a)
            {
                exception.printStackTrace();
            }
            b = null;
        }
    }
}
