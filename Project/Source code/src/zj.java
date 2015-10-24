// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.SystemClock;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.dianxinos.optimizer.module.messagebox.WebActivity;
import com.dianxinos.powermanager.ui.MainTitle;
import org.json.JSONException;
import org.json.JSONObject;

public class zj extends WebChromeClient
{

    final MainTitle a;
    final ProgressBar b;
    final WebActivity c;

    public zj(WebActivity webactivity, MainTitle maintitle, ProgressBar progressbar)
    {
        c = webactivity;
        a = maintitle;
        b = progressbar;
        super();
    }

    public void onProgressChanged(WebView webview, int i)
    {
        if (b.getVisibility() != 0)
        {
            b.setVisibility(0);
        }
        if (i >= 10) goto _L2; else goto _L1
_L1:
        b.setProgress(b.getMax() / 10);
_L6:
        super.onProgressChanged(webview, i);
_L4:
        return;
_L2:
        if (i < 100)
        {
            b.setProgress((i * b.getMax()) / 100);
            continue; /* Loop/switch isn't completed */
        }
        b.setVisibility(8);
        if (WebActivity.b(c) || WebActivity.c(c)) goto _L4; else goto _L3
_L3:
        WebActivity.b(c, true);
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("lt", SystemClock.currentThreadTimeMillis() - WebActivity.d(c));
            bal.a(true, c, "fwlc", jsonobject);
        }
        catch (JSONException jsonexception) { }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void onReceivedTitle(WebView webview, String s)
    {
        super.onReceivedTitle(webview, s);
        a.setTitleTextMiddleLeftOfRightIcon(s);
    }
}
