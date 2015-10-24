// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import aao;
import abd;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.LinearGradient;
import android.os.Bundle;
import android.text.Html;
import android.text.TextPaint;
import android.view.View;
import android.widget.TextView;
import azg;
import azp;
import bal;
import com.dianxinos.powermanager.menu.HelperActivity;
import com.dianxinos.powermanager.ui.MainTitle;
import java.util.ArrayList;
import ly;

public class PowerMgrInfoAcitvity extends aao
    implements android.view.View.OnClickListener
{

    private ArrayList a;
    private TextView b;

    public PowerMgrInfoAcitvity()
    {
        a = new ArrayList();
    }

    public void onBackPressed()
    {
        finish();
    }

    public void onClick(View view)
    {
        if (view == b)
        {
            startActivity(new Intent(this, com/dianxinos/powermanager/menu/HelperActivity));
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030000);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        MainTitle maintitle = (MainTitle)findViewById(0x7f070007);
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        maintitle.setTitleText(0x7f0a0240);
        maintitle.a();
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        maintitle.setLeftButtonIcon(0x7f020450);
        maintitle.setLeftButtonOnclickListener(new abd(this));
        String as[] = azg.b;
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            String s = as[j];
            a.add(s);
        }

        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        b = (TextView)findViewById(0x7f07000a);
        b.setOnClickListener(this);
        azp azp1 = azp.a(this);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        ((TextView)findViewById(0x7f07000d)).setTypeface(azp1.a());
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        TextView textview = (TextView)findViewById(0x7f07000e);
        TextView textview1;
        Resources resources;
        float f;
        Resources resources1;
        int k;
        Resources resources2;
        LinearGradient lineargradient;
        TextView textview2;
        StringBuilder stringbuilder;
        try
        {
            textview.setText((new StringBuilder()).append("V").append(getPackageManager().getPackageInfo(getPackageName(), 0).versionName).toString());
            textview.setTypeface(azp1.b());
        }
        catch (Exception exception) { }
        com.dianxinos.dxbs.R.id _tmp7 = ly.f;
        ((TextView)findViewById(0x7f07000f)).setTypeface(azp1.b());
        bal.a(this, "tab", "about", Integer.valueOf(1));
        com.dianxinos.dxbs.R.id _tmp8 = ly.f;
        textview1 = (TextView)findViewById(0x7f07000d);
        resources = getResources();
        com.dianxinos.dxbs.R.dimen _tmp9 = ly.d;
        f = resources.getDimensionPixelSize(0x7f080122);
        resources1 = getResources();
        com.dianxinos.dxbs.R.color _tmp10 = ly.c;
        k = resources1.getColor(0x7f090063);
        resources2 = getResources();
        com.dianxinos.dxbs.R.color _tmp11 = ly.c;
        lineargradient = new LinearGradient(0.0F, 0.0F, 0.0F, f, k, resources2.getColor(0x7f090064), android.graphics.Shader.TileMode.CLAMP);
        textview1.getPaint().setShader(lineargradient);
        com.dianxinos.dxbs.R.id _tmp12 = ly.f;
        textview2 = (TextView)findViewById(0x7f07000a);
        stringbuilder = (new StringBuilder()).append("<u>");
        com.dianxinos.dxbs.R.string _tmp13 = ly.i;
        textview2.setText(Html.fromHtml(stringbuilder.append(getString(0x7f0a023c)).append("</u>").toString()));
    }
}
