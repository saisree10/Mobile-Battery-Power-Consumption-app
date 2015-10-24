// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.HttpHost;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;

public class kj
{

    private static final boolean a;
    private static final Logger b = Logger.getLogger(kj.getName());
    private static Integer c = null;
    private static Long d = null;
    private static String e = null;

    public kj()
    {
    }

    public static int a(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo == null)
        {
            return -1;
        } else
        {
            return networkinfo.getType();
        }
    }

    public static Object a(String s, Class class1)
    {
        Class class2;
        java.lang.reflect.Type atype[];
        class2 = Class.forName(s);
        if (a)
        {
            b.info((new StringBuilder()).append("Retrieve target class:").append(class2).toString());
        }
        atype = class2.getGenericInterfaces();
        int i = 0;
_L10:
        if (i >= atype.length) goto _L2; else goto _L1
_L1:
        java.lang.reflect.Type type1 = atype[i];
        if (!class1.equals(type1)) goto _L4; else goto _L3
_L3:
        if (a)
        {
            b.info((new StringBuilder()).append("Get target interface:").append(type1).toString());
        }
        Object obj;
        obj = class2.newInstance();
        if (a)
        {
            b.info((new StringBuilder()).append("Target class instantiated:").append(obj).toString());
        }
_L8:
        return obj;
        IllegalAccessException illegalaccessexception1;
        illegalaccessexception1;
        illegalaccessexception1.printStackTrace();
        break MISSING_BLOCK_LABEL_317;
        InstantiationException instantiationexception1;
        instantiationexception1;
        ClassNotFoundException classnotfoundexception;
        instantiationexception1.printStackTrace();
        break MISSING_BLOCK_LABEL_317;
_L6:
        b.warning((new StringBuilder()).append("Class ").append(s).append(" not an instance of ").append(class1).toString());
        return null;
_L4:
        i++;
        continue; /* Loop/switch isn't completed */
_L2:
        java.lang.reflect.Type type = class2.getGenericSuperclass();
        if (!class1.equals(type)) goto _L6; else goto _L5
_L5:
        if (a)
        {
            b.info((new StringBuilder()).append("Get target class:").append(type).toString());
        }
        obj = class2.newInstance();
        if (!a) goto _L8; else goto _L7
_L7:
        b.info((new StringBuilder()).append("Target interface instantiated:").append(obj).toString());
        return obj;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        try
        {
            illegalaccessexception.printStackTrace();
        }
        // Misplaced declaration of an exception variable
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
        }
          goto _L6
        InstantiationException instantiationexception;
        instantiationexception;
        instantiationexception.printStackTrace();
          goto _L6
        return null;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public static DefaultHttpClient a(jy jy1)
    {
label0:
        {
label1:
            {
                DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
                defaulthttpclient.getParams().setParameter("http.connection.timeout", Integer.valueOf(60000));
                if (jy1 != null)
                {
                    jx jx1 = jy1.a();
                    int i;
                    String s;
                    String s1;
                    String s2;
                    HttpHost httphost;
                    if (jx1 != null)
                    {
                        s2 = jx1.a;
                        i = jx1.b;
                        s1 = jx1.c;
                        s = jx1.d;
                    } else
                    {
                        i = -1;
                        s = null;
                        s1 = null;
                        s2 = null;
                    }
                    if (TextUtils.isEmpty(s2) || i <= 0)
                    {
                        break label0;
                    }
                    if (a)
                    {
                        b.info((new StringBuilder()).append("connecting with proxy, addr:").append(s2).append(", port:").append(i).toString());
                    }
                    httphost = new HttpHost(s2, i, "http");
                    defaulthttpclient.getParams().setParameter("http.route.default-proxy", httphost);
                    if (TextUtils.isEmpty(s1) || TextUtils.isEmpty(s))
                    {
                        break label1;
                    }
                    if (!a);
                    defaulthttpclient.getCredentialsProvider().setCredentials(new AuthScope(s2, i), new UsernamePasswordCredentials(s1, s));
                }
                return defaulthttpclient;
            }
            defaulthttpclient.getCredentialsProvider().clear();
            return defaulthttpclient;
        }
        defaulthttpclient.getParams().setParameter("http.route.default-proxy", null);
        defaulthttpclient.getCredentialsProvider().clear();
        return defaulthttpclient;
    }

    public static boolean a(ConnectivityManager connectivitymanager)
    {
        NetworkInfo networkinfo = connectivitymanager.getActiveNetworkInfo();
        int i = -1;
        if (networkinfo != null)
        {
            i = networkinfo.getType();
        }
        return 1 == i;
    }

    public static boolean a(String s)
    {
        if (s == null || s.length() == 0)
        {
            return false;
        } else
        {
            return jn.a.matcher(s).matches();
        }
    }

    public static boolean a(Thread thread)
    {
        while (thread == null || Thread.State.TERMINATED.equals(thread.getState()) || Thread.State.NEW.equals(thread.getState())) 
        {
            return false;
        }
        return true;
    }

    public static int b(Context context)
    {
        if (c == null)
        {
            PackageManager packagemanager = context.getPackageManager();
            try
            {
                c = Integer.valueOf(packagemanager.getPackageInfo(context.getPackageName(), 0).versionCode);
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
            {
                c = Integer.valueOf(-1);
            }
        }
        return c.intValue();
    }

    public static long c(Context context)
    {
        if (d == null)
        {
            PackageManager packagemanager = context.getPackageManager();
            try
            {
                d = Long.valueOf(jm.a(packagemanager.getPackageInfo(context.getPackageName(), 0)));
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
            {
                d = Long.valueOf(-1L);
            }
        }
        return d.longValue();
    }

    public static String d(Context context)
    {
        if (e == null)
        {
            e = context.getPackageManager().getInstallerPackageName(context.getPackageName());
            if (e == null)
            {
                e = "";
            }
        }
        return e;
    }

    public static boolean e(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo == null)
        {
            return false;
        }
        boolean flag;
        if (networkinfo.isConnected() && networkinfo.isAvailable())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    static 
    {
        a = it.a;
    }
}
