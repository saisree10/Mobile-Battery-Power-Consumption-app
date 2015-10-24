// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.ConsoleMessage;
import android.webkit.WebView;
import com.tapjoy.mraid.listener.MraidViewListener;
import com.tapjoy.mraid.view.MraidView;
import java.util.Timer;

// Referenced classes of package com.tapjoy:
//            TapjoyLog, TapjoyDisplayAd

class this._cls1
    implements MraidViewListener
{

    final is._cls0 this$1;

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
            TapjoyDisplayAd.access$000(_fld0).startActivity(intent);
        }
        if (resumeTimer != null)
        {
            resumeTimer.cancel();
        }
        elapsed_time = 0L;
        resumeTimer = new Timer();
        resumeTimer.schedule(new r(_fld0, null), 10000L, 10000L);
        return true;
    }

    r()
    {
        this$1 = this._cls1.this;
        super();
    }
}
