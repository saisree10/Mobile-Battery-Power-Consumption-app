// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.tapjoy:
//            TapjoyLog, TJWebViewJSInterfaceNotifier

public class TJWebViewJSInterface
{

    private static final String TAG = "TJWebViewJSInterface";
    TJWebViewJSInterfaceNotifier notifier;
    WebView webView;

    public TJWebViewJSInterface(WebView webview, TJWebViewJSInterfaceNotifier tjwebviewjsinterfacenotifier)
    {
        webView = webview;
        notifier = tjwebviewjsinterfacenotifier;
    }

    public void callback(ArrayList arraylist, String s, String s1)
    {
        try
        {
            callbackToJavaScript(new JSONArray(arraylist), s, s1);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void callback(Map map, String s, String s1)
    {
        try
        {
            JSONArray jsonarray = new JSONArray();
            jsonarray.put(new JSONObject(map));
            callbackToJavaScript(jsonarray, s, s1);
            return;
        }
        catch (Exception exception)
        {
            TapjoyLog.e("TJWebViewJSInterface", (new StringBuilder()).append("Exception in callback to JS: ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
    }

    public void callbackToJavaScript(Object obj, String s, String s1)
    {
        JSONObject jsonobject;
        JSONObject jsonobject1;
        String s2;
        try
        {
            jsonobject = new JSONObject();
            jsonobject.put("arguments", obj);
        }
        catch (Exception exception)
        {
            TapjoyLog.e("TJWebViewJSInterface", (new StringBuilder()).append("Exception in callback to JS: ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        if (s.length() > 0)
        {
            jsonobject.put("method", s);
        }
        jsonobject1 = new JSONObject();
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        if (s1.length() > 0)
        {
            jsonobject1.put("callbackId", s1);
        }
        jsonobject1.put("data", jsonobject);
        s2 = (new StringBuilder()).append("javascript:if(window.AndroidWebViewJavascriptBridge) AndroidWebViewJavascriptBridge._handleMessageFromAndroid('").append(jsonobject1).append("');").toString();
        (new LoadJSTask(webView)).execute(new String[] {
            s2
        });
        TapjoyLog.i("TJWebViewJSInterface", (new StringBuilder()).append("sendToJS: ").append(s2).toString());
        return;
    }

    public void dispatchMethod(String s)
    {
        TapjoyLog.i("TJWebViewJSInterface", (new StringBuilder()).append("dispatchMethod params: ").append(s).toString());
        try
        {
            JSONObject jsonobject = new JSONObject(s);
            String s1 = jsonobject.getJSONObject("data").getString("method");
            TapjoyLog.i("TJWebViewJSInterface", (new StringBuilder()).append("method: ").append(s1).toString());
            if (notifier != null)
            {
                notifier.dispatchMethod(s1, jsonobject);
            }
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    private class LoadJSTask extends AsyncTask
    {

        final TJWebViewJSInterface this$0;
        WebView webView;

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected transient String doInBackground(String as[])
        {
            return as[0];
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((String)obj);
        }

        protected void onPostExecute(String s)
        {
            if (webView != null)
            {
                webView.loadUrl(s);
            }
        }

        public LoadJSTask(WebView webview)
        {
            this$0 = TJWebViewJSInterface.this;
            super();
            webView = webview;
        }
    }

}
