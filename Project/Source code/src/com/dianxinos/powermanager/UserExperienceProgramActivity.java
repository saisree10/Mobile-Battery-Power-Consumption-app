// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import aao;
import acg;
import android.content.res.Resources;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import azy;
import ly;

public class UserExperienceProgramActivity extends aao
{

    private String a;

    public UserExperienceProgramActivity()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a = (new StringBuilder()).append("_DXR_").append(azy.a("com.dianxinos.dxbs")).toString();
        requestWindowFeature(1);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030042);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        WebView webview = (WebView)findViewById(0x7f07011d);
        webview.setVerticalScrollbarOverlay(true);
        WebSettings websettings = webview.getSettings();
        websettings.setJavaScriptEnabled(true);
        websettings.setSaveFormData(false);
        websettings.setSavePassword(false);
        websettings.setSupportZoom(false);
        websettings.setCacheMode(2);
        Resources resources = getResources();
        com.dianxinos.dxbs.R.color _tmp2 = ly.c;
        webview.setBackgroundColor(resources.getColor(0x7f09008b));
        webview.addJavascriptInterface(new acg(this), "Android");
        StringBuilder stringbuilder = (new StringBuilder()).append("file:///android_asset/user_experience_program/");
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        webview.loadUrl(stringbuilder.append(getString(0x7f0a0372)).toString());
    }

    public void onDestroy()
    {
        super.onDestroy();
    }
}
