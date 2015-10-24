// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.tapjoy.mraid.view.MraidView;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.jar.JarFile;

// Referenced classes of package com.tapjoy:
//            TapjoyUtil, TapjoyConnectCore, TapjoyLog, TapjoyVideo, 
//            TJAdUnitJSBridge, TJEventData, TJEventManager, TJEvent, 
//            TJEventCallback

public class TJAdUnitView extends Activity
{

    private static final int CLOSE_BUTTON_OFFSET = 10;
    private static final long DELAY_BEFORE_CLOSE_FADE_IN = 2000L;
    private static final long DURATION_OF_CLOSE_FADE_IN = 500L;
    private static final String TAG = "TJAdUnitView";
    protected TJAdUnitJSBridge bridge;
    private String callbackID;
    private String connectivityErrorMessage;
    private TJEvent event;
    private TJEventData eventData;
    protected int historyIndex;
    private boolean isLegacyView;
    protected RelativeLayout layout;
    protected String offersURL;
    protected boolean pauseCalled;
    private ProgressBar progressBar;
    protected boolean redirectedActivity;
    protected boolean skipOfferWall;
    protected String url;
    private int viewType;
    protected MraidView webView;

    public TJAdUnitView()
    {
        layout = null;
        webView = null;
        offersURL = null;
        url = null;
        pauseCalled = false;
        skipOfferWall = false;
        viewType = 0;
        isLegacyView = false;
        historyIndex = 0;
        connectivityErrorMessage = "A connection error occurred loading this content.";
    }

    private void finishActivity()
    {
        if (viewType == 4)
        {
            finishWithResult("offer_wall");
        } else
        if (this != null)
        {
            finish();
            return;
        }
    }

    private void finishWithResult(String s)
    {
        Intent intent = new Intent();
        intent.putExtra("result", s);
        setResult(-1, intent);
        finish();
    }

    private Bitmap getCloseBitmap()
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        byte abyte0[] = (byte[])(byte[])TapjoyUtil.getResource("tj_close_button.png");
        Bitmap bitmap;
        float f;
        Exception exception;
        URL url1;
        AssetManager assetmanager;
        InputStream inputstream;
        String s;
        int i;
        JarFile jarfile;
        java.util.jar.JarEntry jarentry;
        InputStream inputstream1;
        if (abyte0 != null)
        {
            BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, options);
            bitmap = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
        } else
        {
            bitmap = null;
        }
        if (bitmap != null) goto _L2; else goto _L1
