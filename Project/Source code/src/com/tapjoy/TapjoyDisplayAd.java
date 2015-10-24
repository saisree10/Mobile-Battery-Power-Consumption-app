// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import android.view.View;
import com.tapjoy.mraid.view.MraidView;
import java.util.Map;
import java.util.Timer;

// Referenced classes of package com.tapjoy:
//            TapjoyURLConnection, TapjoyLog, TapjoyDisplayAdNotifier, TapjoyConnectCore, 
//            TapjoyUtil

public class TapjoyDisplayAd
{

    private static final String TAG = "Banner Ad";
    private static int bannerHeight;
    private static int bannerWidth;
    private static TapjoyDisplayAdNotifier displayAdNotifier;
    private static String displayAdSize;
    public static Map displayAdURLParams;
    private static String htmlData;
    private static String lastCurrencyID;
    private static TapjoyURLConnection tapjoyURLConnection = null;
    private Activity activityContext;
    View adView;
    private boolean autoRefresh;
    long elapsed_time;
    Bitmap lastAd;
    Timer resumeTimer;
    Timer timer;
    MraidView webView;

    public TapjoyDisplayAd(Context context)
    {
        setDisplayAdSize("640x100");
        tapjoyURLConnection = new TapjoyURLConnection();
    }

    public static String getHtmlString()
    {
        return htmlData;
    }

    public void enableAutoRefresh(boolean flag)
    {
        autoRefresh = flag;
    }

    public void getDisplayAd(Activity activity, TapjoyDisplayAdNotifier tapjoydisplayadnotifier)
    {
        TapjoyLog.i("Banner Ad", "Get Banner Ad");
        getDisplayAd(activity, null, tapjoydisplayadnotifier);
    }

