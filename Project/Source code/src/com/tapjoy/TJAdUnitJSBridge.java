// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.location.Criteria;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.Uri;
import android.view.View;
import android.webkit.WebView;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.tapjoy:
//            TapjoyLog, TJWebViewJSInterface, TJAdUnitView, TJCOffers, 
//            TapjoyConnectCore, TapjoyVideoView, TJEventOptimizer, TJEventRequest, 
//            TJEventData, TJEventManager, TJEvent, TJEventCallback

public class TJAdUnitJSBridge
{

    private static final String TAG = "TJAdUnitJSBridge";
    public boolean allowRedirect;
    private View bannerView;
    private Context context;
    public boolean customClose;
    public boolean didLaunchOtherActivity;
    private TJEventData eventData;
    private TJWebViewJSInterface jsBridge;
    private LocationListener locationListener;
    private LocationManager locationManager;
    public String otherActivityCallbackID;
    private ProgressDialog progressDialog;
    private TJAdUnitJSBridge self;
    public boolean shouldClose;
    private WebView webView;

    public TJAdUnitJSBridge(Context context1, WebView webview, TJEventData tjeventdata)
    {
        bannerView = null;
        didLaunchOtherActivity = false;
        allowRedirect = true;
        otherActivityCallbackID = null;
        customClose = false;
        shouldClose = false;
        TapjoyLog.i("TJAdUnitJSBridge", "creating AdUnit/JS Bridge");
        context = context1;
        eventData = tjeventdata;
        self = this;
        webView = webview;
        if (webView == null)
        {
            TapjoyLog.e("TJAdUnitJSBridge", "Error: webView is NULL");
            return;
        } else
        {
            jsBridge = new TJWebViewJSInterface(webView, new _cls1());
            webView.addJavascriptInterface(jsBridge, "AndroidJavascriptInterface");
            return;
        }
    }

    private File downloadFileFromURL(String s)
    {
        String s1 = s.substring(s.lastIndexOf('.'));
        InputStream inputstream;
        java.io.FileOutputStream fileoutputstream;
        byte abyte0[];
        inputstream = (new URL(s)).openStream();
        fileoutputstream = context.openFileOutput((new StringBuilder()).append("share_temp").append(s1).toString(), 1);
        abyte0 = new byte[4096];
_L3:
        int i = inputstream.read(abyte0, 0, abyte0.length);
        if (i < 0) goto _L2; else goto _L1
_L1:
        fileoutputstream.write(abyte0, 0, i);
          goto _L3
        Exception exception;
        exception;
        exception.printStackTrace();
_L5:
        return new File(context.getFilesDir(), (new StringBuilder()).append("share_temp").append(s1).toString());
_L2:
        try
        {
            fileoutputstream.close();
            inputstream.close();
        }
        catch (Exception exception1) { }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void alert(JSONObject jsonobject, final String callbackID)
    {
        String s;
        TapjoyLog.i("TJAdUnitJSBridge", (new StringBuilder()).append("alert_method: ").append(jsonobject).toString());
        s = "";
        String s3;
        s = jsonobject.getString("title");
        s3 = jsonobject.getString("message");
        String s1 = s3;
        JSONArray jsonarray1 = jsonobject.getJSONArray("buttons");
        String s2;
        JSONArray jsonarray;
        s2 = s1;
        jsonarray = jsonarray1;
_L2:
        AlertDialog alertdialog;
        alertdialog = (new android.app.AlertDialog.Builder(context)).setTitle(s).setMessage(s2).create();
        if (jsonarray == null || jsonarray.length() == 0)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = Boolean.FALSE;
            invokeJSCallback(callbackID, aobj1);
            return;
        }
        break; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        Exception exception1;
        s1 = "";
        exception1 = exception;
_L8:
        Object aobj[] = new Object[1];
        aobj[0] = Boolean.FALSE;
        invokeJSCallback(callbackID, aobj);
        exception1.printStackTrace();
        s2 = s1;
        jsonarray = null;
        if (true) goto _L2; else goto _L1
_L1:
        ArrayList arraylist;
        int i;
        arraylist = new ArrayList();
        i = 0;
_L6:
        if (i >= jsonarray.length())
        {
            break MISSING_BLOCK_LABEL_284;
        }
        i;
        JVM INSTR tableswitch 0 1: default 212
    //                   0 260
    //                   1 267;
           goto _L3 _L4 _L5
_L3:
        byte byte0 = -1;
_L7:
        try
        {
            arraylist.add(jsonarray.getString(i));
        }
        catch (Exception exception2)
        {
            exception2.printStackTrace();
        }
        alertdialog.setButton(byte0, (CharSequence)arraylist.get(i), new _cls2());
        i++;
        if (true) goto _L6; else goto _L4
_L4:
        byte0 = -2;
          goto _L7
_L5:
        byte0 = -3;
          goto _L7
        alertdialog.show();
        return;
        exception1;
          goto _L8
    }