_L1:
        try
        {
            url1 = com/tapjoy/TJAdUnitView.getClassLoader().getResource("com/tapjoy/res/tj_close_button.png");
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        if (url1 != null) goto _L4; else goto _L3
_L3:
        assetmanager = getAssets();
        BitmapFactory.decodeStream(assetmanager.open("com/tapjoy/res/tj_close_button.png"), null, options);
        inputstream = assetmanager.open("com/tapjoy/res/tj_close_button.png");
_L5:
        bitmap = BitmapFactory.decodeStream(inputstream);
        inputstream.close();
_L2:
        f = TapjoyConnectCore.getDeviceScreenDensityScale();
        if (bitmap != null)
        {
            bitmap = Bitmap.createScaledBitmap(bitmap, (int)(f * (float)options.outWidth), (int)(f * (float)options.outHeight), true);
        }
        return bitmap;
_L4:
        s = url1.getFile();
        if (s.startsWith("jar:"))
        {
            s = s.substring(4);
        }
        if (s.startsWith("file:"))
        {
            s = s.substring(5);
        }
        i = s.indexOf("!");
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_208;
        }
        s = s.substring(0, i);
        jarfile = new JarFile(s);
        jarentry = jarfile.getJarEntry("com/tapjoy/res/tj_close_button.png");
        BitmapFactory.decodeStream(jarfile.getInputStream(jarentry), null, options);
        inputstream1 = jarfile.getInputStream(jarentry);
        inputstream = inputstream1;
          goto _L5
    }

    private void handleTJVideoURL(String s)
    {
        Map map = TapjoyUtil.convertURLParams(s.substring(s.indexOf("://") + "://".length()), true);
        String s1 = (String)map.get("video_id");
        String s2 = (String)map.get("amount");
        String s3 = (String)map.get("currency_name");
        String s4 = (String)map.get("click_url");
        String s5 = (String)map.get("video_complete_url");
        String s6 = (String)map.get("video_url");
        TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("video_id: ").append(s1).toString());
        TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("amount: ").append(s2).toString());
        TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("currency_name: ").append(s3).toString());
        TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("click_url: ").append(s4).toString());
        TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("video_complete_url: ").append(s5).toString());
        TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("video_url: ").append(s6).toString());
        if (TapjoyVideo.getInstance().startVideo(s1, s3, s2, s4, s5, s6))
        {
            TapjoyLog.i("TJAdUnitView", "Video started successfully");
            return;
        }
        TapjoyLog.e("TJAdUnitView", (new StringBuilder()).append("Unable to play video: ").append(s1).toString());
        AlertDialog alertdialog = (new android.app.AlertDialog.Builder(this)).setTitle("").setMessage("Unable to play video.").setPositiveButton("OK", new _cls4()).create();
        try
        {
            alertdialog.show();
            return;
        }
        catch (Exception exception)
        {
            TapjoyLog.e("TJAdUnitView", (new StringBuilder()).append("e: ").append(exception.toString()).toString());
        }
    }

    public void finish()
    {
        if (viewType != 1 && viewType != 4)
        {
            Intent intent = new Intent();
            intent.putExtra("result", Boolean.TRUE);
            intent.putExtra("callback_id", callbackID);
            setResult(-1, intent);
        }
        super.finish();
    }

    public void handleClose()
    {
        if (webView.videoPlaying())
        {
            webView.videoViewCleanup();
            return;
        }
        if (bridge.customClose)
        {
            TapjoyLog.i("TJAdUnitView", "customClose");
            if (bridge.shouldClose)
            {
                finishActivity();
                return;
            } else
            {
                TapjoyLog.i("TJAdUnitView", "closeRequested...");
                bridge.closeRequested();
                _cls5 _lcls5 = new _cls5();
                (new Timer()).schedule(_lcls5, 1000L);
                return;
            }
        } else
        {
            finishActivity();
            return;
        }
    }

    public void handleWebViewOnPageFinished(WebView webview, String s)
    {
        TapjoyLog.i("TJAdUnitView", "handleWebViewOnPageFinished");
    }

    public void handleWebViewOnReceivedError(WebView webview, int i, String s, String s1)
    {
        TapjoyLog.i("TJAdUnitView", "handleWebViewError");
        if (!isFinishing())
        {
            (new android.app.AlertDialog.Builder(this)).setMessage(connectivityErrorMessage).setPositiveButton("OK", new _cls3()).create().show();
        }
    }

    protected void initUI()
    {
        Bundle bundle;
        TapjoyLog.i("TJAdUnitView", "initUI");
        bundle = getIntent().getExtras();
        if (bundle == null) goto _L2; else goto _L1
_L1:
        String s;
        String s1;
        boolean flag;
        android.view.ViewGroup.LayoutParams layoutparams;
        final ImageButton closeButton;
        Bitmap bitmap;
        android.widget.RelativeLayout.LayoutParams layoutparams1;
        int i;
        android.widget.RelativeLayout.LayoutParams layoutparams2;
        if (bundle.getString("DISPLAY_AD_URL") != null)
        {
            skipOfferWall = true;
            offersURL = bundle.getString("DISPLAY_AD_URL");
        } else
        if (bundle.getSerializable("URL_PARAMS") != null)
        {
            skipOfferWall = false;
            HashMap hashmap = (HashMap)bundle.getSerializable("URL_PARAMS");
            TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("urlParams: ").append(hashmap).toString());
            offersURL = (new StringBuilder()).append(TapjoyConnectCore.getHostURL()).append("get_offers/webpage?").append(TapjoyUtil.convertURLParams(hashmap, false)).toString();
        }
        eventData = (TJEventData)bundle.getSerializable("tjevent");
        if (eventData != null)
        {
            event = TJEventManager.get(eventData.guid);
        }
        viewType = bundle.getInt("view_type");
        s = bundle.getString("html");
        s1 = bundle.getString("base_url");
        url = bundle.getString("url");
        callbackID = bundle.getString("callback_id");
        isLegacyView = bundle.getBoolean("legacy_view");
        if (webView != null) goto _L2; else goto _L3
