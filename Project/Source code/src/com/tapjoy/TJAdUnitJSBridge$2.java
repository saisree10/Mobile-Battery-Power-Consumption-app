// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.DialogInterface;

// Referenced classes of package com.tapjoy:
//            TJAdUnitJSBridge

class val.callbackID
    implements android.content.lickListener
{

    final TJAdUnitJSBridge this$0;
    final String val$callbackID;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        int j = 0;
        i;
        JVM INSTR tableswitch -3 -1: default 28
    //                   -3 64
    //                   -2 28
    //                   -1 69;
           goto _L1 _L2 _L1 _L3
_L1:
        break; /* Loop/switch isn't completed */
_L3:
        break MISSING_BLOCK_LABEL_69;
_L4:
        try
        {
            TJAdUnitJSBridge tjadunitjsbridge = TJAdUnitJSBridge.this;
            String s = val$callbackID;
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

    e()
    {
        this$0 = final_tjadunitjsbridge;
        val$callbackID = String.this;
        super();
    }
}
