// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.Context;
import android.content.Intent;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

// Referenced classes of package com.tapjoy:
//            TJEventData, TapjoyUtil, TapjoyConnectCore, TJEventManager, 
//            TJEventCallback, TapjoyLog, TJError, TJEventOptimizer, 
//            TJAdUnitView

public class TJEvent
{

    private static final String TAG = "TJEvent";
    private boolean autoShowContent;
    private TJEventCallback callback;
    private boolean contentAvailable;
    private Context context;
    private TJEventData eventData;
    private Map eventParams;
    private Map urlParams;

    public TJEvent(Context context1, String s, TJEventCallback tjeventcallback)
    {
        this(context1, s, null, tjeventcallback);
    }

    public TJEvent(Context context1, String s, String s1, TJEventCallback tjeventcallback)
    {
        contentAvailable = false;
        autoShowContent = true;
        context = context1;
        callback = tjeventcallback;
        eventData = new TJEventData();
        eventData.name = s;
        eventData.value = s1;
        eventData.guid = UUID.randomUUID().toString();
        eventParams = new HashMap();
        TapjoyUtil.safePut(eventParams, "event_name", eventData.name, true);
        TapjoyUtil.safePut(eventParams, "event_value", eventData.value, true);
        urlParams = TapjoyConnectCore.getGenericURLParams();
        urlParams.putAll(eventParams);
        urlParams.putAll(TapjoyConnectCore.getTimeStampAndVerifierParams());
        String s2 = (new StringBuilder()).append(TapjoyConnectCore.getEventURL()).append("events?").toString();
        eventData.url = s2;
        eventData.baseURL = s2.substring(0, s2.indexOf('/', s2.indexOf("//") + (1 + "//".length())));
        for (; TJEventManager.get(eventData.guid) != null; eventData.guid = UUID.randomUUID().toString()) { }
        TJEventManager.put(eventData.guid, this);
    }

    public void enableAutoPresent(boolean flag)
    {
        autoShowContent = flag;
    }

    public TJEventCallback getCallback()
    {
        return callback;
    }

    public String getGUID()
    {
        return eventData.guid;
    }

    public String getName()
    {
        return eventData.name;
    }

    public Map getParameters()
    {
        return eventParams;
    }

    public String getValue()
    {
        return eventData.value;
    }

    public void processSendCallback(boolean flag)
    {
        if (flag)
        {
            sendRequest();
            return;
        } else
        {
            trackEventForOfflineDelivery();
            callback.sendEventCompleted(this, false);
            return;
        }
    }

    public void send()
    {
        if (callback == null)
        {
            TapjoyLog.e("TJEvent", "TJEventSendCallback is null");
        }
        if (TapjoyConnectCore.getInstance() != null && TapjoyConnectCore.getInstance().isInitialized()) goto _L2; else goto _L1
_L1:
        TapjoyLog.e("TJEvent", "ERROR -- SDK not initialized -- requestTapjoyConnect must be called first");
        if (callback != null)
        {
            callback.sendEventFail(this, new TJError(0, "SDK not initialized -- requestTapjoyConnect must be called first"));
        }
_L4:
        return;
_L2:
        if (context != null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (callback != null)
        {
            callback.sendEventFail(this, new TJError(0, "Context is null -- TJEvent requires a valid Context."));
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (eventData.name == null || eventData.name.length() == 0)
        {
            if (callback != null)
            {
                callback.sendEventFail(this, new TJError(0, "Invalid eventName -- TJEvent requires a valid eventName."));
                return;
            }
        } else
        {
            TJEventOptimizer.getInstance().checkEvent(this);
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public void sendRequest()
    {
        (new _cls1()).start();
    }

    public void setParameters(Map map)
    {
        eventParams = map;
    }

    public void showContent()
    {
        TapjoyLog.i("TJEvent", (new StringBuilder()).append("showContent() called for event ").append(eventData.name).toString());
        if (!contentAvailable)
        {
            TapjoyLog.e("TJEvent", "Cannot show content for non-200 send event");
            return;
        }
        if (callback == null)
        {
            TapjoyLog.e("TJEvent", "TJEventCallback is null");
            return;
        }
        if (TapjoyConnectCore.isViewOpen())
        {
            TapjoyLog.w("TJEvent", "Only one view can be presented at a time.");
            return;
        } else
        {
            TapjoyConnectCore.viewWillOpen(4);
            Intent intent = new Intent(context, com/tapjoy/TJAdUnitView);
            intent.putExtra("view_type", 1);
            intent.putExtra("tjevent", eventData);
            intent.setFlags(0x10000000);
            context.startActivity(intent);
            return;
        }
    }

    public void trackEventForOfflineDelivery()
    {
        TapjoyLog.i("TJEvent", (new StringBuilder()).append("Tracking event ").append(eventData.name).append(" for offline delivery").toString());
        urlParams.remove("timestamp");
        urlParams.remove("verifier");
        TapjoyConnectCore.saveOfflineLog((new StringBuilder()).append(eventData.url).append(TapjoyUtil.convertURLParams(urlParams, false)).toString());
    }






/*
    static boolean access$302(TJEvent tjevent, boolean flag)
    {
        tjevent.contentAvailable = flag;
        return flag;
    }

*/


    private class _cls1 extends Thread
    {

        final TJEvent this$0;

        public void run()
        {
            TapjoyHttpURLResponse tapjoyhttpurlresponse;
            TapjoyLog.i("TJEvent", (new StringBuilder()).append("Sending event: ").append(eventData.name).toString());
            tapjoyhttpurlresponse = (new TapjoyURLConnection()).getResponseFromURL(eventData.url, urlParams);
            eventData.httpStatusCode = tapjoyhttpurlresponse.statusCode;
            eventData.httpResponse = tapjoyhttpurlresponse.response;
            if (tapjoyhttpurlresponse == null || callback == null) goto _L2; else goto _L1
_L1:
            tapjoyhttpurlresponse.statusCode;
            JVM INSTR lookupswitch 2: default 132
        //                       0: 340
        //                       200: 204;
               goto _L3 _L4 _L5
_L4:
            break MISSING_BLOCK_LABEL_340;
_L3:
            TapjoyLog.i("TJEvent", (new StringBuilder()).append("Send request delivered successfully for event ").append(eventData.name).append(", contentAvailable: ").append(contentAvailable).toString());
            callback.sendEventCompleted(TJEvent.this, contentAvailable);
_L2:
            return;
_L5:
            contentAvailable = true;
            callback.sendEventCompleted(TJEvent.this, contentAvailable);
            TapjoyLog.i("TJEvent", (new StringBuilder()).append("Send request delivered successfully for event ").append(eventData.name).append(", contentAvailable: ").append(contentAvailable).toString());
            if (!autoShowContent) goto _L2; else goto _L6
_L6:
            TapjoyLog.i("TJEvent", (new StringBuilder()).append("Presenting content for event ").append(eventData.name).append(" automatically").toString());
            showContent();
            return;
            TapjoyLog.i("TJEvent", (new StringBuilder()).append("Send request failed for event ").append(eventData.name).toString());
            trackEventForOfflineDelivery();
            callback.sendEventFail(TJEvent.this, new TJError(tapjoyhttpurlresponse.statusCode, tapjoyhttpurlresponse.response));
            return;
        }

        _cls1()
        {
            this$0 = TJEvent.this;
            super();
        }
    }

}
