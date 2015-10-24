// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;


// Referenced classes of package com.tapjoy:
//            TapjoyLog, TapjoyConnectCore, TapjoyURLConnection, TapjoyHttpURLResponse, 
//            TapjoyConnectNotifier, TapjoyUtil

public class this._cls0
    implements Runnable
{

    final TapjoyConnectCore this$0;

    public void run()
    {
        TapjoyHttpURLResponse tapjoyhttpurlresponse;
        TapjoyLog.i("TapjoyConnect", "starting connect call...");
        String s = "https://connect.tapjoy.com/";
        if (TapjoyConnectCore.getHostURL() != "https://ws.tapjoyads.com/")
        {
            s = TapjoyConnectCore.getHostURL();
        }
        tapjoyhttpurlresponse = TapjoyConnectCore.access$500().getResponseFromURL((new StringBuilder()).append(s).append("connect?").toString(), TapjoyConnectCore.getURLParams());
        if (tapjoyhttpurlresponse == null || tapjoyhttpurlresponse.statusCode != 200) goto _L2; else goto _L1
_L1:
        if (!TapjoyConnectCore.access$600(tapjoyhttpurlresponse.response)) goto _L4; else goto _L3
_L3:
        TapjoyLog.i("TapjoyConnect", "Successfully connected to tapjoy site.");
        if (TapjoyConnectCore.access$800() != null)
        {
            TapjoyConnectCore.access$800().connectSuccess();
        }
_L8:
        if (TapjoyConnectCore.access$900().length() > 0)
        {
            java.util.Map map = TapjoyConnectCore.getGenericURLParams();
            TapjoyUtil.safePut(map, "package_names", TapjoyConnectCore.access$900(), true);
            long l = System.currentTimeMillis() / 1000L;
            String s1 = TapjoyConnectCore.access$1000(l, TapjoyConnectCore.access$900());
            TapjoyUtil.safePut(map, "timestamp", String.valueOf(l), true);
            TapjoyUtil.safePut(map, "verifier", s1, true);
            TapjoyHttpURLResponse tapjoyhttpurlresponse1 = (new TapjoyURLConnection()).getResponseFromURL((new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("apps_installed?").toString(), map);
            if (tapjoyhttpurlresponse1 != null && tapjoyhttpurlresponse1.statusCode == 200)
            {
                TapjoyLog.i("TapjoyConnect", "Successfully pinged sdkless api.");
            }
        }
_L6:
        return;
_L4:
        if (TapjoyConnectCore.access$800() != null)
        {
            TapjoyConnectCore.access$800().connectFail();
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (TapjoyConnectCore.access$800() == null) goto _L6; else goto _L5
_L5:
        TapjoyConnectCore.access$800().connectFail();
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public ()
    {
        this$0 = TapjoyConnectCore.this;
        super();
    }
}
