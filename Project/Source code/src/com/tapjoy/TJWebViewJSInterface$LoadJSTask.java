// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.os.AsyncTask;
import android.webkit.WebView;

// Referenced classes of package com.tapjoy:
//            TJWebViewJSInterface

class webView extends AsyncTask
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

    public (WebView webview)
    {
        this$0 = TJWebViewJSInterface.this;
        super();
        webView = webview;
    }
}
