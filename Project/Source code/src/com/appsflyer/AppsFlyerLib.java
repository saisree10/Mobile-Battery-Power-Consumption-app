// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.appsflyer;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Log;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.appsflyer:
//            AppsFlyerProperties, DebugLogQueue, Installation

public class AppsFlyerLib extends BroadcastReceiver
{

    public static final Uri a = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");

    public AppsFlyerLib()
    {
    }

    public static String a()
    {
        return a("AppUserId");
    }

    public static String a(ContentResolver contentresolver)
    {
        String as[] = {
            "aid"
        };
        Cursor cursor = contentresolver.query(a, as, null, null, null);
        if (cursor == null || !cursor.moveToFirst())
        {
            return null;
        } else
        {
            return cursor.getString(cursor.getColumnIndex("aid"));
        }
    }

    private static String a(Context context)
    {
        ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        if (connectivitymanager.getNetworkInfo(1).isConnectedOrConnecting())
        {
            return "WIFI";
        }
        if (connectivitymanager.getNetworkInfo(0).isConnectedOrConnecting())
        {
            return "MOBILE";
        } else
        {
            return "unkown";
        }
    }

    public static String a(String s)
    {
        return AppsFlyerProperties.a().a(s);
    }

    public static void a(Context context, String s)
    {
        a(context, s, null, null);
    }

    public static void a(Context context, String s, String s1, String s2)
    {
        b(context, s, s1, s2, context.getSharedPreferences("appsflyer-data", 0).getString("referrer", ""));
    }

    static void a(Context context, String s, String s1, String s2, String s3)
    {
        c(context, s, s1, s2, s3);
    }

    public static void a(String s, String s1)
    {
        AppsFlyerProperties.a().a(s, s1);
    }

    static void a(String s, String s1, Context context)
    {
        b(s, s1, context);
    }

    private static void b(Context context, String s, String s1, String s2, String s3)
    {
        Executors.newScheduledThreadPool(1).schedule(new DataCollector(context, s, s1, s2, s3, null), 5L, TimeUnit.MILLISECONDS);
    }

    public static void b(String s)
    {
        a("AppUserId", s);
    }

    private static void b(String s, String s1, Context context)
    {
        if (context != null && "com.appsflyer".equals(context.getPackageName()))
        {
            DebugLogQueue.a().a((new StringBuilder()).append(s).append(s1).toString());
        }
    }

    private static void c(Context context, String s, String s1, String s2, String s3)
    {
        StringBuilder stringbuilder;
        HashMap hashmap;
        String s4;
        String s5;
        String s6;
        String s7;
        Exception exception2;
        SimpleDateFormat simpledateformat;
        int i;
        File file;
        PackageInfo packageinfo;
        long l;
        long l1;
        String s8;
        TelephonyManager telephonymanager;
        String s9;
        String s10;
        String s11;
        try
        {
            b("collect data for server", "", context);
            stringbuilder = new StringBuilder();
            stringbuilder.append("https://track.appsflyer.com/api/v2.2/androidevent?buildnumber=1.3.16.0&app_id=").append(context.getPackageName());
            hashmap = new HashMap();
            hashmap.put("brand", Build.BRAND);
            hashmap.put("device", Build.DEVICE);
            hashmap.put("product", Build.PRODUCT);
            hashmap.put("sdk", Integer.toString(android.os.Build.VERSION.SDK_INT));
            hashmap.put("model", Build.MODEL);
            hashmap.put("deviceType", Build.TYPE);
        }
        catch (Throwable throwable)
        {
            Log.e("AppsFlyer", "", throwable);
            return;
        }
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_132;
        }
        s = a("AppsFlyerKey");
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_147;
        }
        hashmap.put("appsflyerKey", s);
        s4 = a();
        if (s4 == null)
        {
            break MISSING_BLOCK_LABEL_169;
        }
        hashmap.put("appUserId", s4);
        if (s1 == null || s2 == null)
        {
            break MISSING_BLOCK_LABEL_199;
        }
        hashmap.put("eventName", s1);
        hashmap.put("eventValue", s2);
        if (a("appid") != null)
        {
            hashmap.put("appid", a("appid"));
        }
        s5 = a("currencyCode");
        if (s5 == null)
        {
            break MISSING_BLOCK_LABEL_288;
        }
        if (s5.length() != 3)
        {
            Log.w("AppsFlyer", (new StringBuilder()).append("Appsflyer WARNING: currency code should be 3 characters!!! '").append(s5).append("' is not a legal value.").toString());
        }
        hashmap.put("currency", s5);
        s6 = a("IS_UPDATE");
        if (s6 == null)
        {
            break MISSING_BLOCK_LABEL_314;
        }
        hashmap.put("isUpdate", s6);
        s7 = a(context.getContentResolver());
        if (s7 == null)
        {
            break MISSING_BLOCK_LABEL_341;
        }
        hashmap.put("fb", s7);
        s11 = ((TelephonyManager)context.getSystemService("phone")).getDeviceId();
        if (s11 == null)
        {
            break MISSING_BLOCK_LABEL_374;
        }
        try
        {
            hashmap.put("imei", s11);
        }
        catch (Exception exception) { }
        s10 = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (s10 == null)
        {
            break MISSING_BLOCK_LABEL_404;
        }
        try
        {
            hashmap.put("android_id", s10);
        }
        catch (Exception exception1) { }
        s9 = Installation.a(context);
        if (s9 == null)
        {
            break MISSING_BLOCK_LABEL_428;
        }
        hashmap.put("uid", s9);