    public void checkAppInstalled(JSONObject jsonobject, String s)
    {
        String s1 = "";
        String s2 = jsonobject.getString("bundle");
        s1 = s2;
_L2:
        if (s1 == null || s1.length() <= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        Iterator iterator = context.getPackageManager().getInstalledApplications(0).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break; /* Loop/switch isn't completed */
            }
        } while (!((ApplicationInfo)iterator.next()).packageName.equals(s1));
        Object aobj1[] = new Object[1];
        aobj1[0] = Boolean.TRUE;
        invokeJSCallback(s, aobj1);
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
        Object aobj[] = new Object[1];
        aobj[0] = Boolean.FALSE;
        invokeJSCallback(s, aobj);
        return;
    }

    public void closeRequested()
    {
        shouldClose = true;
        invokeJSAdunitMethod("closeRequested", new Object[0]);
    }

    public void destroy()
    {
        if (locationListener != null && locationManager != null)
        {
            locationManager.removeUpdates(locationListener);
            locationManager = null;
            locationListener = null;
        }
    }

    public void dismiss(JSONObject jsonobject, String s)
    {
        if (context instanceof TJAdUnitView)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.TRUE;
            invokeJSCallback(s, aobj);
            ((Activity)context).finish();
        }
    }

    public void display()
    {
        invokeJSAdunitMethod("display", new Object[0]);
    }

    public void displayOffers(JSONObject jsonobject, String s)
    {
        String s2 = jsonobject.getString("currencyId");
        String s1 = s2;
_L2:
        (new TJCOffers(context)).showOffersWithCurrencyID(s1, false, eventData, s, null);
        return;
        Exception exception;
        exception;
        TapjoyLog.w("TJAdUnitJSBridge", "no currencyID for showOfferWall");
        s1 = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void displayRichMedia(final JSONObject json, String s)
    {
        boolean flag;
        String s1;
        Object aobj[];
        String s2;
        boolean flag1;
        try
        {
            flag1 = json.getBoolean("inline");
        }
        catch (Exception exception)
        {
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        flag = flag1;
_L4:
        s2 = json.getString("html");
        s1 = s2;
_L2:
        if (s1 == null)
        {
            aobj = new Object[1];
            aobj[0] = Boolean.FALSE;
            invokeJSCallback(s, aobj);
            return;
        }
        break; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        s1 = null;
        if (true) goto _L2; else goto _L1
_L1:
        if (flag)
        {
            ((Activity)context).runOnUiThread(new _cls3());
            return;
        }
        Intent intent = new Intent(context, com/tapjoy/TJAdUnitView);
        intent.putExtra("tjevent", eventData);
        intent.putExtra("view_type", 3);
        intent.putExtra("html", s1);
        intent.putExtra("base_url", TapjoyConnectCore.getHostURL());
        intent.putExtra("callback_id", s);
        ((Activity)context).startActivityForResult(intent, 0);
        return;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void displayStoreURL(JSONObject jsonobject, String s)
    {
        displayURL(jsonobject, s);
    }

    public void displayURL(JSONObject jsonobject, String s)
    {
        try
        {
            String s1 = jsonobject.getString("url");
            didLaunchOtherActivity = true;
            otherActivityCallbackID = s;
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s1));
            ((Activity)context).startActivity(intent);
            return;
        }
        catch (Exception exception)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.TRUE;
            invokeJSCallback(s, aobj);
            exception.printStackTrace();
            return;
        }
    }

    public void displayVideo(JSONObject jsonobject, String s)
    {
        HashMap hashmap = new HashMap();
        JSONObject jsonobject1 = jsonobject.getJSONObject("trackingUrls");
        if (jsonobject1 == null)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        Iterator iterator = jsonobject1.keys();
_L1:
        String s4;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_114;
        }
        s4 = (String)iterator.next();
        hashmap.put(s4, jsonobject1.getString(s4));
          goto _L1
        Exception exception3;
        exception3;
        TapjoyLog.i("TJAdUnitJSBridge", (new StringBuilder()).append("no tracking url for ").append(jsonobject1.getString(s4)).toString());
          goto _L1
        Exception exception;
        exception;
        TapjoyLog.i("TJAdUnitJSBridge", "no video tracking urls");
        String s3 = jsonobject.getString("cancelMessage");
        String s1 = s3;
