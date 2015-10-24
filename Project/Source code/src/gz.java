// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class gz
{

    public static boolean a;
    public static boolean b;
    public static boolean c;
    public static boolean d;

    public static String a(String s)
    {
        String s1;
        Class class1 = Class.forName("android.os.SystemProperties");
        s1 = (String)class1.getMethod("get", new Class[] {
            java/lang/String
        }).invoke(class1, new Object[] {
            s
        });
        return s1;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        if (a)
        {
            Log.w("DXBase.Helper", "getSystemProperty has ClassNotFoundException", classnotfoundexception);
        }
_L2:
        return "";
        SecurityException securityexception;
        securityexception;
        if (a)
        {
            Log.w("DXBase.Helper", "getSystemProperty has SecurityException", securityexception);
        }
        continue; /* Loop/switch isn't completed */
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        if (a)
        {
            Log.w("DXBase.Helper", "getSystemProperty has NoSuchMethodException", nosuchmethodexception);
        }
        continue; /* Loop/switch isn't completed */
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        if (a)
        {
            Log.w("DXBase.Helper", "getSystemProperty has IllegalArgumentException", illegalargumentexception);
        }
        continue; /* Loop/switch isn't completed */
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        if (a)
        {
            Log.w("DXBase.Helper", "getSystemProperty has IllegalAccessException", illegalaccessexception);
        }
        continue; /* Loop/switch isn't completed */
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        if (a)
        {
            Log.w("DXBase.Helper", "getSystemProperty has InvocationTargetException", invocationtargetexception);
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String b(String s)
    {
        BufferedReader bufferedreader = new BufferedReader(new FileReader(new File(s)));
        StringBuilder stringbuilder = new StringBuilder();
_L3:
        String s2 = bufferedreader.readLine();
        if (s2 == null) goto _L2; else goto _L1
_L1:
        stringbuilder.append(s2);
        stringbuilder.append("\n");
          goto _L3
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        BufferedReader bufferedreader1 = bufferedreader;
_L14:
        if (b)
        {
            Log.w("DXBase.Helper", (new StringBuilder()).append(s).append(" FileNotFoundException.").toString());
        }
        String s1;
        String s3;
        IOException ioexception4;
        if (bufferedreader1 != null)
        {
            try
            {
                bufferedreader1.close();
            }
            catch (IOException ioexception3)
            {
                if (b)
                {
                    Log.e("DXBase.Helper", "IOException.", ioexception3);
                }
            }
        }
_L7:
        s1 = "";
_L5:
        return s1;
_L2:
        s3 = stringbuilder.toString();
        s1 = s3;
        if (bufferedreader == null) goto _L5; else goto _L4
_L4:
        bufferedreader.close();
        return s1;
        ioexception4;
        if (!b) goto _L5; else goto _L6
_L6:
        Log.e("DXBase.Helper", "IOException.", ioexception4);
        return s1;
        IOException ioexception5;
        ioexception5;
        IOException ioexception;
        bufferedreader = null;
        ioexception = ioexception5;
_L12:
        if (b)
        {
            Log.e("DXBase.Helper", "IOException.", ioexception);
        }
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception2)
            {
                if (b)
                {
                    Log.e("DXBase.Helper", "IOException.", ioexception2);
                }
            }
        }
          goto _L7
        Exception exception2;
        exception2;
        Exception exception;
        bufferedreader = null;
        exception = exception2;
_L11:
        if (bufferedreader == null)
        {
            break MISSING_BLOCK_LABEL_245;
        }
        bufferedreader.close();
_L9:
        throw exception;
        IOException ioexception1;
        ioexception1;
        if (b)
        {
            Log.e("DXBase.Helper", "IOException.", ioexception1);
        }
        if (true) goto _L9; else goto _L8
_L8:
        exception;
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        bufferedreader = bufferedreader1;
        exception = exception1;
        if (true) goto _L11; else goto _L10
_L10:
        ioexception;
          goto _L12
        FileNotFoundException filenotfoundexception1;
        filenotfoundexception1;
        bufferedreader1 = null;
        if (true) goto _L14; else goto _L13
_L13:
    }

    static 
    {
        a = false;
        b = a;
        c = a;
        d = a;
    }
}
