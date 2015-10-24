// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.widget.LinearLayout;
import android.widget.TextView;

public class zz extends LinearLayout
{

    private TextView a;
    private TextView b;
    private TextView c;

    public zz(Context context, int i, String s, String s1)
    {
        super(context);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        inflate(context, 0x7f030004, this);
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        setBackgroundResource(0x7f020393);
        Resources resources = getResources();
        com.dianxinos.dxbs.R.dimen _tmp2 = ly.d;
        int j = resources.getDimensionPixelSize(0x7f080287);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        layoutparams.setMargins(0, j, 0, j);
        setLayoutParams(layoutparams);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        a = (TextView)findViewById(0x7f070017);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        b = (TextView)findViewById(0x7f070018);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        c = (TextView)findViewById(0x7f070019);
        int k = getResources().getColor(i);
        a.setTextColor(k);
        Typeface typeface = Typeface.createFromAsset(context.getAssets(), "fonts/BEBAS___.ttf");
        a.setTypeface(typeface);
        b.setText(s);
        c.setText(s1);
    }

    public void setCount(int i)
    {
        a.setText(Integer.toString(i));
    }

    public void setDesc(int i)
    {
        c.setText(i);
    }

    public void setDesc(String s)
    {
        c.setText(s);
    }

    public void setTitle(int i)
    {
        b.setText(i);
    }

    public void setTitle(String s)
    {
        b.setText(s);
    }
}