_L3:
        Exception exception1;
        try
        {
            String s2 = jsonobject.getString("url");
            Intent intent = new Intent(context, com/tapjoy/TapjoyVideoView);
            intent.putExtra("VIDEO_URL", s2);
            intent.putExtra("VIDEO_CANCEL_MESSAGE", s1);
            intent.putExtra("VIDEO_SHOULD_DISMISS", true);
            intent.putExtra("callback_id", s);
            intent.putExtra("VIDEO_TRACKING_URLS", hashmap);
            ((Activity)context).startActivityForResult(intent, 0);
            return;
        }
        catch (Exception exception2)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.FALSE;
            invokeJSCallback(s, aobj);
            exception2.printStackTrace();
            return;
        }
        exception1;
        TapjoyLog.w("TJAdUnitJSBridge", "no cancelMessage");
        s1 = "";
        if (true) goto _L3; else goto _L2
_L2:
    }

    public void eventOptimizationCallback(JSONObject jsonobject, String s)
    {
        try
        {
            String s1 = jsonobject.getString("token");
            Boolean boolean1 = Boolean.valueOf(jsonobject.getBoolean("result"));
            TJEventOptimizer.getInstance().eventOptimizationCallback(s1, boolean1.booleanValue());
            Object aobj1[] = new Object[1];
            aobj1[0] = Boolean.TRUE;
            invokeJSCallback(s, aobj1);
            return;
        }
        catch (Exception exception)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.FALSE;
            invokeJSCallback(s, aobj);
            exception.printStackTrace();
            return;
        }
    }

    public void getLocation(JSONObject jsonobject, String s)
    {
        float f = 100F;
        float f1 = Float.valueOf(jsonobject.getString("gpsAccuracy")).floatValue();
        f = f1;
_L3:
        boolean flag1 = Boolean.valueOf(jsonobject.getString("enabled")).booleanValue();
        boolean flag = flag1;
_L1:
        locationManager = (LocationManager)context.getSystemService("location");
        Criteria criteria = new Criteria();
        String s1 = locationManager.getBestProvider(criteria, false);
        if (locationListener == null)
        {
            locationListener = new _cls4();
        }
        Exception exception1;
        if (flag)
        {
            if (s1 != null)
            {
                locationManager.requestLocationUpdates(s1, 0L, f, locationListener);
                Object aobj2[] = new Object[1];
                aobj2[0] = Boolean.TRUE;
                invokeJSCallback(s, aobj2);
                return;
            } else
            {
                Object aobj1[] = new Object[1];
                aobj1[0] = Boolean.FALSE;
                invokeJSCallback(s, aobj1);
                return;
            }
        }
        break MISSING_BLOCK_LABEL_178;
        exception1;
        exception1.printStackTrace();
        flag = false;
          goto _L1
        if (locationManager != null && locationListener != null)
        {
            locationManager.removeUpdates(locationListener);
        }
        Object aobj[] = new Object[1];
        aobj[0] = Boolean.TRUE;
        invokeJSCallback(s, aobj);
        return;
        Exception exception;
        exception;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public void invokeJSAdunitMethod(String s, Map map)
    {
        jsBridge.callback(map, s, null);
    }

    public transient void invokeJSAdunitMethod(String s, Object aobj[])
    {
        ArrayList arraylist = new ArrayList(Arrays.asList(aobj));
        jsBridge.callback(arraylist, s, null);
    }

    public void invokeJSCallback(String s, Map map)
    {
        jsBridge.callback(map, "", s);
    }

    public transient void invokeJSCallback(String s, Object aobj[])
    {
        ArrayList arraylist = new ArrayList(Arrays.asList(aobj));
        jsBridge.callback(arraylist, "", s);
    }

    public void log(JSONObject jsonobject, String s)
    {
        try
        {
            TapjoyLog.i("TJAdUnitJSBridge", jsonobject.getString("message"));
            Object aobj1[] = new Object[1];
            aobj1[0] = Boolean.TRUE;
            invokeJSCallback(s, aobj1);
            return;
        }
        catch (Exception exception)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.FALSE;
            invokeJSCallback(s, aobj);
            exception.printStackTrace();
            return;
        }
    }

    public void nativeEval(final JSONObject json, final String callbackID)
    {
        ((Activity)context).runOnUiThread(new _cls5());
    }

    public void openApp(JSONObject jsonobject, String s)
    {
        try
        {
            String s1 = jsonobject.getString("bundle");
            Intent intent = context.getPackageManager().getLaunchIntentForPackage(s1);
            context.startActivity(intent);
            Object aobj1[] = new Object[1];
            aobj1[0] = Boolean.TRUE;
            invokeJSCallback(s, aobj1);
            return;
        }
        catch (Exception exception)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.FALSE;
            invokeJSCallback(s, aobj);
            exception.printStackTrace();
            return;
        }
    }

    public void present(JSONObject jsonobject, String s)
    {
        Boolean boolean1;
        Boolean boolean2;
        Object aobj1[];
        Boolean boolean3;
        try
        {
            Boolean.valueOf(false);
            boolean1 = Boolean.valueOf(false);
            boolean2 = Boolean.valueOf(jsonobject.getString("visible"));
        }
        catch (Exception exception)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.FALSE;
            invokeJSCallback(s, aobj);
            exception.printStackTrace();
            return;
        }
        boolean3 = Boolean.valueOf(jsonobject.getString("transparent"));
        boolean1 = boolean3;
