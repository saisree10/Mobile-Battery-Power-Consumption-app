// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import ly;

public class MainTitle extends RelativeLayout
{

    private ImageView a;
    private ImageView b;
    private ImageView c;
    private TextView d;
    private TextView e;
    private TextView f;
    private String g;
    private Drawable h;
    private Drawable i;
    private View j;
    private View k;

    public MainTitle(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        com.dianxinos.dxbs.R.styleable _tmp = ly.k;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.dianxinos.dxbs.R.styleable.MainTitle);
        com.dianxinos.dxbs.R.styleable _tmp1 = ly.k;
        g = typedarray.getString(0);
        com.dianxinos.dxbs.R.styleable _tmp2 = ly.k;
        i = typedarray.getDrawable(2);
        com.dianxinos.dxbs.R.styleable _tmp3 = ly.k;
        h = typedarray.getDrawable(1);
        typedarray.recycle();
        b();
    }

    private void b()
    {
        Context context = getContext();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        inflate(context, 0x7f030047, this);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        d = (TextView)findViewById(0x7f070134);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        e = (TextView)findViewById(0x7f070136);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        f = (TextView)findViewById(0x7f070137);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        a = (ImageView)findViewById(0x7f070138);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        b = (ImageView)findViewById(0x7f07013a);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        c = (ImageView)findViewById(0x7f070132);
        com.dianxinos.dxbs.R.id _tmp7 = ly.f;
        j = findViewById(0x7f070133);
        if (g != null && !g.equals(""))
        {
            d.setText(g);
        }
        setRightButtonIcon(h);
        setLeftButtonIcon(i);
        com.dianxinos.dxbs.R.id _tmp8 = ly.f;
        k = findViewById(0x7f070139);
    }

    public void a()
    {
        d.setVisibility(8);
        e.setVisibility(0);
        e.setText(d.getText());
    }

    public void a(boolean flag)
    {
        View view = k;
        int l;
        if (flag)
        {
            l = 0;
        } else
        {
            l = 8;
        }
        view.setVisibility(l);
    }

    public void setLeftButtonIcon(int l)
    {
        Drawable drawable = null;
        if (l != 0)
        {
            drawable = getContext().getResources().getDrawable(l);
        }
        setLeftButtonIcon(drawable);
    }

    public void setLeftButtonIcon(Drawable drawable)
    {
        if (drawable != null)
        {
            c.setImageDrawable(drawable);
            c.setVisibility(0);
            j.setVisibility(8);
            return;
        } else
        {
            c.setVisibility(8);
            j.setVisibility(4);
            c.setOnClickListener(null);
            return;
        }
    }

    public void setLeftButtonOnclickListener(android.view.View.OnClickListener onclicklistener)
    {
        c.setOnClickListener(onclicklistener);
    }

    public void setMidButtonIcon(int l)
    {
        Drawable drawable = null;
        if (l != 0)
        {
            drawable = getContext().getResources().getDrawable(l);
        }
        setMidButtonIcon(drawable);
    }

    public void setMidButtonIcon(Drawable drawable)
    {
        if (drawable != null)
        {
            b.setImageDrawable(drawable);
            b.setVisibility(0);
            return;
        } else
        {
            b.setVisibility(8);
            b.setOnClickListener(null);
            return;
        }
    }

    public void setMidButtonOnclickListener(android.view.View.OnClickListener onclicklistener)
    {
        b.setOnClickListener(onclicklistener);
    }

    public void setRightButtonClickable(boolean flag)
    {
        a.setClickable(flag);
    }

    public void setRightButtonIcon(int l)
    {
        Drawable drawable = null;
        if (l != 0)
        {
            drawable = getContext().getResources().getDrawable(l);
        }
        setRightButtonIcon(drawable);
    }

    public void setRightButtonIcon(Drawable drawable)
    {
        if (drawable != null)
        {
            a.setImageDrawable(drawable);
            a.setVisibility(0);
            return;
        } else
        {
            a.setVisibility(8);
            a.setOnClickListener(null);
            return;
        }
    }

    public void setRightButtonOnclickListener(android.view.View.OnClickListener onclicklistener)
    {
        a.setOnClickListener(onclicklistener);
    }

    public void setTitleText(int l)
    {
        d.setText(l);
        d.setVisibility(0);
    }

    public void setTitleText(String s)
    {
        d.setText(s);
        d.setVisibility(0);
    }

    public void setTitleTextMiddleLeftOfRightIcon(String s)
    {
        d.setVisibility(8);
        f.setVisibility(0);
        f.setText(s);
    }
}
