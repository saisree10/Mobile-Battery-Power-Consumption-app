// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import java.util.HashMap;
import java.util.Timer;
import org.json.JSONArray;

// Referenced classes of package com.tapjoy:
//            TapjoyVideo, TapjoyLog, TJAdUnitView, TapjoyConnectCore, 
//            TapjoyVideoObject, TapjoyDisplayMetricsUtil

public class TapjoyVideoView extends Activity
    implements android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnErrorListener, android.media.MediaPlayer.OnInfoListener, android.media.MediaPlayer.OnPreparedListener
{

    private static final String BUNDLE_DIALOG_SHOWING = "dialog_showing";
    private static final String BUNDLE_SEEK_TIME = "seek_time";
    private static final int DIALOG_CONNECTIVITY_LOST_ID = 1;
    private static final int DIALOG_WARNING_ID = 0;
    private static final String TAG = "VideoView";
    private static boolean streamingVideo = false;
    static int textSize = 0;
    private static TapjoyVideoObject videoData;
    private static boolean videoError = false;
    private static final String videoSecondsText = " seconds";
    private static final String videoWillResumeText = "";
    private boolean allowBackKey;
    private String cancelMessage;
    private boolean clickRequestSuccess;
    private String connectivityMessage;
    Dialog dialog;
    private boolean dialogShowing;
    private boolean didStartPlaying;
    private boolean firstQuartileSent;
    final Handler mHandler = new Handler();
    final Runnable mUpdateResults = new _cls3();
    private boolean midpointSent;
    private TextView overlayText;
    private RelativeLayout relativeLayout;
    private int seekTime;
    private boolean sendClick;
    private boolean shouldDismiss;
    private ImageView tapjoyImage;
    private boolean thirdQuartileSent;
    private int timeRemaining;
    Timer timer;
    private HashMap trackingUrls;
    private TapjoyVideoBroadcastReceiver videoBroadcastReceiver;
    private String videoURL;
    private VideoView videoView;
    private Bitmap watermark;
    private String webviewURL;

    public TapjoyVideoView()
    {
        videoView = null;
        overlayText = null;
        videoURL = null;
        webviewURL = null;
        cancelMessage = "Currency will not be awarded, are you sure you want to cancel the video?";
        connectivityMessage = "A network connection is necessary to view videos. You will be able to complete the offer and receive your reward on the next connect.";
        trackingUrls = null;
        firstQuartileSent = false;
        midpointSent = false;
        thirdQuartileSent = false;
        didStartPlaying = false;
        timer = null;
        dialogShowing = false;
        sendClick = false;
        clickRequestSuccess = false;
        allowBackKey = false;
        shouldDismiss = false;
        timeRemaining = 0;
        seekTime = 0;
    }

    private void finishWithResult(boolean flag)
    {
        Intent intent = new Intent();
        intent.putExtra("result", flag);
        intent.putExtra("result_string1", Float.toString((float)videoView.getCurrentPosition() / 1000F));
        intent.putExtra("result_string2", Float.toString((float)videoView.getDuration() / 1000F));
        intent.putExtra("callback_id", getIntent().getStringExtra("callback_id"));
        setResult(-1, intent);
        finish();
    }

    private void fireTrackingEvent(final String url, final String event)
    {
        if (url != null && !url.equals(""))
        {
            (new Thread(new _cls2())).start();
        }
    }

    private int getRemainingVideoTime()
    {
        int i = (videoView.getDuration() - videoView.getCurrentPosition()) / 1000;
        if (i < 0)
        {
            i = 0;
        }
        return i;
    }

    private void initVideoView()
    {
        relativeLayout.removeAllViews();
        relativeLayout.setBackgroundColor(0xff000000);
        if (videoView == null && overlayText == null)
        {
            tapjoyImage = new ImageView(this);
            watermark = TapjoyVideo.getWatermarkImage();
            if (watermark != null)
            {
                tapjoyImage.setImageBitmap(watermark);
            }
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            layoutparams.addRule(12);
            layoutparams.addRule(11);
            tapjoyImage.setLayoutParams(layoutparams);
            videoView = new VideoView(this);
            videoView.setOnCompletionListener(this);
            videoView.setOnErrorListener(this);
            videoView.setOnPreparedListener(this);
            android.widget.RelativeLayout.LayoutParams layoutparams1;
            android.widget.RelativeLayout.LayoutParams layoutparams2;
            if (streamingVideo)
            {
                TapjoyLog.i("VideoView", (new StringBuilder()).append("streaming video: ").append(videoURL).toString());
                videoView.setVideoURI(Uri.parse(videoURL));
            } else
            {
                TapjoyLog.i("VideoView", (new StringBuilder()).append("cached video: ").append(videoURL).toString());
                videoView.setVideoPath(videoURL);
            }
            layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-1, -1);
            layoutparams1.addRule(13);
            videoView.setLayoutParams(layoutparams1);
            timeRemaining = videoView.getDuration() / 1000;
            TapjoyLog.i("VideoView", (new StringBuilder()).append("videoView.getDuration(): ").append(videoView.getDuration()).toString());
            TapjoyLog.i("VideoView", (new StringBuilder()).append("timeRemaining: ").append(timeRemaining).toString());
            overlayText = new TextView(this);
            overlayText.setTextSize(textSize);
            overlayText.setTypeface(Typeface.create("default", 1), 1);
            layoutparams2 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            layoutparams2.addRule(12);
            overlayText.setLayoutParams(layoutparams2);
        }
        startVideo();
        relativeLayout.addView(videoView);
        relativeLayout.addView(tapjoyImage);
        relativeLayout.addView(overlayText);
    }

    private void sendTrackingEvent(String s)
    {
        String s1 = (String)trackingUrls.get(s);
        if (s1 == null) goto _L2; else goto _L1
_L1:
        JSONArray jsonarray = new JSONArray(s1);
        int i = 0;
_L3:
        if (i >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        fireTrackingEvent(jsonarray.optString(i), s);
        i++;
        if (true) goto _L3; else goto _L2
        Exception exception;
        exception;
        TapjoyLog.w("VideoView", "Bad video tracking urls array");
_L2:
    }

    private void showVideoCompletionScreen()
    {
        if (shouldDismiss)
        {
            finishWithResult(true);
            return;
        } else
        {
            Intent intent = new Intent(this, com/tapjoy/TJAdUnitView);
            intent.putExtra("view_type", 4);
            intent.putExtra("url", webviewURL);
            intent.putExtra("legacy_view", true);
            startActivityForResult(intent, 0);
            return;
        }
    }

    private void startVideo()
    {
        videoView.requestFocus();
        if (dialogShowing)
        {
            videoView.seekTo(seekTime);
            TapjoyLog.i("VideoView", "dialog is showing -- don't start");
        } else
        {
            TapjoyLog.i("VideoView", "start");
            videoView.seekTo(0);
            videoView.start();
            TapjoyVideo.videoNotifierStart();
        }
        if (timer != null)
        {
            timer.cancel();
        }
        timer = new Timer();
        timer.schedule(new RemainingTime(null), 500L, 100L);
        clickRequestSuccess = false;
        if (sendClick)
        {
            (new Thread(new _cls1())).start();
            sendClick = false;
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        TapjoyLog.i("VideoView", (new StringBuilder()).append("onActivityResult requestCode:").append(i).append(", resultCode: ").append(j).toString());
        Bundle bundle;
        String s;
        if (intent != null)
        {
            bundle = intent.getExtras();
        } else
        {
            bundle = null;
        }
        s = null;
        if (bundle != null)
        {
            s = bundle.getString("result");
        }
        if (s == null || s.length() == 0 || s.equals("offer_wall"))
        {
            finishWithResult(true);
        } else
        if (s.equals("tjvideo"))
        {
            initVideoView();
            return;
        }
    }

    public void onCompletion(MediaPlayer mediaplayer)
    {
        TapjoyLog.i("VideoView", "onCompletion");
        if (timer != null)
        {
            timer.cancel();
        }
        showVideoCompletionScreen();
        if (!videoError)
        {
            TapjoyVideo.videoNotifierComplete();
            sendTrackingEvent("complete");
            (new Thread(new _cls4())).start();
        }
        videoError = false;
        allowBackKey = true;
    }

    protected void onCreate(Bundle bundle)
    {
        TapjoyLog.i("VideoView", "onCreate");
        super.onCreate(bundle);
        TapjoyConnectCore.viewWillOpen(3);
        if (bundle != null)
        {
            TapjoyLog.i("VideoView", "*** Loading saved data from bundle ***");
            seekTime = bundle.getInt("seek_time");
            dialogShowing = bundle.getBoolean("dialog_showing");
        }
        Bundle bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            videoData = (TapjoyVideoObject)bundle1.getSerializable("VIDEO_DATA");
            videoURL = bundle1.getString("VIDEO_URL");
            if (bundle1.containsKey("VIDEO_CANCEL_MESSAGE"))
            {
                cancelMessage = bundle1.getString("VIDEO_CANCEL_MESSAGE");
            }
            if (bundle1.containsKey("VIDEO_SHOULD_DISMISS"))
            {
                shouldDismiss = bundle1.getBoolean("VIDEO_SHOULD_DISMISS");
            }
            if (bundle1.containsKey("VIDEO_TRACKING_URLS"))
            {
                trackingUrls = (HashMap)bundle1.getSerializable("VIDEO_TRACKING_URLS");
            }
        }
        TapjoyLog.i("VideoView", (new StringBuilder()).append("dialogShowing: ").append(dialogShowing).append(", seekTime: ").append(seekTime).toString());
        if (videoData == null) goto _L2; else goto _L1
_L1:
        sendClick = true;
        streamingVideo = false;
        if (TapjoyVideo.getInstance() == null)
        {
            TapjoyLog.i("VideoView", "null video");
            finishWithResult(false);
            return;
        }
        videoURL = videoData.dataLocation;
        webviewURL = videoData.webviewURL;
        if (videoURL == null || videoURL.length() == 0)
        {
            TapjoyLog.i("VideoView", (new StringBuilder()).append("no cached video, try streaming video at location: ").append(videoData.videoURL).toString());
            videoURL = videoData.videoURL;
            streamingVideo = true;
        }
        TapjoyLog.i("VideoView", (new StringBuilder()).append("videoPath: ").append(videoURL).toString());
_L4:
        requestWindowFeature(1);
        relativeLayout = new RelativeLayout(this);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        relativeLayout.setLayoutParams(layoutparams);
        setContentView(relativeLayout);
        if (android.os.Build.VERSION.SDK_INT > 3)
        {
            int i = (new TapjoyDisplayMetricsUtil(this)).getScreenLayoutSize();
            TapjoyLog.i("VideoView", (new StringBuilder()).append("deviceScreenLayoutSize: ").append(i).toString());
            if (i == 4)
            {
                textSize = 32;
            }
        }
        videoBroadcastReceiver = new TapjoyVideoBroadcastReceiver(null);
        registerReceiver(videoBroadcastReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        initVideoView();
        TapjoyLog.i("VideoView", "onCreate DONE");
        TapjoyConnectCore.viewDidOpen(3);
        return;
_L2:
        if (videoURL != null)
        {
            streamingVideo = true;
            sendClick = false;
            TapjoyLog.i("VideoView", (new StringBuilder()).append("playing video only: ").append(videoURL).toString());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected Dialog onCreateDialog(int i)
    {
        TapjoyLog.i("VideoView", "dialog onCreateDialog");
        if (!dialogShowing)
        {
            return dialog;
        }
        i;
        JVM INSTR tableswitch 0 1: default 44
    //                   0 54
    //                   1 140;
           goto _L1 _L2 _L3
_L1:
        dialog = null;
_L5:
        return dialog;
_L2:
        dialog = (new android.app.AlertDialog.Builder(this)).setTitle("Cancel Video?").setMessage(cancelMessage).setNegativeButton("End", new _cls6()).setPositiveButton("Resume", new _cls5()).create();
        dialog.setOnCancelListener(new _cls7());
        dialog.show();
        dialogShowing = true;
        continue; /* Loop/switch isn't completed */
_L3:
        dialog = (new android.app.AlertDialog.Builder(this)).setTitle("Network Connection Lost").setMessage(connectivityMessage).setPositiveButton("Okay", new _cls8()).create();
        dialog.setOnCancelListener(new _cls9());
        dialog.show();
        dialogShowing = true;
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected void onDestroy()
    {
        super.onDestroy();
        if (isFinishing())
        {
            unregisterReceiver(videoBroadcastReceiver);
            TapjoyConnectCore.viewWillClose(3);
            TapjoyConnectCore.viewDidClose(3);
        }
    }

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        videoError = true;
        TapjoyLog.i("VideoView", (new StringBuilder()).append("onError, what: ").append(i).append("extra: ").append(j).toString());
        TapjoyVideo.videoNotifierError(3);
        allowBackKey = true;
        if (timer != null)
        {
            timer.cancel();
        }
        return i == 1 && j == -1004;
    }

    public boolean onInfo(MediaPlayer mediaplayer, int i, int j)
    {
        if (!didStartPlaying) goto _L2; else goto _L1
_L1:
        if (i != 701) goto _L4; else goto _L3
_L3:
        sendTrackingEvent("stall");
_L2:
        return false;
_L4:
        if (i == 702)
        {
            sendTrackingEvent("resume");
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i != 4)
        {
            break MISSING_BLOCK_LABEL_210;
        }
        if (allowBackKey || cancelMessage == null || cancelMessage.length() <= 0) goto _L2; else goto _L1
_L1:
        seekTime = videoView.getCurrentPosition();
        videoView.pause();
        dialogShowing = true;
        showDialog(0);
        TapjoyLog.i("VideoView", (new StringBuilder()).append("PAUSE VIDEO time: ").append(seekTime).toString());
        TapjoyLog.i("VideoView", (new StringBuilder()).append("currentPosition: ").append(videoView.getCurrentPosition()).toString());
        TapjoyLog.i("VideoView", (new StringBuilder()).append("duration: ").append(videoView.getDuration()).append(", elapsed: ").append(videoView.getDuration() - videoView.getCurrentPosition()).toString());
_L4:
        return true;
_L2:
        if (!videoView.isPlaying())
        {
            break MISSING_BLOCK_LABEL_210;
        }
        videoView.stopPlayback();
        showVideoCompletionScreen();
        if (timer == null) goto _L4; else goto _L3
_L3:
        timer.cancel();
        return true;
        return super.onKeyDown(i, keyevent);
    }

    protected void onPause()
    {
        super.onPause();
        if (videoView.isPlaying())
        {
            TapjoyLog.i("VideoView", "onPause");
            videoView.pause();
            seekTime = videoView.getCurrentPosition();
            TapjoyLog.i("VideoView", (new StringBuilder()).append("seekTime: ").append(seekTime).toString());
        }
    }

    public void onPrepared(MediaPlayer mediaplayer)
    {
        mediaplayer.setOnInfoListener(this);
        TapjoyLog.i("VideoView", "onPrepared");
    }

    protected void onResume()
    {
        TapjoyLog.i("VideoView", "onResume");
        super.onResume();
        setRequestedOrientation(0);
        if (seekTime > 0)
        {
            TapjoyLog.i("VideoView", (new StringBuilder()).append("seekTime: ").append(seekTime).toString());
            videoView.seekTo(seekTime);
            if (!dialogShowing || dialog == null || !dialog.isShowing())
            {
                videoView.start();
            }
        }
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        TapjoyLog.i("VideoView", "*** onSaveInstanceState ***");
        TapjoyLog.i("VideoView", (new StringBuilder()).append("dialogShowing: ").append(dialogShowing).append(", seekTime: ").append(seekTime).toString());
        bundle.putBoolean("dialog_showing", dialogShowing);
        bundle.putInt("seek_time", seekTime);
    }

    public void onWindowFocusChanged(boolean flag)
    {
        TapjoyLog.i("VideoView", "onWindowFocusChanged");
        super.onWindowFocusChanged(flag);
    }

    static 
    {
        videoError = false;
        streamingVideo = false;
        textSize = 16;
    }



/*
    static boolean access$1002(TapjoyVideoView tapjoyvideoview, boolean flag)
    {
        tapjoyvideoview.midpointSent = flag;
        return flag;
    }

*/



/*
    static boolean access$1102(TapjoyVideoView tapjoyvideoview, boolean flag)
    {
        tapjoyvideoview.thirdQuartileSent = flag;
        return flag;
    }

*/



/*
    static boolean access$1302(TapjoyVideoView tapjoyvideoview, boolean flag)
    {
        tapjoyvideoview.dialogShowing = flag;
        return flag;
    }

*/





/*
    static boolean access$302(TapjoyVideoView tapjoyvideoview, boolean flag)
    {
        tapjoyvideoview.clickRequestSuccess = flag;
        return flag;
    }

*/






/*
    static boolean access$702(TapjoyVideoView tapjoyvideoview, boolean flag)
    {
        tapjoyvideoview.didStartPlaying = flag;
        return flag;
    }

*/




/*
    static boolean access$902(TapjoyVideoView tapjoyvideoview, boolean flag)
    {
        tapjoyvideoview.firstQuartileSent = flag;
        return flag;
    }

*/

    private class _cls3
        implements Runnable
    {

        final TapjoyVideoView this$0;

        public void run()
        {
            overlayText.setText((new StringBuilder()).append("").append(getRemainingVideoTime()).append(" seconds").toString());
            float f = videoView.getDuration();
            if (f > 0.0F)
            {
                if (!didStartPlaying)
                {
                    sendTrackingEvent("start");
                    didStartPlaying = true;
                }
                float f1 = videoView.getCurrentPosition();
                if (f1 >= f / 4F && !firstQuartileSent)
                {
                    TapjoyLog.i("VideoView", (new StringBuilder()).append("Video 1st quartile: ").append(f1).toString());
                    sendTrackingEvent("firstQuartile");
                    firstQuartileSent = true;
                }
                if (f1 >= f / 2.0F && !midpointSent)
                {
                    TapjoyLog.i("VideoView", (new StringBuilder()).append("Video midpoint: ").append(f1).toString());
                    sendTrackingEvent("midpoint");
                    midpointSent = true;
                }
                if (f1 >= (f * 3F) / 4F && !thirdQuartileSent)
                {
                    TapjoyLog.i("VideoView", (new StringBuilder()).append("Video 3rd quartile: ").append(f1).toString());
                    sendTrackingEvent("thirdQuartile");
                    thirdQuartileSent = true;
                }
            }
        }

        _cls3()
        {
            this$0 = TapjoyVideoView.this;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        final TapjoyVideoView this$0;
        final String val$event;
        final String val$url;

        public void run()
        {
            TapjoyLog.i("VideoView", "Sending video tracking event...");
            TapjoyHttpURLResponse tapjoyhttpurlresponse = (new TapjoyURLConnection()).getResponseFromURL(url);
            if (tapjoyhttpurlresponse.response != null && tapjoyhttpurlresponse.statusCode == 200)
            {
                TapjoyLog.i("VideoView", (new StringBuilder()).append("Video tracking event success: ").append(event).toString());
            }
        }

        _cls2()
        {
            this$0 = TapjoyVideoView.this;
            url = s;
            event = s1;
            super();
        }
    }


    private class RemainingTime extends TimerTask
    {

        final TapjoyVideoView this$0;

        public void run()
        {
            mHandler.post(mUpdateResults);
        }

        private RemainingTime()
        {
            this$0 = TapjoyVideoView.this;
            super();
        }

        RemainingTime(_cls1 _pcls1)
        {
            this();
        }
    }


    private class _cls1
        implements Runnable
    {

        final TapjoyVideoView this$0;

        public void run()
        {
            TapjoyLog.i("VideoView", "SENDING CLICK...");
            TapjoyHttpURLResponse tapjoyhttpurlresponse = (new TapjoyURLConnection()).getResponseFromURL(TapjoyVideoView.videoData.clickURL);
            if (tapjoyhttpurlresponse.response != null && tapjoyhttpurlresponse.response.contains("OK"))
            {
                TapjoyLog.i("VideoView", "CLICK REQUEST SUCCESS!");
                clickRequestSuccess = true;
            }
        }

        _cls1()
        {
            this$0 = TapjoyVideoView.this;
            super();
        }
    }


    private class _cls4
        implements Runnable
    {

        final TapjoyVideoView this$0;

        public void run()
        {
            if (clickRequestSuccess)
            {
                TapjoyConnectCore.getInstance().actionComplete(TapjoyVideoView.videoData.offerID);
            }
        }

        _cls4()
        {
            this$0 = TapjoyVideoView.this;
            super();
        }
    }


    private class TapjoyVideoBroadcastReceiver extends BroadcastReceiver
    {

        final TapjoyVideoView this$0;

        public void onReceive(Context context, Intent intent)
        {
            if (intent.getBooleanExtra("noConnectivity", false))
            {
                videoView.pause();
                dialogShowing = true;
                showDialog(1);
                TapjoyLog.i("VideoView", "No network connectivity during video playback");
            }
        }

        private TapjoyVideoBroadcastReceiver()
        {
            this$0 = TapjoyVideoView.this;
            super();
        }

        TapjoyVideoBroadcastReceiver(_cls1 _pcls1)
        {
            this();
        }
    }


    private class _cls6
        implements android.content.DialogInterface.OnClickListener
    {

        final TapjoyVideoView this$0;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            finishWithResult(false);
        }

        _cls6()
        {
            this$0 = TapjoyVideoView.this;
            super();
        }
    }


    private class _cls5
        implements android.content.DialogInterface.OnClickListener
    {

        final TapjoyVideoView this$0;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            dialoginterface.dismiss();
            videoView.seekTo(seekTime);
            videoView.start();
            dialogShowing = false;
            TapjoyLog.i("VideoView", (new StringBuilder()).append("RESUME VIDEO time: ").append(seekTime).toString());
            TapjoyLog.i("VideoView", (new StringBuilder()).append("currentPosition: ").append(videoView.getCurrentPosition()).toString());
            TapjoyLog.i("VideoView", (new StringBuilder()).append("duration: ").append(videoView.getDuration()).append(", elapsed: ").append(videoView.getDuration() - videoView.getCurrentPosition()).toString());
        }

        _cls5()
        {
            this$0 = TapjoyVideoView.this;
            super();
        }
    }


    private class _cls7
        implements android.content.DialogInterface.OnCancelListener
    {

        final TapjoyVideoView this$0;

        public void onCancel(DialogInterface dialoginterface)
        {
            TapjoyLog.i("VideoView", "dialog onCancel");
            dialoginterface.dismiss();
            videoView.seekTo(seekTime);
            videoView.start();
            dialogShowing = false;
        }

        _cls7()
        {
            this$0 = TapjoyVideoView.this;
            super();
        }
    }


    private class _cls8
        implements android.content.DialogInterface.OnClickListener
    {

        final TapjoyVideoView this$0;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            dialoginterface.dismiss();
            dialogShowing = false;
            finishWithResult(false);
        }

        _cls8()
        {
            this$0 = TapjoyVideoView.this;
            super();
        }
    }


    private class _cls9
        implements android.content.DialogInterface.OnCancelListener
    {

        final TapjoyVideoView this$0;

        public void onCancel(DialogInterface dialoginterface)
        {
            TapjoyLog.i("VideoView", "dialog onCancel");
            dialoginterface.dismiss();
            dialogShowing = false;
            finishWithResult(false);
        }

        _cls9()
        {
            this$0 = TapjoyVideoView.this;
            super();
        }
    }

}
