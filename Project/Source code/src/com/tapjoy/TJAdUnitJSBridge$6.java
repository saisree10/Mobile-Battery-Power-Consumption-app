// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;


// Referenced classes of package com.tapjoy:
//            TJEventRequestCallback, TJAdUnitJSBridge

class val.callbackID
    implements TJEventRequestCallback
{

    final TJAdUnitJSBridge this$0;
    final String val$callbackID;

    public void cancelled()
    {
        TJAdUnitJSBridge tjadunitjsbridge = TJAdUnitJSBridge.this;
        String s = val$callbackID;
        Object aobj[] = new Object[1];
        aobj[0] = Boolean.FALSE;
        tjadunitjsbridge.invokeJSCallback(s, aobj);
    }

    public void completed()
    {
        TJAdUnitJSBridge tjadunitjsbridge = TJAdUnitJSBridge.this;
        String s = val$callbackID;
        Object aobj[] = new Object[1];
        aobj[0] = Boolean.TRUE;
        tjadunitjsbridge.invokeJSCallback(s, aobj);
    }

    ack()
    {
        this$0 = final_tjadunitjsbridge;
        val$callbackID = String.this;
        super();
    }
}
