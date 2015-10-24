// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import java.lang.reflect.Method;
import org.json.JSONObject;

// Referenced classes of package com.tapjoy:
//            TJWebViewJSInterfaceNotifier, TJAdUnitJSBridge

class this._cls0
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
            }).invoke(TJAdUnitJSBridge.access$000(TJAdUnitJSBridge.this), new Object[] {
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

    eNotifier()
    {
        this$0 = TJAdUnitJSBridge.this;
        super();
    }
}
