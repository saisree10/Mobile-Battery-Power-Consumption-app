// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.menu;

import aao;
import ama;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import azy;
import ly;

public class RootHelperActivity extends aao
{

    private String a;

    public RootHelperActivity()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a = (new StringBuilder()).append("_DXR_").append(azy.a("com.dianxinos.dxbs")).toString();
        requestWindowFeature(1);
        WebView webview = new WebView(this);
        webview.setVerticalScrollbarOverlay(true);
        WebSettings websettings = webview.getSettings();
        websettings.setJavaScriptEnabled(true);
        websettings.setSaveFormData(false);
        websettings.setSavePassword(false);
        websettings.setSupportZoom(false);
        websettings.setCacheMode(2);
        webview.addJavascriptInterface(new ama(this), "Android");
        StringBuilder stringbuilder = (new StringBuilder()).append("file:///android_asset/help/");
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        webview.loadUrl(stringbuilder.append(getString(0x7f0a01cd)).toString());
        setContentView(webview, new android.view.ViewGroup.LayoutParams(-1, -1));
    }

    public void onDestroy()
    {
        super.onDestroy();
    }
}
