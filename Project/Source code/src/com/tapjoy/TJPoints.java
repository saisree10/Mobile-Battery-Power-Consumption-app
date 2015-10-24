// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;
import org.w3c.dom.Document;

// Referenced classes of package com.tapjoy:
//            TapjoyUtil, TapjoyAwardPointsNotifier, TapjoyLog, TapjoyEarnedPointsNotifier, 
//            TapjoyNotifier, TapjoySpendPointsNotifier

public class TJPoints
{

    private static final String TAG = "TapjoyPoints";
    private static TapjoyAwardPointsNotifier tapjoyAwardPointsNotifier;
    private static TapjoyEarnedPointsNotifier tapjoyEarnedPointsNotifier;
    private static TapjoyNotifier tapjoyNotifier;
    private static TapjoySpendPointsNotifier tapjoySpendPointsNotifier;
    int awardTapPoints;
    Context context;
    String spendTapPoints;

    public TJPoints(Context context1)
    {
        spendTapPoints = null;
        awardTapPoints = 0;
        context = context1;
    }

    private boolean handleAwardPointsResponse(String s)
    {
        Document document = TapjoyUtil.buildDocument(s);
        if (document != null)
        {
            String s1 = TapjoyUtil.getNodeTrimValue(document.getElementsByTagName("Success"));
            if (s1 != null && s1.equals("true"))
            {
                String s3 = TapjoyUtil.getNodeTrimValue(document.getElementsByTagName("TapPoints"));
                String s4 = TapjoyUtil.getNodeTrimValue(document.getElementsByTagName("CurrencyName"));
                if (s3 != null && s4 != null)
                {
                    saveTapPointsTotal(Integer.parseInt(s3));
                    tapjoyAwardPointsNotifier.getAwardPointsResponse(s4, Integer.parseInt(s3));
                    return true;
                }
                TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing tags.");
            } else
            {
                if (s1 != null && s1.endsWith("false"))
                {
                    String s2 = TapjoyUtil.getNodeTrimValue(document.getElementsByTagName("Message"));
                    TapjoyLog.i("TapjoyPoints", s2);
                    tapjoyAwardPointsNotifier.getAwardPointsResponseFailed(s2);
                    return true;
                }
                TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing <Success> tag.");
            }
        }
        return false;
    }

    private boolean handleGetPointsResponse(String s)
    {
        this;
        JVM INSTR monitorenter ;
        Document document = TapjoyUtil.buildDocument(s);
        if (document == null) goto _L2; else goto _L1
_L1:
        String s1 = TapjoyUtil.getNodeTrimValue(document.getElementsByTagName("Success"));
        if (s1 == null) goto _L4; else goto _L3
_L3:
        if (!s1.equals("true")) goto _L4; else goto _L5
_L5:
        String s2;
        String s3;
        s2 = TapjoyUtil.getNodeTrimValue(document.getElementsByTagName("TapPoints"));
        s3 = TapjoyUtil.getNodeTrimValue(document.getElementsByTagName("CurrencyName"));
        if (s2 == null || s3 == null) goto _L7; else goto _L6
_L6:
        int i;
        int j;
        i = Integer.parseInt(s2);
        j = getLocalTapPointsTotal();
        if (tapjoyEarnedPointsNotifier == null || j == -9999 || i <= j)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        TapjoyLog.i("TapjoyPoints", (new StringBuilder()).append("earned: ").append(i - j).toString());
        tapjoyEarnedPointsNotifier.earnedTapPoints(i - j);
        saveTapPointsTotal(Integer.parseInt(s2));
        tapjoyNotifier.getUpdatePoints(s3, Integer.parseInt(s2));
        boolean flag = true;
_L9:
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception1;
        exception1;
        TapjoyLog.e("TapjoyPoints", (new StringBuilder()).append("Error parsing XML and calling notifier: ").append(exception1.toString()).toString());
          goto _L2
_L7:
        TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing tags.");
          goto _L2
        Exception exception;
        exception;
        throw exception;
_L4:
        TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing <Success> tag.");
_L2:
        flag = false;
        if (true) goto _L9; else goto _L8
_L8:
    }

    private boolean handleSpendPointsResponse(String s)
    {
        Document document = TapjoyUtil.buildDocument(s);
        if (document != null)
        {
            String s1 = TapjoyUtil.getNodeTrimValue(document.getElementsByTagName("Success"));
            if (s1 != null && s1.equals("true"))
            {
                String s3 = TapjoyUtil.getNodeTrimValue(document.getElementsByTagName("TapPoints"));
                String s4 = TapjoyUtil.getNodeTrimValue(document.getElementsByTagName("CurrencyName"));
                if (s3 != null && s4 != null)
                {
                    saveTapPointsTotal(Integer.parseInt(s3));
                    tapjoySpendPointsNotifier.getSpendPointsResponse(s4, Integer.parseInt(s3));
                    return true;
                }
                TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing tags.");
            } else
            {
                if (s1 != null && s1.endsWith("false"))
                {
                    String s2 = TapjoyUtil.getNodeTrimValue(document.getElementsByTagName("Message"));
                    TapjoyLog.i("TapjoyPoints", s2);
                    tapjoySpendPointsNotifier.getSpendPointsResponseFailed(s2);
                    return true;
                }
                TapjoyLog.e("TapjoyPoints", "Invalid XML: Missing <Success> tag.");
            }
        }
        return false;
    }