_L1:
        Exception exception5;
        Exception exception6;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        NoSuchFieldError nosuchfielderror;
        Exception exception7;
        try
        {
            hashmap.put("lang", Locale.getDefault().getDisplayLanguage());
        }
        catch (Exception exception3) { }
        try
        {
            telephonymanager = (TelephonyManager)context.getSystemService("phone");
            hashmap.put("operator", telephonymanager.getSimOperatorName());
            hashmap.put("carrier", telephonymanager.getNetworkOperatorName());
        }
        catch (Exception exception4) { }
        hashmap.put("network", a(context));
_L2:
        s8 = ((WifiManager)context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        if (s8 == null)
        {
            break MISSING_BLOCK_LABEL_540;
        }
        try
        {
            hashmap.put("mac", s8);
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception6) { }
        simpledateformat = new SimpleDateFormat("yyyy-MM-dd_hhmmZ");
        i = android.os.Build.VERSION.SDK_INT;
        if (i < 9)
        {
            break MISSING_BLOCK_LABEL_602;
        }
        try
        {
            hashmap.put("installDate", simpledateformat.format(new Date(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime)));
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception7) { }
        try
        {
            packageinfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            hashmap.put("app_version_code", Integer.toString(packageinfo.versionCode));
            hashmap.put("app_version_name", packageinfo.versionName);
            l = packageinfo.firstInstallTime;
            l1 = packageinfo.lastUpdateTime;
            hashmap.put("date1", simpledateformat.format(new Date(l)));
            hashmap.put("date2", simpledateformat.format(new Date(l1)));
        }
        // Misplaced declaration of an exception variable
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception) { }
        // Misplaced declaration of an exception variable
        catch (NoSuchFieldError nosuchfielderror) { }
        file = context.getFilesDir();
        (new SimpleDateFormat("dd-MM-yyyy_hhmmZ")).format(new Date(file.lastModified()));
        if (s3.length() > 0)
        {
            hashmap.put("referrer", s3);
        }
        Executors.newScheduledThreadPool(1).schedule(new SendToServerRunnable(stringbuilder.toString(), hashmap, context.getApplicationContext(), null), 5000L, TimeUnit.MILLISECONDS);
        return;
        exception2;
        Log.i("AppsFlyer", (new StringBuilder()).append("could not get uid ").append(exception2.getMessage()).toString());
          goto _L1
        exception5;
        Log.i("AppsFlyer", (new StringBuilder()).append("checking network error ").append(exception5.getMessage()).toString());
          goto _L2
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getStringExtra("referrer");
        Log.i("AppsFlyer", (new StringBuilder()).append("referrer=").append(s).toString());
        if (s != null)
        {
            b("onRecieve called. refferer=", s, context);
            android.content.SharedPreferences.Editor editor = context.getSharedPreferences("appsflyer-data", 0).edit();
            editor.putString("referrer", s);
            editor.commit();
            c(context, "", null, null, s);
        }
    }


    private class DataCollector
        implements Runnable
    {

        private Context a;
        private String b;
        private String c;
        private String d;
        private String e;

        public void run()
        {
            AppsFlyerLib.a(a, b, c, d, e);
        }

        private DataCollector(Context context, String s, String s1, String s2, String s3)
        {
            a = context;
            b = s;
            c = s1;
            d = s2;
            e = s3;
        }

        DataCollector(Context context, String s, String s1, String s2, String s3, _cls1 _pcls1)
        {
            this(context, s, s1, s2, s3);
        }
    }


    private class SendToServerRunnable
        implements Runnable
    {

        Map a;
        private String b;
        private WeakReference c;

        private void a(URL url, String s)
        {
            Context context = (Context)c.get();
            HttpURLConnection httpurlconnection = (HttpURLConnection)url.openConnection();
            httpurlconnection.setRequestMethod("POST");
            int i = s.getBytes().length;
            httpurlconnection.setRequestProperty("Content-Length", (new StringBuilder()).append(i).append("").toString());
            httpurlconnection.setDoOutput(true);
            OutputStreamWriter outputstreamwriter = new OutputStreamWriter(httpurlconnection.getOutputStream());
            outputstreamwriter.write(s);
            outputstreamwriter.close();
            Log.i("AppsFlyer", (new StringBuilder()).append("response code: ").append(httpurlconnection.getResponseCode()).toString());
            AppsFlyerLib.a("response from server. status=", Integer.toString(httpurlconnection.getResponseCode()), context);
            if (httpurlconnection.getResponseCode() == 200 && c.get() != null)
            {
                SharedPreferences sharedpreferences = context.getSharedPreferences("appsflyer-data", 0);
                android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                editor.putString("sentSuccessfully", "true");
                editor.putInt("appsFlyerCount", 1 + sharedpreferences.getInt("appsFlyerCount", 1));
                editor.commit();
            }
        }

        public void run()
        {
            boolean flag;
            Context context;
            boolean flag1;
            StringBuffer stringbuffer;
            String s3;
            String s4;
            flag = true;
            SharedPreferences sharedpreferences;
            String s;
            Map map;
            Iterator iterator;
            String s2;
            try
            {
                context = (Context)c.get();
            }
            catch (Throwable throwable)
            {
                Log.e("AppsFlyer", "", throwable);
                return;
            }
            if (context == null)
            {
                break MISSING_BLOCK_LABEL_424;
            }
            sharedpreferences = context.getSharedPreferences("appsflyer-data", 0);
            s = sharedpreferences.getString("referrer", "");
            if (s == null)
            {
                break MISSING_BLOCK_LABEL_83;
            }
            if (s.length() > 0 && a.get("referrer") == null)
            {
                a.put("referrer", s);
            }
            flag1 = "true".equals(sharedpreferences.getString("sentSuccessfully", ""));
            a.put("counter", Integer.toString(sharedpreferences.getInt("appsFlyerCount", 1)));
_L3:
            map = a;
            if (flag1)
            {
                flag = false;
            }
            map.put("isFirstCall", Boolean.toString(flag));
            stringbuffer = new StringBuffer();
            iterator = a.keySet().iterator();
_L1:
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_288;
            }
            s2 = (String)iterator.next();
            s3 = (String)a.get(s2);
            if (s3 != null)
            {
                break MISSING_BLOCK_LABEL_276;
            }
            s4 = "";
_L2:
            if (stringbuffer.length() > 0)
            {
                stringbuffer.append('&');
            }
            stringbuffer.append(s2).append('=').append(s4);
              goto _L1
            s4 = URLEncoder.encode(s3, "UTF-8");
              goto _L2
            String s1;
            URL url;
            s1 = stringbuffer.toString();
            url = new URL(b.toString());
            Log.i("AppsFlyer", (new StringBuilder()).append("url: ").append(b).toString());
            AppsFlyerLib.a("call server.", (new StringBuilder()).append("\n").append(b).append("\nPOST:").append(s1).toString(), context);
            try
            {
                a(url, s1);
                return;
            }
            catch (IOException ioexception) { }
            AppsFlyerLib.a("https failed. trying http....", "", context);
            a(new URL(b.replace("https:", "http:")), s1);
            return;
            flag1 = false;
              goto _L3
        }

        private SendToServerRunnable(String s, Map map, Context context)
        {
            c = null;
            b = s;
            a = map;
            c = new WeakReference(context);
        }

        SendToServerRunnable(String s, Map map, Context context, _cls1 _pcls1)
        {
            this(s, map, context);
        }
    }

}
