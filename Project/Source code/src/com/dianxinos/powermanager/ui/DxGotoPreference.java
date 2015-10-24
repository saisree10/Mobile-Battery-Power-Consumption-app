// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.Html;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import avg;
import avh;
import axb;
import ly;

public class DxGotoPreference extends avg
{

    private TextView i;
    private TextView j;
    private TextView k;
    private ImageView l;

    public DxGotoPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    protected void a()
    {
        Context context = getContext();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        inflate(context, 0x7f030034, this);
    }

    public void a(int i1, int j1)
    {
        k.setVisibility(0);
        if (j1 == 0)
        {
            k.setText(null);
            k.setBackgroundResource(i1);
            return;
        } else
        {
            k.setText(j1);
            k.setBackgroundResource(0);
            return;
        }
    }

    public void a(boolean flag)
    {
        if (flag)
        {
            com.dianxinos.dxbs.R.id _tmp = ly.f;
            findViewById(0x7f0700d5).setVisibility(8);
            return;
        } else
        {
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            findViewById(0x7f0700d5).setVisibility(0);
            return;
        }
    }

    public void b()
    {
        i.setText(b);
        if (c != null)
        {
            j.setText(Html.fromHtml(c));
            j.setVisibility(0);
        }
        if (!d)
        {
            k.setVisibility(4);
        }
    }

    public void c()
    {
        if (a != null)
        {
            a.a(this);
        }
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        i = (TextView)findViewById(0x7f07001f);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        j = (TextView)findViewById(0x7f070020);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        k = (TextView)findViewById(0x7f0700d3);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        l = (ImageView)findViewById(0x7f0700d4);
        b();
        com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
        setBackgroundResource(0x7f0201f0);
        setClickable(true);
        setFocusable(true);
        setDescendantFocusability(0x60000);
    }

    public void setBgRID(int i1)
    {
        setBackgroundResource(i1);
    }

    public void setEnabled(boolean flag)
    {
        if (flag)
        {
            TextView textview1 = k;
            Context context = getContext();
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            textview1.setText(axb.b(context, 0x7f0a00cf));
            return;
        } else
        {
            TextView textview = k;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            textview.setText(0x7f0a00d0);
            return;
        }
    }

    public void setEnabledSpanned(Spanned spanned)
    {
        j.setText(spanned);
        j.setVisibility(0);
    }

    public void setEnabledString(String s)
    {
        j.setText(Html.fromHtml(s));
        j.setVisibility(0);
    }

    public void setIcon(Bitmap bitmap)
    {
        l.setVisibility(0);
        l.setImageBitmap(bitmap);
    }
}
