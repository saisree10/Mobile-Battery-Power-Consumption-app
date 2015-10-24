// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.optimizer.module.messagebox;

import aao;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.dianxinos.powermanager.ui.MainTitle;
import ly;
import zg;
import zh;
import zi;
import zj;

public class WebActivity extends aao
{

    private boolean a;
    private boolean b;
    private long c;
    private WebView d;

    public WebActivity()
    {
        a = false;
        b = false;
    }

    public static long a(WebActivity webactivity, long l)
    {
        webactivity.c = l;
        return l;
    }

    public static WebView a(WebActivity webactivity)
    {
        return webactivity.d;
    }

    public static boolean a(WebActivity webactivity, boolean flag)
    {
        webactivity.a = flag;
        return flag;
    }

    public static boolean b(WebActivity webactivity)
    {
        return webactivity.a;
    }

    public static boolean b(WebActivity webactivity, boolean flag)
    {
        webactivity.b = flag;
        return flag;
    }

    public static boolean c(WebActivity webactivity)
    {
        return webactivity.b;
    }

    public static long d(WebActivity webactivity)
    {
        return webactivity.c;
    }

    protected void onCreate(Bundle bundle)
    {
        c = SystemClock.currentThreadTimeMillis();
        super.onCreate(bundle);
        String s = getIntent().getStringExtra("url");
        if (TextUtils.isEmpty(s))
        {
            finish();
        }
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f0300a6);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        d = (WebView)findViewById(0x7f07011d);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        ProgressBar progressbar = (ProgressBar)findViewById(0x7f07028a);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        MainTitle maintitle = (MainTitle)findViewById(0x7f070007);
        maintitle.setTitleTextMiddleLeftOfRightIcon("");
        com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
        maintitle.setLeftButtonIcon(0x7f020450);
        maintitle.setLeftButtonOnclickListener(new zg(this));
        com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
        maintitle.setRightButtonIcon(0x7f02048d);
        maintitle.setRightButtonOnclickListener(new zh(this));
        d.setVerticalScrollbarOverlay(true);
        d.setWebViewClient(new zi(this));
        d.setWebChromeClient(new zj(this, maintitle, progressbar));
        WebSettings websettings = d.getSettings();
        websettings.setJavaScriptEnabled(true);
        websettings.setSaveFormData(false);
        websettings.setSavePassword(false);
        websettings.setSupportZoom(false);
        websettings.setCacheMode(2);
        d.loadUrl(s);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4 && d != null && d.canGoBack())
        {
            d.goBack();
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }
}
