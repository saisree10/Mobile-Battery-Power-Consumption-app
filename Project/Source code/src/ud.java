// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public class ud
{

    public static boolean a = false;
    public static boolean b;
    public static boolean c;
    public static boolean d;

    public static long a(Context context, String s)
    {
        return context.getSharedPreferences("rt", 0).getLong(s, 0L);
    }

    public static String a(String s)
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
        if (d)
        {
            Log.e("stat.CommonUtils", "Encoding#1 not found.", nosuchalgorithmexception);
            return s;
        }
        continue; /* Loop/switch isn't completed */
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        if (d)
        {
            Log.e("stat.CommonUtils", "Encoding#2 not found.", unsupportedencodingexception);
            return s;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String a(String s, Context context)
    {
        ArrayList arraylist = new ArrayList();
        String s1 = gx.a(context);
        String s2 = te.a(s1, tg.b());
        if ("data".equals(s))
        {
            a("token", s2, ((List) (arraylist)));
        }
        a("tk", s1, ((List) (arraylist)));
        a("sv", rz.a(), ((List) (arraylist)));
        String s3 = (new StringBuilder()).append("?").append(URLEncodedUtils.format(arraylist, "UTF-8")).toString();
        if ("feedback".equals(s))
        {
            if (a)
            {
                return (new StringBuilder()).append("http://t1.tira.cn:8125/feedback").append(s3).toString();
            } else
            {
                return (new StringBuilder()).append("http://pasta.dianxinos.com/feedback").append(s3).toString();
            }
        }
        if ("appInfo".equals(s))
        {
            if (a)
            {
                return (new StringBuilder()).append("http://t1.tira.cn:8125/api/tokens").append(s3).toString();
            } else
            {
                return (new StringBuilder()).append("http://pasta.dianxinos.com/api/tokens").append(s3).toString();
            }
        }
        if ("data".equals(s))
        {
            if (a)
            {
                return (new StringBuilder()).append("http://t1.tira.cn:8125/api/data").append(s3).toString();
            } else
            {
                return (new StringBuilder()).append("http://pasta.dianxinos.com/api/data").append(s3).toString();
            }
        }
        if ("token".equals(s))
        {
            if (a)
            {
                return (new StringBuilder()).append("http://t1.tira.cn:8125/api/tokens").append(s3).toString();
            } else
            {
                return (new StringBuilder()).append("http://pasta.dianxinos.com/api/tokens").append(s3).toString();
            }
        } else
        {
            return "";
        }
    }

    public static String a(Date date)
    {
        return (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(date);
    }

    public static JSONObject a(String s, Number number)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put(s, number);
        }
        catch (JSONException jsonexception)
        {
            return jsonobject;
        }
        return jsonobject;
    }

    public static void a(android.content.SharedPreferences.Editor editor)
    {
        if (editor == null)
        {
            break MISSING_BLOCK_LABEL_11;
        }
        editor.commit();
        return;
        Exception exception;
        exception;
    }

    private static void a(String s, String s1, List list)
    {
        if (!TextUtils.isEmpty(s1))
        {
            list.add(new BasicNameValuePair(s, s1));
        }
    }

    public static boolean a(Context context)
    {
        ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        if (connectivitymanager == null)
        {
            return false;
        }
        NetworkInfo networkinfo = connectivitymanager.getActiveNetworkInfo();
        boolean flag;
        if (networkinfo != null && networkinfo.isConnected())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    public static boolean a(Context context, int i)
    {
        ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        if (connectivitymanager == null)
        {
            return false;
        }
        NetworkInfo networkinfo = connectivitymanager.getActiveNetworkInfo();
        boolean flag;
        if (networkinfo != null && networkinfo.getType() == i && networkinfo.isConnectedOrConnecting())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    public static void b(Context context, String s)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("rt", 0).edit();
        editor.putLong(s, System.currentTimeMillis());
        editor.commit();
    }

    public static boolean b(Context context)
    {
        android.content.ContentResolver contentresolver;
        String s;
        String s1;
        String s2;
        Iterator iterator;
        contentresolver = context.getContentResolver();
        PackageManager packagemanager = context.getPackageManager();
        s = android.provider.Settings.System.getString(contentresolver, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC76WR}");
        s1 = context.getPackageName();
        List list = packagemanager.getInstalledApplications(0);
        s2 = null;
        iterator = list.iterator();
_L1:
        boolean flag;
        boolean flag1;
        String s3;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_213;
        }
        s3 = ((ApplicationInfo)iterator.next()).packageName;
        if ("com.dianxinos.dxservice".equals(s3))
        {
            flag = true;
            flag1 = false;
        } else
        {
label0:
            {
                if (!s3.equals(s))
                {
                    break label0;
                }
                flag1 = true;
                flag = false;
            }
        }
_L2:
        if (flag1)
        {
            if (s1.equals(s))
            {
                return true;
            }
        } else
        if (flag)
        {
            if (s1.equals("com.dianxinos.dxservice"))
            {
                android.provider.Settings.System.putString(contentresolver, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC76WR}", s1);
                return true;
            }
        } else
        if (s2 == null || s1.equals(s2))
        {
            android.provider.Settings.System.putString(contentresolver, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC76WR}", s1);
            return true;
        }
        break MISSING_BLOCK_LABEL_204;
        if (!b(s3) || s2 != null && s2.compareTo(s3) <= 0)
        {
            s3 = s2;
        }
        s2 = s3;
          goto _L1
        return false;
        flag = false;
        flag1 = false;
          goto _L2
    }

    private static boolean b(String s)
    {
        String as[] = s.split("\\.");
        return as.length > 1 && as[1].equals("dianxinos");
    }

    public static void c(Context context)
    {
        android.provider.Settings.System.putString(context.getContentResolver(), "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC76WR}", "");
    }

    static 
    {
        b = false;
        c = b;
        d = c;
    }
}
