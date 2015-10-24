// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;


// Referenced classes of package com.tapjoy:
//            TJEvent, TJEventData, TapjoyLog, TapjoyURLConnection, 
//            TapjoyHttpURLResponse, TJEventCallback, TJError

class t> extends Thread
{

    final TJEvent this$0;

    public void run()
    {
        TapjoyHttpURLResponse tapjoyhttpurlresponse;
        TapjoyLog.i("TJEvent", (new StringBuilder()).append("Sending event: ").append(TJEvent.access$000(TJEvent.this).name).toString());
        tapjoyhttpurlresponse = (new TapjoyURLConnection()).getResponseFromURL(TJEvent.access$000(TJEvent.this).url, TJEvent.access$100(TJEvent.this));
        TJEvent.access$000(TJEvent.this).httpStatusCode = tapjoyhttpurlresponse.statusCode;
        TJEvent.access$000(TJEvent.this).httpResponse = tapjoyhttpurlresponse.response;
        if (tapjoyhttpurlresponse == null || TJEvent.access$200(TJEvent.this) == null) goto _L2; else goto _L1
_L1:
        tapjoyhttpurlresponse.statusCode;
        JVM INSTR lookupswitch 2: default 132
    //                   0: 340
    //                   200: 204;
           goto _L3 _L4 _L5
_L4:
        break MISSING_BLOCK_LABEL_340;
_L3:
        TapjoyLog.i("TJEvent", (new StringBuilder()).append("Send request delivered successfully for event ").append(TJEvent.access$000(TJEvent.this).name).append(", contentAvailable: ").append(TJEvent.access$300(TJEvent.this)).toString());
        TJEvent.access$200(TJEvent.this).sendEventCompleted(TJEvent.this, TJEvent.access$300(TJEvent.this));
_L2:
        return;
_L5:
        TJEvent.access$302(TJEvent.this, true);
        TJEvent.access$200(TJEvent.this).sendEventCompleted(TJEvent.this, TJEvent.access$300(TJEvent.this));
        TapjoyLog.i("TJEvent", (new StringBuilder()).append("Send request delivered successfully for event ").append(TJEvent.access$000(TJEvent.this).name).append(", contentAvailable: ").append(TJEvent.access$300(TJEvent.this)).toString());
        if (!TJEvent.access$400(TJEvent.this)) goto _L2; else goto _L6
_L6:
        TapjoyLog.i("TJEvent", (new StringBuilder()).append("Presenting content for event ").append(TJEvent.access$000(TJEvent.this).name).append(" automatically").toString());
        showContent();
        return;
        TapjoyLog.i("TJEvent", (new StringBuilder()).append("Send request failed for event ").append(TJEvent.access$000(TJEvent.this).name).toString());
        trackEventForOfflineDelivery();
        TJEvent.access$200(TJEvent.this).sendEventFail(TJEvent.this, new TJError(tapjoyhttpurlresponse.statusCode, tapjoyhttpurlresponse.response));
        return;
    }

    lback()
    {
        this$0 = TJEvent.this;
        super();
    }
}
