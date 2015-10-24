// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.webkit.WebView;
import org.json.JSONObject;

// Referenced classes of package com.tapjoy:
//            TJAdUnitJSBridge

class val.callbackID
    implements Runnable
{

    final TJAdUnitJSBridge this$0;
    final String val$callbackID;
    final JSONObject val$json;

    public void run()
    {
        try
        {
            TJAdUnitJSBridge.access$300(TJAdUnitJSBridge.this).loadUrl((new StringBuilder()).append("javascript:").append(val$json.getString("command")).toString());
            TJAdUnitJSBridge tjadunitjsbridge1 = TJAdUnitJSBridge.this;
            String s1 = val$callbackID;
            Object aobj1[] = new Object[1];
            aobj1[0] = Boolean.TRUE;
            tjadunitjsbridge1.invokeJSCallback(s1, aobj1);
            return;
        }
        catch (Exception exception)
        {
            TJAdUnitJSBridge tjadunitjsbridge = TJAdUnitJSBridge.this;
            String s = val$callbackID;
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.FALSE;
            tjadunitjsbridge.invokeJSCallback(s, aobj);
            return;
        }
    }

    ()
    {
        this$0 = final_tjadunitjsbridge;
        val$json = jsonobject;
        val$callbackID = String.this;
        super();
    }
}