_L3:
        webView = new MraidView(this);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setListener(new TJAdUnitViewListener(null));
        bridge = new TJAdUnitJSBridge(this, webView, eventData);
        if (viewType != 1) goto _L5; else goto _L4
_L4:
        TapjoyLog.i("TJAdUnitView", "Loading event data");
        if (event == null) goto _L7; else goto _L6
_L6:
        webView.loadDataWithBaseURL(eventData.baseURL, eventData.httpResponse, "text/html", "utf-8", null);
        webView.setVisibility(4);
        TapjoyConnectCore.viewWillOpen(4);
        if (event.getCallback() == null) goto _L7; else goto _L8
_L8:
        event.getCallback().contentDidShow(event);
        flag = false;
_L13:
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            getWindow().setFlags(0x1000000, 0x1000000);
        }
        getWindow().setBackgroundDrawable(new ColorDrawable(0x60000000));
        layoutparams = new android.view.ViewGroup.LayoutParams(-1, -1);
        layout = new RelativeLayout(this);
        layout.setLayoutParams(layoutparams);
        if (viewType == 1)
        {
            layout.setBackgroundColor(0);
            layout.getBackground().setAlpha(0);
        } else
        {
            layout.setBackgroundColor(-1);
            layout.getBackground().setAlpha(255);
        }
        webView.setLayoutParams(layoutparams);
        if (webView.getParent() != null)
        {
            ((ViewGroup)webView.getParent()).removeView(webView);
        }
        layout.addView(webView, -1, -1);
        setContentView(layout);
        if (isLegacyView && flag)
        {
            progressBar = new ProgressBar(this, null, 0x101007a);
            progressBar.setVisibility(0);
            layoutparams2 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            layoutparams2.addRule(13);
            progressBar.setLayoutParams(layoutparams2);
            layout.addView(progressBar);
        }
        if (webView.isMraid()) goto _L2; else goto _L9
_L9:
        closeButton = new ImageButton(this);
        bitmap = getCloseBitmap();
        if (bitmap == null) goto _L11; else goto _L10
_L10:
        closeButton.setImageBitmap(bitmap);
        closeButton.setBackgroundColor(0xffffff);
        closeButton.setOnClickListener(new _cls1());
        layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams1.addRule(10);
        layoutparams1.addRule(11);
        i = (int)(-10F * TapjoyConnectCore.getDeviceScreenDensityScale());
        layoutparams1.setMargins(0, i, i, 0);
        layout.addView(closeButton, layoutparams1);
        if (android.os.Build.VERSION.SDK_INT >= 12)
        {
            closeButton.setAlpha(0.0F);
            closeButton.setVisibility(0);
            closeButton.setClickable(false);
            (new Handler()).postDelayed(new _cls2(), 2000L);
        }
_L2:
        return;
_L5:
        if (s != null && s.length() > 0)
        {
            TapjoyLog.i("TJAdUnitView", "Loading HTML data");
            if (isLegacyView)
            {
                webView.loadDataWithBaseURL(s1, s, "text/html", "utf-8", null);
            } else
            {
                webView.loadDataWithBaseURL(null, s, "text/html", "utf-8", null);
            }
        } else
        if (url != null)
        {
            TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("Load URL: ").append(url).toString());
            webView.loadUrl(url);
        } else
        if (offersURL != null)
        {
            TapjoyLog.i("TJAdUnitView", "Load Offer Wall URL");
            webView.loadUrl(offersURL);
        }
        flag = true;
        continue; /* Loop/switch isn't completed */
_L11:
        Log.e("TJAdUnitView", "Error loading bitmap data for close button!");
        return;
_L7:
        flag = false;
        if (true) goto _L13; else goto _L12
