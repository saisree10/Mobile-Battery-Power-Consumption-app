// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui;

import ahb;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import avg;
import avh;
import avx;
import axb;
import ly;

public class ModeDxGotoPreference extends avg
{

    private boolean i;
    private TextView j;
    private TextView k;
    private TextView l;
    private ImageView m;
    private ImageView n;
    private TextView o;
    private View p;
    private ahb q;

    public ModeDxGotoPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        i = false;
        q = new ahb(context, h);
        a();
    }

    public static ahb a(ModeDxGotoPreference modedxgotopreference)
    {
        return modedxgotopreference.q;
    }

    private boolean d()
    {
        return TextUtils.isEmpty(h) || i || q.d();
    }

    protected void a()
    {
        Context context = mContext;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        inflate(context, 0x7f03004a, this);
    }

    public void b()
    {
        if (p != null)
        {
            if (d())
            {
                p.setVisibility(8);
                l.setVisibility(0);
                n.setVisibility(0);
            } else
            {
                l.setVisibility(8);
                n.setVisibility(8);
                p.setVisibility(0);
                o.setText(q.c());
            }
        }
        j.setText(b);
        if (c != null)
        {
            k.setText(Html.fromHtml(c));
            k.setVisibility(0);
        }
        if (!d)
        {
            l.setVisibility(4);
        }
    }

    public void c()
    {
        if (d())
        {
            if (a != null)
            {
                a.a(this);
            }
            return;
        } else
        {
            q.e();
            return;
        }
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        p = findViewById(0x7f070145);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        o = (TextView)findViewById(0x7f0700b0);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        j = (TextView)findViewById(0x7f07001f);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        k = (TextView)findViewById(0x7f070020);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        l = (TextView)findViewById(0x7f0700d3);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        n = (ImageView)findViewById(0x7f0700d5);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        m = (ImageView)findViewById(0x7f0700d4);
        b();
        com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
        setBackgroundResource(0x7f0201f0);
        setClickable(true);
        setFocusable(true);
        setDescendantFocusability(0x60000);
        p.setOnClickListener(new avx(this));
    }

    public void setADUnlockStatus(boolean flag)
    {
        i = flag;
    }

    public void setBgRID(int i1)
    {
        setBackgroundResource(i1);
    }

    public void setEnabled(boolean flag)
    {
        if (flag)
        {
            TextView textview1 = l;
            Context context = mContext;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            textview1.setText(axb.b(context, 0x7f0a00cf));
            return;
        } else
        {
            TextView textview = l;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            textview.setText(0x7f0a00d0);
            return;
        }
    }

    public void setEnabledSpanned(Spanned spanned)
    {
        k.setText(spanned);
        k.setVisibility(0);
    }

    public void setEnabledString(String s)
    {
        k.setText(Html.fromHtml(s));
        k.setVisibility(0);
    }

    public void setIcon(Bitmap bitmap)
    {
        m.setVisibility(0);
        m.setImageBitmap(bitmap);
    }
}