_L2:
        try
        {
            customClose = Boolean.valueOf(jsonobject.getString("customClose")).booleanValue();
        }
        catch (Exception exception2) { }
        (new ShowWebView(webView)).execute(new Boolean[] {
            boolean2, boolean1
        });
        aobj1 = new Object[1];
        aobj1[0] = Boolean.TRUE;
        invokeJSCallback(s, aobj1);
        return;
        Exception exception1;
        exception1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void sendActionCallback(JSONObject jsonobject, final String callbackID)
    {
        TJEventRequest tjeventrequest = new TJEventRequest();
        String s1 = jsonobject.getString("type");
        String s = s1;
_L3:
        Exception exception;
        Object aobj[];
        try
        {
            tjeventrequest.quantity = Integer.valueOf(jsonobject.getString("quantity")).intValue();
        }
        catch (Exception exception1)
        {
            exception1.printStackTrace();
        }
        try
        {
            tjeventrequest.identifier = jsonobject.getString("identifier");
        }
        catch (Exception exception2)
        {
            exception2.printStackTrace();
        }
        if (s != null && tjeventrequest.identifier != null) goto _L2; else goto _L1
_L1:
        TapjoyLog.i("TJAdUnitJSBridge", "sendActionCallback: null type or identifier");
        aobj = new Object[1];
        aobj[0] = Boolean.FALSE;
        invokeJSCallback(callbackID, aobj);
_L8:
        return;
        exception;
        exception.printStackTrace();
        s = null;
          goto _L3
_L2:
        if (!s.equals("currency")) goto _L5; else goto _L4
_L4:
        tjeventrequest.type = 3;
_L7:
        if (tjeventrequest.type == 0)
        {
            TapjoyLog.i("TJAdUnitJSBridge", (new StringBuilder()).append("unknown type: ").append(s).toString());
            Object aobj1[] = new Object[1];
            aobj1[0] = Boolean.FALSE;
            invokeJSCallback(callbackID, aobj1);
            return;
        }
        break; /* Loop/switch isn't completed */
_L5:
        if (s.equals("inAppPurchase"))
        {
            tjeventrequest.type = 1;
        } else
        if (s.equals("navigation"))
        {
            tjeventrequest.type = 4;
        } else
        if (s.equals("virtualGood"))
        {
            tjeventrequest.type = 2;
        }
        if (true) goto _L7; else goto _L6
_L6:
        tjeventrequest.callback = new _cls6();
        TJEvent tjevent = TJEventManager.get(eventData.guid);
        if (tjevent != null)
        {
            tjevent.getCallback().didRequestAction(tjevent, tjeventrequest);
            return;
        }
          goto _L8
    }

    public void setAllowRedirect(JSONObject jsonobject, String s)
    {
        boolean flag1 = jsonobject.getBoolean("enabled");
        boolean flag = flag1;
_L2:
        allowRedirect = flag;
        Object aobj[] = new Object[1];
        aobj[0] = Boolean.TRUE;
        invokeJSCallback(s, aobj);
        return;
        Exception exception;
        exception;
        flag = true;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void setContext(Context context1)
    {
        context = context1;
    }

    public void setSpinnerVisible(JSONObject jsonobject, String s)
    {
        String s1;
        String s2;
        String s3;
        s1 = "Loading...";
        boolean flag;
        Object aobj1[];
        String s4;
        try
        {
            flag = jsonobject.getBoolean("visible");
        }
        catch (Exception exception)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.FALSE;
            invokeJSCallback(s, aobj);
            exception.printStackTrace();
            return;
        }
        s1 = jsonobject.getString("title");
        s4 = jsonobject.getString("message");
        s2 = s1;
        s3 = s4;
_L6:
        if (!flag) goto _L2; else goto _L1
_L1:
        progressDialog = ProgressDialog.show(context, s2, s3);
_L4:
        aobj1 = new Object[1];
        aobj1[0] = Boolean.TRUE;
        invokeJSCallback(s, aobj1);
        return;
_L2:
        if (progressDialog != null)
        {
            progressDialog.dismiss();
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception1;
        exception1;
        s2 = s1;
        s3 = "";
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void share(JSONObject jsonobject, String s)
    {
        String s1;
        String s2;
        Intent intent;
        Exception exception1;
        String s3;
        Exception exception2;
        String s4;
        String s5;
        boolean flag;
        File file;
        String s6;
        String s7;
        try
        {
            s1 = jsonobject.getString("network");
            s2 = jsonobject.getString("message");
            intent = new Intent("android.intent.action.SEND");
        }
        catch (Exception exception)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.FALSE;
            invokeJSCallback(s, aobj);
            exception.printStackTrace();
            return;
        }
        s7 = jsonobject.getString("imageURL");
        s3 = s7;
_L7:
        s6 = jsonobject.getString("linkURL");
        s4 = s6;
_L8:
        s5 = null;
        if (s3 == null)
        {
            break MISSING_BLOCK_LABEL_105;
        }
        file = downloadFileFromURL(s3);
        s5 = null;
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_105;
        }
        s5 = (new StringBuilder()).append("file://").append(file.getAbsolutePath()).toString();
        if (s4 == null)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        s2 = (new StringBuilder()).append(s2).append("\n").append(s4).toString();
        intent.putExtra("android.intent.extra.TEXT", s2);
        if (!s1.equals("facebook")) goto _L2; else goto _L1
_L1:
        if (s3 == null || s5 == null) goto _L4; else goto _L3
_L3:
        intent.setType("image/*");
        intent.putExtra("android.intent.extra.STREAM", Uri.parse(s5));
_L9:
        Iterator iterator = context.getPackageManager().queryIntentActivities(intent, 0).iterator();
        ResolveInfo resolveinfo;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_472;
            }
            resolveinfo = (ResolveInfo)iterator.next();
        } while (!resolveinfo.activityInfo.packageName.toLowerCase(Locale.ENGLISH).contains(s1) && !resolveinfo.activityInfo.name.toLowerCase(Locale.ENGLISH).contains(s1));
        intent.setPackage(resolveinfo.activityInfo.packageName);
        flag = true;