    public void awardTapPoints(int i, TapjoyAwardPointsNotifier tapjoyawardpointsnotifier)
    {
        if (i < 0)
        {
            TapjoyLog.e("TapjoyPoints", "spendTapPoints error: amount must be a positive number");
            return;
        } else
        {
            awardTapPoints = i;
            tapjoyAwardPointsNotifier = tapjoyawardpointsnotifier;
            (new Thread(new _cls3())).start();
            return;
        }
    }

    public int getLocalTapPointsTotal()
    {
        return context.getSharedPreferences("tjcPrefrences", 0).getInt("last_tap_points", -9999);
    }

    public void getTapPoints(TapjoyNotifier tapjoynotifier)
    {
        tapjoyNotifier = tapjoynotifier;
        (new Thread(new _cls1())).start();
    }

    public void saveTapPointsTotal(int i)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("tjcPrefrences", 0).edit();
        editor.putInt("last_tap_points", i);
        editor.commit();
    }

    public void setEarnedPointsNotifier(TapjoyEarnedPointsNotifier tapjoyearnedpointsnotifier)
    {
        tapjoyEarnedPointsNotifier = tapjoyearnedpointsnotifier;
    }

    public void spendTapPoints(int i, TapjoySpendPointsNotifier tapjoyspendpointsnotifier)
    {
        if (i < 0)
        {
            TapjoyLog.e("TapjoyPoints", "spendTapPoints error: amount must be a positive number");
            return;
        } else
        {
            spendTapPoints = (new StringBuilder()).append("").append(i).toString();
            tapjoySpendPointsNotifier = tapjoyspendpointsnotifier;
            (new Thread(new _cls2())).start();
            return;
        }
    }







    private class _cls3
        implements Runnable
    {

        final TJPoints this$0;

        public void run()
        {
            String s = UUID.randomUUID().toString();
            long l = System.currentTimeMillis() / 1000L;
            java.util.Map map = TapjoyConnectCore.getGenericURLParams();
            TapjoyUtil.safePut(map, "tap_points", String.valueOf(awardTapPoints), true);
            TapjoyUtil.safePut(map, "guid", s, true);
            TapjoyUtil.safePut(map, "timestamp", String.valueOf(l), true);
            TapjoyUtil.safePut(map, "verifier", TapjoyConnectCore.getAwardPointsVerifier(l, awardTapPoints, s), true);
            TapjoyHttpURLResponse tapjoyhttpurlresponse = (new TapjoyURLConnection()).getResponseFromURL((new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("points/award?").toString(), map);
            String s1 = tapjoyhttpurlresponse.response;
            boolean flag = false;
            if (s1 != null)
            {
                flag = handleAwardPointsResponse(tapjoyhttpurlresponse.response);
            }
            if (!flag)
            {
                TJPoints.tapjoyAwardPointsNotifier.getAwardPointsResponseFailed("Failed to award points.");
            }
        }

        _cls3()
        {
            this$0 = TJPoints.this;
            super();
        }
    }


    private class _cls1
        implements Runnable
    {

        final TJPoints this$0;

        public void run()
        {
            TapjoyHttpURLResponse tapjoyhttpurlresponse = (new TapjoyURLConnection()).getResponseFromURL((new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("get_vg_store_items/user_account?").toString(), TapjoyConnectCore.getURLParams());
            String s = tapjoyhttpurlresponse.response;
            boolean flag = false;
            if (s != null)
            {
                flag = handleGetPointsResponse(tapjoyhttpurlresponse.response);
            }
            if (!flag)
            {
                TJPoints.tapjoyNotifier.getUpdatePointsFailed("Failed to retrieve points from server");
            }
        }

        _cls1()
        {
            this$0 = TJPoints.this;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        final TJPoints this$0;

        public void run()
        {
            java.util.Map map = TapjoyConnectCore.getURLParams();
            TapjoyUtil.safePut(map, "tap_points", spendTapPoints, true);
            TapjoyHttpURLResponse tapjoyhttpurlresponse = (new TapjoyURLConnection()).getResponseFromURL((new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("points/spend?").toString(), map);
            String s = tapjoyhttpurlresponse.response;
            boolean flag = false;
            if (s != null)
            {
                flag = handleSpendPointsResponse(tapjoyhttpurlresponse.response);
            }
            if (!flag)
            {
                TJPoints.tapjoySpendPointsNotifier.getSpendPointsResponseFailed("Failed to spend points.");
            }
        }

        _cls2()
        {
            this$0 = TJPoints.this;
            super();
        }
    }

}
