// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import aao;
import ach;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import awa;
import azp;
import com.dianxinos.powermanager.ui.GuideView;
import com.dianxinos.powermanager.ui.MainTitle;
import com.dianxinos.powermanager.ui.PageHorizontalScrollView;
import ly;

public class UserTipsActivity extends aao
    implements awa
{

    private static final int a[];
    private static final int b[];
    private static final int c[];
    private static final int d[];
    private PageHorizontalScrollView e;
    private GuideView f;
    private int g[];
    private int h[];
    private int i[];
    private int j;
    private int k;

    public UserTipsActivity()
    {
    }

    public void a(int l)
    {
        f.setSelectedId(l);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f03008d);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        MainTitle maintitle = (MainTitle)findViewById(0x7f070007);
        maintitle.setVisibility(0);
        maintitle.a();
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        maintitle.setLeftButtonIcon(0x7f020450);
        maintitle.setLeftButtonOnclickListener(new ach(this));
        g = b;
        h = c;
        i = d;
        j = c.length;
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        e = (PageHorizontalScrollView)findViewById(0x7f07023a);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        LinearLayout linearlayout = (LinearLayout)findViewById(0x7f07023b);
        DisplayMetrics displaymetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        int l = displaymetrics.widthPixels;
        e.setLayoutParams(new android.widget.LinearLayout.LayoutParams(l, -1, 1.0F));
        azp azp1 = azp.a(this);
        for (int i1 = 0; i1 < j; i1++)
        {
            View view = getLayoutInflater().inflate(a[i1], null);
            if (i1 == 0)
            {
                com.dianxinos.dxbs.R.id _tmp5 = ly.f;
                TextView textview1 = (TextView)view.findViewById(0x7f070289);
                if (textview1 != null)
                {
                    textview1.setTypeface(azp1.d());
                }
            }
            view.setLayoutParams(new android.widget.LinearLayout.LayoutParams(l, -1));
            com.dianxinos.dxbs.R.id _tmp6 = ly.f;
            TextView textview = (TextView)view.findViewById(0x7f070018);
            com.dianxinos.dxbs.R.id _tmp7 = ly.f;
            ((ImageView)view.findViewById(0x7f070014)).setImageResource(g[i1]);
            textview.setText(h[i1]);
            com.dianxinos.dxbs.R.id _tmp8 = ly.f;
            ((TextView)view.findViewById(0x7f0700a6)).setText(i[i1]);
            linearlayout.addView(view);
        }

        k = linearlayout.getChildCount();
        e.setItemSize(k);
        com.dianxinos.dxbs.R.id _tmp9 = ly.f;
        f = (GuideView)findViewById(0x7f07023c);
        f.setSize(k);
        e.setChangeItemListener(this);
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    static 
    {
        int ai[] = new int[5];
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        ai[0] = 0x7f0300a4;
        com.dianxinos.dxbs.R.layout _tmp1 = ly.g;
        ai[1] = 0x7f0300a5;
        com.dianxinos.dxbs.R.layout _tmp2 = ly.g;
        ai[2] = 0x7f0300a5;
        com.dianxinos.dxbs.R.layout _tmp3 = ly.g;
        ai[3] = 0x7f0300a5;
        com.dianxinos.dxbs.R.layout _tmp4 = ly.g;
        ai[4] = 0x7f0300a5;
        a = ai;
        int ai1[] = new int[5];
        com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
        ai1[0] = 0x7f02047f;
        com.dianxinos.dxbs.R.drawable _tmp6 = ly.e;
        ai1[1] = 0x7f020480;
        com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
        ai1[2] = 0x7f020481;
        com.dianxinos.dxbs.R.drawable _tmp8 = ly.e;
        ai1[3] = 0x7f020482;
        com.dianxinos.dxbs.R.drawable _tmp9 = ly.e;
        ai1[4] = 0x7f020483;
        b = ai1;
        int ai2[] = new int[5];
        com.dianxinos.dxbs.R.string _tmp10 = ly.i;
        ai2[0] = 0x7f0a0273;
        com.dianxinos.dxbs.R.string _tmp11 = ly.i;
        ai2[1] = 0x7f0a0275;
        com.dianxinos.dxbs.R.string _tmp12 = ly.i;
        ai2[2] = 0x7f0a0277;
        com.dianxinos.dxbs.R.string _tmp13 = ly.i;
        ai2[3] = 0x7f0a0279;
        com.dianxinos.dxbs.R.string _tmp14 = ly.i;
        ai2[4] = 0x7f0a027b;
        c = ai2;
        int ai3[] = new int[5];
        com.dianxinos.dxbs.R.string _tmp15 = ly.i;
        ai3[0] = 0x7f0a0274;
        com.dianxinos.dxbs.R.string _tmp16 = ly.i;
        ai3[1] = 0x7f0a0276;
        com.dianxinos.dxbs.R.string _tmp17 = ly.i;
        ai3[2] = 0x7f0a0278;
        com.dianxinos.dxbs.R.string _tmp18 = ly.i;
        ai3[3] = 0x7f0a027a;
        com.dianxinos.dxbs.R.string _tmp19 = ly.i;
        ai3[4] = 0x7f0a027c;
        d = ai3;
    }
}