_L12:
        if (flag) goto _L6; else goto _L5
_L5:
        Object aobj1[] = new Object[1];
        aobj1[0] = Boolean.FALSE;
        invokeJSCallback(s, aobj1);
        return;
        exception1;
        TapjoyLog.i("TJAdUnitJSBridge", "no imageURL");
        s3 = null;
          goto _L7
        exception2;
        TapjoyLog.i("TJAdUnitJSBridge", "no linkURL");
        s4 = null;
          goto _L8
_L4:
        intent.setType("text/plain");
          goto _L9
_L2:
        if (!s1.equals("twitter")) goto _L9; else goto _L10
_L10:
        intent.setType("*/*");
        if (s3 == null || s5 == null) goto _L9; else goto _L11
_L11:
        intent.putExtra("android.intent.extra.STREAM", Uri.parse(s5));
          goto _L9
_L6:
        didLaunchOtherActivity = true;
        otherActivityCallbackID = s;
        Intent intent1 = Intent.createChooser(intent, "Select");
        ((Activity)context).startActivity(intent1);
        return;
        flag = false;
          goto _L12
    }

    public void shouldClose(JSONObject jsonobject, String s)
    {
        try
        {
            Boolean.valueOf(false);
            if (Boolean.valueOf(jsonobject.getString("close")).booleanValue() && (context instanceof TJAdUnitView))
            {
                ((Activity)context).finish();
            }
            Object aobj1[] = new Object[1];
            aobj1[0] = Boolean.TRUE;
            invokeJSCallback(s, aobj1);
        }
        catch (Exception exception)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.FALSE;
            invokeJSCallback(s, aobj);
            ((Activity)context).finish();
            exception.printStackTrace();
        }
        shouldClose = false;
    }




