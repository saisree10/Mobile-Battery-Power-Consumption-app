// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.batterytheme;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import ly;

public class BatteryThemeItemView extends FrameLayout
{

    private ImageView a;
    private ImageView b;
    private TextView c;
    private ImageView d;

    public BatteryThemeItemView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        inflate(context, 0x7f03000f, this);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        a = (ImageView)findViewById(0x7f07004f);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        b = (ImageView)findViewById(0x7f070051);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        c = (TextView)findViewById(0x7f070050);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        d = (ImageView)findViewById(0x7f070052);
    }

    public void a()
    {
        d.setVisibility(0);
    }

    public void b()
    {
        d.setVisibility(8);
    }

    public void setName(int i)
    {
        if (i == 0)
        {
            c.setVisibility(4);
            return;
        } else
        {
            c.setVisibility(0);
            c.setText(i);
            return;
        }
    }

    public void setSelectedFlag(boolean flag)
    {
        ImageView imageview = b;
        int i;
        if (flag)
        {
            i = 0;
        } else
        {
            i = 4;
        }
        imageview.setVisibility(i);
    }

    public void setThumbnail(Bitmap bitmap)
    {
        a.setImageBitmap(bitmap);
        setVisibility(0);
    }

    public void setThumbnail(Drawable drawable)
    {
        a.setBackgroundDrawable(drawable);
    }
}
