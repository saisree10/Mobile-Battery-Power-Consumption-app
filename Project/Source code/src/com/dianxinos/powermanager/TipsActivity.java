// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import aao;
import agl;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.LinearGradient;
import android.os.Bundle;
import android.text.Html;
import android.text.TextPaint;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import awa;
import azp;
import azr;
import bal;
import com.dianxinos.powermanager.menu.HelperActivity;
import com.dianxinos.powermanager.ui.GuideView;
import com.dianxinos.powermanager.ui.PageHorizontalScrollView;
import gn;
import ly;

// Referenced classes of package com.dianxinos.powermanager:
//            ShortcutOnekeyActivity, UserExperienceProgramActivity

public class TipsActivity extends aao
    implements android.view.View.OnClickListener, awa
{

    private static final int b[];
    private static final int c[];
    private static final int d[];
    GuideView a;
    private PageHorizontalScrollView e;
    private CheckBox f;
    private int g[];
    private int h[];
    private int i[];
    private int j;
    private int k;
    private int l;
    private int m;
    private long n;
    private float o;

    public TipsActivity()
    {
        n = 0L;
    }

    private void a()
    {
        azr azr1;
label0:
        {
            azr1 = azr.a(this);
            if (azr1.b())
            {
                String s = gn.a("ro.dianxinos.os.version", null);
                if (s == null || !s.startsWith("DXROM"))
                {
                    break label0;
                }
            }
            return;
        }
        ShortcutOnekeyActivity.a(this);
        azr1.c();
    }

    public void a(int i1)
    {
        l = i1;
        a.setSelectedId(i1);
        if (i1 == -2 + j)
        {
            if (m != 2);
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 1: default 28
    //                   0 34
    //                   1 45;
           goto _L1 _L2 _L3
_L1:
        return super.dispatchTouchEvent(motionevent);
_L2:
        o = motionevent.getX();
        continue; /* Loop/switch isn't completed */
_L3:
        if (1 + l == j && o - motionevent.getX() > 20F)
        {
            onBackPressed();
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void onBackPressed()
    {
        if (m != 2) goto _L2; else goto _L1
_L1:
        finish();
_L4:
        a();
        return;
_L2:
        if (1 + l == j)
        {
            finish();
            ly.a;
            overridePendingTransition(0, 0x7f040011);
            agl agl1 = agl.a(getApplicationContext());
            boolean flag = f.isChecked();
            boolean flag1 = false;
            if (!flag)
            {
                flag1 = true;
            }
            agl1.a(flag1);
            if (!f.isChecked())
            {
                bal.e(this);
            }
        } else
        {
            finish();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onClick(View view)
    {
        int i1 = view.getId();
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        if (i1 == 0x7f07023f)
        {
            startActivity(new Intent(this, com/dianxinos/powermanager/menu/HelperActivity));
        } else
        {
            int j1 = view.getId();
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            if (j1 == 0x7f070242)
            {
                startActivity(new Intent(this, com/dianxinos/powermanager/UserExperienceProgramActivity));
                return;
            }
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f03008d);
        m = getIntent().getIntExtra("tips_type", 1);
        if (m == 1)
        {
            g = b;
            h = c;
            i = d;
            j = c.length;
            n = System.currentTimeMillis();
        }
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        e = (PageHorizontalScrollView)findViewById(0x7f07023a);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        LinearLayout linearlayout = (LinearLayout)findViewById(0x7f07023b);
        DisplayMetrics displaymetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        int i1 = displaymetrics.widthPixels;
        e.setLayoutParams(new android.widget.LinearLayout.LayoutParams(i1, -1, 1.0F));
        azp azp1 = azp.a(this);
        for (int j1 = 0; j1 < j; j1++)
        {
            LayoutInflater layoutinflater = getLayoutInflater();
            com.dianxinos.dxbs.R.layout _tmp3 = ly.g;
            View view = layoutinflater.inflate(0x7f03008e, null);
            view.setLayoutParams(new android.widget.LinearLayout.LayoutParams(i1, -1));
            com.dianxinos.dxbs.R.id _tmp4 = ly.f;
            TextView textview = (TextView)view.findViewById(0x7f070243);
            textview.setTypeface(azp1.a());
            Resources resources = getResources();
            com.dianxinos.dxbs.R.dimen _tmp5 = ly.d;
            float f1 = resources.getDimensionPixelSize(0x7f080165);
            Resources resources1 = getResources();
            com.dianxinos.dxbs.R.color _tmp6 = ly.c;
            int k1 = resources1.getColor(0x7f090063);
            Resources resources2 = getResources();
            com.dianxinos.dxbs.R.color _tmp7 = ly.c;
            LinearGradient lineargradient = new LinearGradient(0.0F, 0.0F, 0.0F, f1, k1, resources2.getColor(0x7f090064), android.graphics.Shader.TileMode.CLAMP);
            textview.getPaint().setShader(lineargradient);
            com.dianxinos.dxbs.R.id _tmp8 = ly.f;
            ((ImageView)view.findViewById(0x7f07022f)).setImageResource(g[j1]);
            textview.setText(h[j1]);
            com.dianxinos.dxbs.R.id _tmp9 = ly.f;
            ((TextView)view.findViewById(0x7f070244)).setText(i[j1]);
            if (j1 + 1 == j)
            {
                com.dianxinos.dxbs.R.id _tmp10 = ly.f;
                view.findViewById(0x7f070240).setVisibility(0);
                com.dianxinos.dxbs.R.id _tmp11 = ly.f;
                f = (CheckBox)view.findViewById(0x7f070241);
                com.dianxinos.dxbs.R.id _tmp12 = ly.f;
                TextView textview1 = (TextView)view.findViewById(0x7f070242);
                StringBuilder stringbuilder = (new StringBuilder()).append("<u>");
                com.dianxinos.dxbs.R.string _tmp13 = ly.i;
                textview1.setText(Html.fromHtml(stringbuilder.append(getString(0x7f0a025f)).append("</u>").toString()));
                textview1.setOnClickListener(this);
                com.dianxinos.dxbs.R.id _tmp14 = ly.f;
                view.findViewById(0x7f07023d).setVisibility(0);
                com.dianxinos.dxbs.R.id _tmp15 = ly.f;
                TextView textview2 = (TextView)view.findViewById(0x7f07023f);
                StringBuilder stringbuilder1 = (new StringBuilder()).append("<u>");
                com.dianxinos.dxbs.R.string _tmp16 = ly.i;
                textview2.setText(Html.fromHtml(stringbuilder1.append(getString(0x7f0a0261)).append("</u>").toString()));
                textview2.setOnClickListener(this);
                textview2.setVisibility(0);
            }
            linearlayout.addView(view);
        }

        k = linearlayout.getChildCount();
        e.setItemSize(k);
        com.dianxinos.dxbs.R.id _tmp17 = ly.f;
        a = (GuideView)findViewById(0x7f07023c);
        a.setSize(k);
        e.setChangeItemListener(this);
    }

    public void onDestroy()
    {
        super.onDestroy();
        if (m == 1)
        {
            int i1 = (int)(System.currentTimeMillis() - n);
            bal.b(getApplication(), i1);
        }
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        switch (i1)
        {
        default:
            return true;

        case 4: // '\004'
            return super.onKeyDown(i1, keyevent);
        }
    }

    static 
    {
        int ai[] = new int[4];
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        ai[0] = 0x7f02044b;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        ai[1] = 0x7f02044c;
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        ai[2] = 0x7f02044d;
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        ai[3] = 0x7f02044e;
        b = ai;
        int ai1[] = new int[4];
        com.dianxinos.dxbs.R.string _tmp4 = ly.i;
        ai1[0] = 0x7f0a0251;
        com.dianxinos.dxbs.R.string _tmp5 = ly.i;
        ai1[1] = 0x7f0a0253;
        com.dianxinos.dxbs.R.string _tmp6 = ly.i;
        ai1[2] = 0x7f0a0255;
        com.dianxinos.dxbs.R.string _tmp7 = ly.i;
        ai1[3] = 0x7f0a0257;
        c = ai1;
        int ai2[] = new int[4];
        com.dianxinos.dxbs.R.string _tmp8 = ly.i;
        ai2[0] = 0x7f0a0252;
        com.dianxinos.dxbs.R.string _tmp9 = ly.i;
        ai2[1] = 0x7f0a0254;
        com.dianxinos.dxbs.R.string _tmp10 = ly.i;
        ai2[2] = 0x7f0a0256;
        com.dianxinos.dxbs.R.string _tmp11 = ly.i;
        ai2[3] = 0x7f0a0258;
        d = ai2;
    }
}