/*
    static View access$102(TJAdUnitJSBridge tjadunitjsbridge, View view)
    {
        tjadunitjsbridge.bannerView = view;
        return view;
    }

*/





    private class _cls1
        implements TJWebViewJSInterfaceNotifier
    {

        final TJAdUnitJSBridge this$0;

        public void dispatchMethod(String s, JSONObject jsonobject)
        {
            String s2 = jsonobject.getString("callbackId");
            String s1 = s2;
_L1:
            Exception exception;
            try
            {
                JSONObject jsonobject1 = jsonobject.getJSONObject("data");
                com/tapjoy/TJAdUnitJSBridge.getMethod(s, new Class[] {
                    org/json/JSONObject, java/lang/String
                }).invoke(self, new Object[] {
                    jsonobject1, s1
                });
                return;
            }
            catch (Exception exception1)
            {
                exception1.printStackTrace();
            }
            break MISSING_BLOCK_LABEL_80;
            exception;
            s1 = null;
              goto _L1
            TJAdUnitJSBridge tjadunitjsbridge = TJAdUnitJSBridge.this;
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.FALSE;
            tjadunitjsbridge.invokeJSCallback(s1, aobj);
            return;
        }

        _cls1()
        {
            this$0 = TJAdUnitJSBridge.this;
            super();
        }
    }


    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        final TJAdUnitJSBridge this$0;
        final String val$callbackID;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            int j = 0;
            i;
            JVM INSTR tableswitch -3 -1: default 28
        //                       -3 64
        //                       -2 28
        //                       -1 69;
               goto _L1 _L2 _L1 _L3