    public void getDisplayAd(Activity activity, String s, TapjoyDisplayAdNotifier tapjoydisplayadnotifier)
    {
        TapjoyLog.i("Banner Ad", (new StringBuilder()).append("Get Banner Ad, currencyID: ").append(s).toString());
        displayAdNotifier = tapjoydisplayadnotifier;
        if (activity == null)
        {
            Log.e("Banner Ad", "getDisplayAd must take an Activity context");
            if (displayAdNotifier != null)
            {
                displayAdNotifier.getDisplayAdResponseFailed("getDisplayAd must take an Activity context");
            }
            return;
        } else
        {
            activityContext = activity;
            activityContext.runOnUiThread(new _cls1());
            lastCurrencyID = s;
            displayAdURLParams = TapjoyConnectCore.getURLParams();
            TapjoyUtil.safePut(displayAdURLParams, "size", displayAdSize, true);
            TapjoyUtil.safePut(displayAdURLParams, "currency_id", s, true);
            GetBannerAdTask getbanneradtask = new GetBannerAdTask(null);
            Object aobj[] = new Object[2];
            aobj[0] = (new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("display_ad.html?").toString();
            aobj[1] = displayAdURLParams;
            getbanneradtask.execute(aobj);
            return;
        }
    }

    public String getDisplayAdSize()
    {
        return displayAdSize;
    }

    public void setDisplayAdSize(String s)
    {
        displayAdSize = s;
        if (s.equals("320x50"))
        {
            bannerWidth = 320;
            bannerHeight = 50;
        } else
        {
            if (s.equals("640x100"))
            {
                bannerWidth = 640;
                bannerHeight = 100;
                return;
            }
            if (s.equals("768x90"))
            {
                bannerWidth = 768;
                bannerHeight = 90;
                return;
            }
        }
    }








/*
    static String access$402(String s)
    {
        htmlData = s;
        return s;
    }

*/




    private class _cls1
        implements Runnable
    {

        final TapjoyDisplayAd this$0;

        public void run()
        {
            webView = new MraidView(activityContext);
        }

        _cls1()
        {
            this$0 = TapjoyDisplayAd.this;
            super();
        }
    }


    private class GetBannerAdTask extends AsyncTask
    {

        final TapjoyDisplayAd this$0;

        protected transient TapjoyHttpURLResponse doInBackground(Object aobj[])
        {
            String s = (String)aobj[0];
            Map map = (Map)aobj[1];
            return TapjoyDisplayAd.tapjoyURLConnection.getResponseFromURL(s, map);
        }

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground(aobj);
        }

        protected void onPostExecute(TapjoyHttpURLResponse tapjoyhttpurlresponse)
        {
            if (tapjoyhttpurlresponse == null) goto _L2; else goto _L1
_L1:
            tapjoyhttpurlresponse.statusCode;
            JVM INSTR tableswitch 200 200: default 28
        //                       200 39;
               goto _L3 _L4
_L3:
            TapjoyDisplayAd.displayAdNotifier.getDisplayAdResponseFailed("No ad to display.");
_L2:
            return;
_L4:
            TapjoyDisplayAd.htmlData = tapjoyhttpurlresponse.response;
            if (TapjoyDisplayAd.htmlData == null)
            {
                TapjoyLog.d("Banner Ad", "unexpected 200 response with no content");
                TapjoyDisplayAd.displayAdNotifier.getDisplayAdResponseFailed("No ad to display.");
                return;
            }
            webView.getSettings().setJavaScriptEnabled(true);
            webView.setPlacementType(com.tapjoy.mraid.view.MraidView.PLACEMENT_TYPE.INLINE);
            TapjoyLog.i("Banner Ad", (new StringBuilder()).append("response: ").append(tapjoyhttpurlresponse.response).toString());
            android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(TapjoyDisplayAd.bannerWidth, TapjoyDisplayAd.bannerHeight);
            webView.setLayoutParams(layoutparams);
            webView.setInitialScale(100);
            webView.setBackgroundColor(0);
            webView.loadDataWithBaseURL(null, tapjoyhttpurlresponse.response, "text/html", "utf-8", null);
            TapjoyLog.i("Banner Ad", (new StringBuilder()).append("isMraid: ").append(webView.isMraid()).toString());
            class _cls1
                implements MraidViewListener
            {

                final GetBannerAdTask this$1;

                public boolean onClose()
                {
                    return false;
                }

                public boolean onConsoleMessage(ConsoleMessage consolemessage)
                {
                    return false;
                }

                public boolean onEventFired()
                {
                    return false;
                }

                public boolean onExpand()
                {
                    return false;
                }

                public boolean onExpandClose()
                {
                    return false;
                }

                public void onPageFinished(WebView webview, String s)
                {
                }

                public void onPageStarted(WebView webview, String s, Bitmap bitmap)
                {
                }

                public boolean onReady()
                {
                    return false;
                }

                public void onReceivedError(WebView webview, int i, String s, String s1)
                {
                }

                public boolean onResize()
                {
                    return false;
                }

                public boolean onResizeClose()
                {
                    return false;
                }

                public boolean shouldOverrideUrlLoading(WebView webview, String s)
                {
                    TapjoyLog.i("Banner Ad", (new StringBuilder()).append("shouldOverrideUrlLoading: ").append(s).toString());
                    if (s.contains("ws.tapjoyads.com") || s.contains("tjyoutubevideo=true"))
                    {
                        TapjoyLog.i("Banner Ad", (new StringBuilder()).append("Open redirecting URL = [").append(s).append("]").toString());
                        ((MraidView)webview).loadUrlStandard(s);
                    } else
                    {
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
                        activityContext.startActivity(intent);
                    }
                    if (resumeTimer != null)
                    {
                        resumeTimer.cancel();
                    }
                    elapsed_time = 0L;
                    resumeTimer = new Timer();
                    resumeTimer.schedule(new CheckForResumeTimer(null), 10000L, 10000L);
                    return true;
                }

                _cls1()
                {
                    this$1 = GetBannerAdTask.this;
                    super();
                }

                private class CheckForResumeTimer extends TimerTask
                {

                    final TapjoyDisplayAd this$0;

                    public void run()
                    {
                        TapjoyDisplayAd tapjoydisplayad = TapjoyDisplayAd.this;
                        tapjoydisplayad.elapsed_time = 10000L + tapjoydisplayad.elapsed_time;
                        TapjoyLog.i("Banner Ad", (new StringBuilder()).append("banner elapsed_time: ").append(elapsed_time).append(" (").append(elapsed_time / 1000L / 60L).append("m ").append((elapsed_time / 1000L) % 60L).append("s)").toString());
                        if (adView == null)
                        {
                            cancel();
                        } else
                        {
                            TapjoyLog.i("Banner Ad", (new StringBuilder()).append("adView.isShown: ").append(adView.isShown()).toString());
                            if (adView.isShown() && TapjoyConnectCore.getInstance() != null)
                            {
                                TapjoyLog.i("Banner Ad", "call connect");
                                TapjoyConnectCore.getInstance().callConnect();
                                cancel();
                            }
                            if (elapsed_time >= 0x124f80L)
                            {
                                cancel();
                                return;
                            }
                        }
                    }

                    private CheckForResumeTimer()
                    {
                        this$0 = TapjoyDisplayAd.this;
                        super();
                    }

                    CheckForResumeTimer(_cls1 _pcls1)
                    {
                        this();
                    }
                }

            }

            if (!webView.isMraid())
            {
                webView.setListener(new _cls1());
            }
            if (adView != null)
            {
                lastAd = TapjoyUtil.createBitmapFromView(adView);
            }
            adView = webView;
            TapjoyDisplayAd.displayAdNotifier.getDisplayAdResponse(adView);
            if (timer != null)
            {
                timer.cancel();
                timer = null;
            }
            if (autoRefresh && timer == null)
            {
                TapjoyLog.i("Banner Ad", "will refresh banner ad in 60000ms...");
                timer = new Timer();
                timer.schedule(new RefreshTimer(null), 60000L);
                return;
            }
            if (true) goto _L2; else goto _L5
_L5:
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((TapjoyHttpURLResponse)obj);
        }

        protected volatile void onProgressUpdate(Object aobj[])
        {
            onProgressUpdate((Void[])aobj);
        }

        protected transient void onProgressUpdate(Void avoid[])
        {
        }

        private GetBannerAdTask()
        {
            this$0 = TapjoyDisplayAd.this;
            super();
        }

        GetBannerAdTask(_cls1 _pcls1)
        {
            this();
        }

        private class RefreshTimer extends TimerTask
        {

            final TapjoyDisplayAd this$0;

            public void run()
            {
                if (webView.getState().equals(com.tapjoy.mraid.view.MraidView.VIEW_STATE.DEFAULT.toString().toLowerCase(Locale.ENGLISH)))
                {
                    TapjoyLog.i("Banner Ad", "refreshing banner ad...");
                    getDisplayAd(activityContext, TapjoyDisplayAd.lastCurrencyID, TapjoyDisplayAd.displayAdNotifier);
                    timer.cancel();
                    timer = null;
                    return;
                } else
                {
                    TapjoyLog.i("Banner Ad", "ad is not in default state.  will try refreshing again in 60000s...");
                    timer.cancel();
                    timer = null;
                    timer = new Timer();
                    timer.schedule(new RefreshTimer(), 60000L);
                    return;
                }
            }

            private RefreshTimer()
            {
                this$0 = TapjoyDisplayAd.this;
                super();
            }

            RefreshTimer(_cls1 _pcls1)
            {
                this();
            }
        }

    }

}
