// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class gx
{

    private static String a = "";

    public gx()
    {
    }

    public static String a(Context context)
    {
        boolean flag = true;
        if (!c(a) && !b(a)) goto _L2; else goto _L1
_L1:
        {
            String s = d(context);
            String s1 = e(context);
            if (!b(s))
            {
                break MISSING_BLOCK_LABEL_143;
            }
            boolean flag2;
            if (c(s1))
            {
                a = f(context);
                flag2 = flag;
            } else
            if (b(s1))
            {
                a = g(context);
                boolean flag1;
                Exception exception;
                Exception exception1;
                if (b(a))
                {
                    a = f(context);
                    flag2 = flag;
                } else
                {
                    flag2 = flag;
                }
            } else
            {
                a = s1;
                flag2 = flag;
                flag = false;
            }
        }
        if (!flag2) goto _L4; else goto _L3
_L3:
        gx;
        JVM INSTR monitorenter ;
        a(context, a);
        gx;
        JVM INSTR monitorexit ;
_L4:
        if (!flag) goto _L2; else goto _L5
_L5:
        gx;
        JVM INSTR monitorenter ;
        b(context, a);
        gx;
        JVM INSTR monitorexit ;
_L2:
        return a;
        a = s;
        flag1 = b(s1);
        flag2 = false;
        if (!flag1)
        {
            flag = false;
            flag2 = false;
        }
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_54;
        }
        exception1;
        gx;
        JVM INSTR monitorexit ;
        throw exception1;
        exception;
        gx;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static String a(String s)
    {
        String s1;
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(s.getBytes("UTF-8"));
        s1 = new String(bdi.a(messagedigest.digest()), "UTF-8");
        s = s1;
_L2:
        return s;
        NoSuchAlgorithmException nosuchalgorithmexception;
        nosuchalgorithmexception;
        if (gz.b)
        {
            Log.e("TokenManager", "Encoding#1 not found.", nosuchalgorithmexception);
            return s;
        }
        continue; /* Loop/switch isn't completed */
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        if (gz.b)
        {
            Log.e("TokenManager", "Encoding#2 not found.", unsupportedencodingexception);
            return s;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static boolean a(Context context, String s)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("utils", 2).edit();
        editor.putString("tm", s);
        return editor.commit();
    }

    public static String b(Context context)
    {
        String s = g(context);
        if (b(s))
        {
            s = a(context);
        }
        return s;
    }

    private static boolean b(Context context, String s)
    {
        android.content.ContentResolver contentresolver = context.getContentResolver();
        boolean flag2 = android.provider.Settings.System.putString(contentresolver, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC760}", s);
        boolean flag1 = flag2;
_L2:
        return flag1;
        Exception exception;
        exception;
        boolean flag = gz.b;
        flag1 = false;
        if (flag)
        {
            Log.e("TokenManager", "Writing settings error!!");
            return false;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static boolean b(String s)
    {
        return s == null || s.length() <= 5;
    }

    public static boolean c(Context context)
    {
        return d(context).equals(e(context));
    }

    private static boolean c(String s)
    {
        return TextUtils.isEmpty(s);
    }

    private static String d(Context context)
    {
        return context.getSharedPreferences("utils", 1).getString("tm", "");
    }

    private static String e(Context context)
    {
        return android.provider.Settings.System.getString(context.getContentResolver(), "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC760}");
    }

    private static String f(Context context)
    {
        String s = gy.m(context);
        String s1 = gy.c(context);
        String s2 = gy.b(context);
        String s3 = gy.a();
        String s4 = gy.b();
        long l = System.currentTimeMillis();
        return a((new StringBuilder()).append(s).append("_").append(s2).append("_").append(s1).append("_").append(l).append("_").append(s3).append("_").append(s4).toString());
    }

    private static String g(Context context)
    {
        String s = gy.m(context);
        String s1 = gy.n(context);
        String s2 = gy.a();
        if (!TextUtils.isEmpty(s1))
        {
            s1 = s1.replaceAll("\\s*ro.cdma.home.operator.alpha=", "cdma=");
        }
        boolean flag = true;
        if (TextUtils.isEmpty(s) || s.length() <= 12)
        {
            flag = false;
        }
        if (TextUtils.isEmpty(s1) || s1.length() <= 12)
        {
            flag = false;
        }
        String s3;
        if (TextUtils.isEmpty(s2) || s2.length() <= 32)
        {
            flag = false;
            s3 = s2;
        } else
        if (s2.length() > 128)
        {
            s3 = s2.substring(0, 128);
        } else
        {
            s3 = s2;
        }
        if (flag)
        {
            return a((new StringBuilder()).append(s).append("_").append(s1).append("_").append(s3).toString());
        } else
        {
            return "";
        }
    }

}