_L12:
    }

    protected boolean isNetworkAvailable()
    {
        ConnectivityManager connectivitymanager = (ConnectivityManager)getSystemService("connectivity");
        return connectivitymanager.getActiveNetworkInfo() != null && connectivitymanager.getActiveNetworkInfo().isAvailable() && connectivitymanager.getActiveNetworkInfo().isConnected();
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        Log.i("TJAdUnitView", (new StringBuilder()).append("onActivityResult requestCode:").append(i).append(", resultCode: ").append(j).toString());
        Bundle bundle = null;
        if (intent != null)
        {
            bundle = intent.getExtras();
        }
        if (bundle != null && bundle.getString("callback_id") != null)
        {
            TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("onActivityResult extras: ").append(bundle.keySet()).toString());
            TJAdUnitJSBridge tjadunitjsbridge = bridge;
            String s = bundle.getString("callback_id");
            Object aobj[] = new Object[3];
            aobj[0] = Boolean.valueOf(bundle.getBoolean("result"));
            aobj[1] = bundle.getString("result_string1");
            aobj[2] = bundle.getString("result_string2");
            tjadunitjsbridge.invokeJSCallback(s, aobj);
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        TapjoyLog.i("TJAdUnitView", "onConfigurationChanged");
        super.onConfigurationChanged(configuration);
        initUI();
    }

    protected void onCreate(Bundle bundle)
    {
        if (android.os.Build.VERSION.SDK_INT < 11)
        {
            setTheme(0x103000f);
        } else
        {
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
        }
        TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("TJAdUnitView onCreate: ").append(bundle).toString());
        super.onCreate(bundle);
        initUI();
    }

    protected void onDestroy()
    {
        super.onDestroy();
        TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("onDestroy isFinishing: ").append(isFinishing()).toString());
        if (!isFinishing())
        {
            break MISSING_BLOCK_LABEL_138;
        }
        if (viewType == 1)
        {
            bridge.destroy();
            TapjoyConnectCore.viewDidClose(4);
            if (event != null && event.getCallback() != null)
            {
                event.getCallback().contentDidDisappear(event);
            }
            TJEventManager.remove(eventData.guid);
        }
        if (webView == null)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        Exception exception1;
        try
        {
            android/webkit/WebView.getMethod("onPause", new Class[0]).invoke(webView, new Object[0]);
        }
        catch (Exception exception) { }
        webView = null;
        return;
        exception1;
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            handleClose();
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    protected void onPause()
    {
        super.onPause();
        pauseCalled = true;
        try
        {
            android/webkit/WebView.getMethod("onPause", new Class[0]).invoke(webView, new Object[0]);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected void onRestoreInstanceState(Bundle bundle)
    {
        super.onRestoreInstanceState(bundle);
        if (webView != null)
        {
            webView.restoreState(bundle);
        }
    }

    protected void onResume()
    {
        super.onResume();
        try
        {
            android/webkit/WebView.getMethod("onResume", new Class[0]).invoke(webView, new Object[0]);
        }
        catch (Exception exception) { }
        if (viewType == 1 && bridge.didLaunchOtherActivity)
        {
            TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("onResume bridge.didLaunchOtherActivity callbackID: ").append(bridge.otherActivityCallbackID).toString());
            TJAdUnitJSBridge tjadunitjsbridge = bridge;
            String s = bridge.otherActivityCallbackID;
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.TRUE;
            tjadunitjsbridge.invokeJSCallback(s, aobj);
            bridge.didLaunchOtherActivity = false;
        }
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        if (webView != null)
        {
            webView.saveState(bundle);
        }
    }







    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        final TJAdUnitView this$0;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            dialoginterface.dismiss();
        }

        _cls4()
        {
            this$0 = TJAdUnitView.this;
            super();
        }
    }


    private class _cls5 extends TimerTask
    {

        final TJAdUnitView this$0;

        public void run()
        {
            if (bridge.shouldClose)
            {
                TapjoyLog.i("TJAdUnitView", "customClose timeout");
                finishActivity();
            }
        }

        _cls5()
        {
            this$0 = TJAdUnitView.this;
            super();
        }
    }


    private class _cls3
        implements android.content.DialogInterface.OnClickListener
    {

        final TJAdUnitView this$0;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            dialoginterface.cancel();
        }

        _cls3()
        {
            this$0 = TJAdUnitView.this;
            super();
        }
    }


    private class TJAdUnitViewListener
        implements MraidViewListener
    {

        final TJAdUnitView this$0;

        public boolean onClose()
        {
            finish();
            return false;
        }

        public boolean onConsoleMessage(ConsoleMessage consolemessage)
        {
            int i = 0;
            if (bridge.shouldClose)
            {
                String as[] = {
                    "Uncaught", "uncaught", "Error", "error", "not defined"
                };
                TapjoyLog.i("TJAdUnitView", "shouldClose...");
                for (int j = as.length; i < j; i++)
                {
                    String s = as[i];
                    if (consolemessage.message().contains(s))
                    {
                        handleClose();
                    }
                }

            }
            return true;
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
            handleWebViewOnPageFinished(webview, s);
            if (isLegacyView)
            {
                progressBar.setVisibility(8);
            }
            bridge.display();
            if (webView != null && webView.isMraid())
            {
                bridge.allowRedirect = false;
            }
        }

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("onPageStarted: ").append(s).toString());
            if (isLegacyView)
            {
                progressBar.setVisibility(0);
                progressBar.bringToFront();
            }
            if (bridge != null)
            {
                bridge.allowRedirect = true;
                bridge.customClose = false;
                bridge.shouldClose = false;
            }
        }

        public boolean onReady()
        {
            return false;
        }

        public void onReceivedError(WebView webview, int i, String s, String s1)
        {
            handleWebViewOnReceivedError(webview, i, s, s1);
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
            if (!isNetworkAvailable())
            {
                handleWebViewOnReceivedError(webview, 0, "Connection not properly established", s);
                return true;
            }
            redirectedActivity = false;
            TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("interceptURL: ").append(s).toString());
            if (webView != null && webView.isMraid() && s.contains("mraid"))
            {
                return false;
            }
            if (viewType == 4 && s.contains("offer_wall"))
            {
                finishWithResult("offer_wall");
                return true;
            }
            if (viewType == 4 && s.contains("tjvideo"))
            {
                finishWithResult("tjvideo");
                return true;
            }
            if (s.startsWith("tjvideo://"))
            {
                handleTJVideoURL(s);
                return true;
            }
            if (s.contains("showOffers"))
            {
                TapjoyLog.i("TJAdUnitView", "showOffers");
                (new TJCOffers(TJAdUnitView.this)).showOffers(null);
                return true;
            }
            if (s.contains("dismiss"))
            {
                TapjoyLog.i("TJAdUnitView", "dismiss");
                finish();
                return true;
            }
            if (s.contains("ws.tapjoyads.com") || s.contains("tjyoutubevideo=true") || s.contains(TapjoyConnectCore.getRedirectDomain()) || s.contains(TapjoyUtil.getRedirectDomain(TapjoyConnectCore.getEventURL())))
            {
                TapjoyLog.i("TJAdUnitView", (new StringBuilder()).append("Open redirecting URL:").append(s).toString());
                ((MraidView)webview).loadUrlStandard(s);
                return true;
            }
            if (bridge.allowRedirect)
            {
                redirectedActivity = true;
                return false;
            } else
            {
                webview.loadUrl(s);
                return true;
            }
        }

        private TJAdUnitViewListener()
        {
            this$0 = TJAdUnitView.this;
            super();
        }

        TJAdUnitViewListener(_cls1 _pcls1)
        {
            this();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        final TJAdUnitView this$0;

        public void onClick(View view)
        {
            handleClose();
        }

        _cls1()
        {
            this$0 = TJAdUnitView.this;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        final TJAdUnitView this$0;
        final ImageButton val$closeButton;

        public void run()
        {
            class _cls1
                implements android.animation.Animator.AnimatorListener
            {

                final _cls2 this$1;

                public void onAnimationCancel(Animator animator)
                {
                }

                public void onAnimationEnd(Animator animator)
                {
                    closeButton.setClickable(true);
                }

                public void onAnimationRepeat(Animator animator)
                {
                }

                public void onAnimationStart(Animator animator)
                {
                }

                _cls1()
                {
                    this$1 = _cls2.this;
                    super();
                }
            }

            closeButton.animate().alpha(1.0F).setDuration(500L).setListener(new _cls1());
        }

        _cls2()
        {
            this$0 = TJAdUnitView.this;
            closeButton = imagebutton;
            super();
        }
    }

}