_L1:
            break; /* Loop/switch isn't completed */
_L3:
            break MISSING_BLOCK_LABEL_69;
_L4:
            try
            {
                TJAdUnitJSBridge tjadunitjsbridge = TJAdUnitJSBridge.this;
                String s = callbackID;
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(j);
                tjadunitjsbridge.invokeJSCallback(s, aobj);
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
            break MISSING_BLOCK_LABEL_81;
_L2:
            j = 1;
              goto _L4
            j = 2;
              goto _L4
        }

        _cls2()
        {
            this$0 = TJAdUnitJSBridge.this;
            callbackID = s;
            super();
        }
    }


    private class _cls3
        implements Runnable
    {

        final TJAdUnitJSBridge this$0;
        final JSONObject val$json;

        public void run()
        {
            String s1 = json.getString("html");
            String s = s1;
_L2:
            if (bannerView != null && bannerView.getParent() != null)
            {
                ((ViewGroup)bannerView.getParent()).removeView(bannerView);
            }
            MraidView mraidview = new MraidView(context);
            webView.getSettings().setJavaScriptEnabled(true);
            mraidview.setPlacementType(com.tapjoy.mraid.view.MraidView.PLACEMENT_TYPE.INLINE);
            mraidview.setLayoutParams(new android.view.ViewGroup.LayoutParams(640, 100));
            mraidview.setInitialScale(100);
            mraidview.setBackgroundColor(0);
            mraidview.loadDataWithBaseURL(null, s, "text/html", "utf-8", null);
            int i = ((WindowManager)((Activity)context).getSystemService("window")).getDefaultDisplay().getWidth();
            bannerView = TapjoyUtil.scaleDisplayAd(mraidview, i);
            ((Activity)context).addContentView(bannerView, new android.view.ViewGroup.LayoutParams(i, (int)(100D * ((double)i / 640D))));
            return;
            Exception exception;
            exception;
            exception.printStackTrace();
            s = null;
            if (true) goto _L2; else goto _L1
_L1:
        }

        _cls3()
        {
            this$0 = TJAdUnitJSBridge.this;
            json = jsonobject;
            super();
        }
    }


    private class _cls4
        implements LocationListener
    {

        final TJAdUnitJSBridge this$0;

        public void onLocationChanged(Location location)
        {
            if (context == null || webView == null)
            {
                if (locationManager != null && locationListener != null)
                {
                    TapjoyLog.i("TJAdUnitJSBridge", "stopping updates");
                    locationManager.removeUpdates(locationListener);
                }
            } else
            if (location != null)
            {
                HashMap hashmap = new HashMap();
                hashmap.put("lat", Double.valueOf(location.getLatitude()));
                hashmap.put("long", Double.valueOf(location.getLongitude()));
                hashmap.put("altitude", Double.valueOf(location.getAltitude()));
                hashmap.put("timestamp", Long.valueOf(location.getTime()));
                hashmap.put("speed", Float.valueOf(location.getSpeed()));
                hashmap.put("course", Float.valueOf(location.getBearing()));
                invokeJSAdunitMethod("locationUpdated", hashmap);
                return;
            }
        }

        public void onProviderDisabled(String s)
        {
        }

        public void onProviderEnabled(String s)
        {
        }

        public void onStatusChanged(String s, int i, Bundle bundle)
        {
        }

        _cls4()
        {
            this$0 = TJAdUnitJSBridge.this;
            super();
        }
    }


    private class _cls5
        implements Runnable
    {

        final TJAdUnitJSBridge this$0;
        final String val$callbackID;
        final JSONObject val$json;

        public void run()
        {
            try
            {
                webView.loadUrl((new StringBuilder()).append("javascript:").append(json.getString("command")).toString());
                TJAdUnitJSBridge tjadunitjsbridge1 = TJAdUnitJSBridge.this;
                String s1 = callbackID;
                Object aobj1[] = new Object[1];
                aobj1[0] = Boolean.TRUE;
                tjadunitjsbridge1.invokeJSCallback(s1, aobj1);
                return;
            }
            catch (Exception exception)
            {
                TJAdUnitJSBridge tjadunitjsbridge = TJAdUnitJSBridge.this;
                String s = callbackID;
                Object aobj[] = new Object[1];
                aobj[0] = Boolean.FALSE;
                tjadunitjsbridge.invokeJSCallback(s, aobj);
                return;
            }
        }

        _cls5()
        {
            this$0 = TJAdUnitJSBridge.this;
            json = jsonobject;
            callbackID = s;
            super();
        }
    }


    private class ShowWebView extends AsyncTask
    {

        final TJAdUnitJSBridge this$0;
        WebView webView;

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((Boolean[])aobj);
        }

        protected transient Boolean[] doInBackground(Boolean aboolean[])
        {
            return aboolean;
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Boolean[])obj);
        }

        protected void onPostExecute(Boolean aboolean[])
        {
            final boolean visible = aboolean[0].booleanValue();
            final boolean transparent = aboolean[1].booleanValue();
            class _cls1
                implements Runnable
            {

                final ShowWebView this$1;
                final boolean val$transparent;
                final boolean val$visible;

                public void run()
                {
                    if (!visible) goto _L2; else goto _L1
_L1:
                    webView.setVisibility(0);
                    if (!transparent) goto _L4; else goto _L3
_L3:
                    if (webView.getParent() instanceof RelativeLayout)
                    {
                        ((RelativeLayout)webView.getParent()).getBackground().setAlpha(0);
                        ((RelativeLayout)webView.getParent()).setBackgroundColor(0);
                    }
                    if (android.os.Build.VERSION.SDK_INT >= 11)
                    {
                        webView.setLayerType(1, null);
                    }
_L6:
                    return;
_L4:
                    if (webView.getParent() instanceof RelativeLayout)
                    {
                        ((RelativeLayout)webView.getParent()).getBackground().setAlpha(255);
                        ((RelativeLayout)webView.getParent()).setBackgroundColor(-1);
                    }
                    if (android.os.Build.VERSION.SDK_INT >= 11)
                    {
                        webView.setLayerType(0, null);
                        return;
                    }
                    continue; /* Loop/switch isn't completed */
_L2:
                    webView.setVisibility(4);
                    if (webView.getParent() instanceof RelativeLayout)
                    {
                        ((RelativeLayout)webView.getParent()).getBackground().setAlpha(0);
                        ((RelativeLayout)webView.getParent()).setBackgroundColor(0);
                        return;
                    }
                    if (true) goto _L6; else goto _L5
_L5:
                }

                _cls1()
                {
                    this$1 = ShowWebView.this;
                    visible = flag;
                    transparent = flag1;
                    super();
                }
            }

            ((Activity)context).runOnUiThread(new _cls1());
        }

        public ShowWebView(WebView webview)
        {
            this$0 = TJAdUnitJSBridge.this;
            super();
            webView = webview;
        }
    }


    private class _cls6
        implements TJEventRequestCallback
    {

        final TJAdUnitJSBridge this$0;
        final String val$callbackID;

        public void cancelled()
        {
            TJAdUnitJSBridge tjadunitjsbridge = TJAdUnitJSBridge.this;
            String s = callbackID;
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.FALSE;
            tjadunitjsbridge.invokeJSCallback(s, aobj);
        }

        public void completed()
        {
            TJAdUnitJSBridge tjadunitjsbridge = TJAdUnitJSBridge.this;
            String s = callbackID;
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.TRUE;
            tjadunitjsbridge.invokeJSCallback(s, aobj);
        }

        _cls6()
        {
            this$0 = TJAdUnitJSBridge.this;
            callbackID = s;
            super();
        }
    }

}
