// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.usage;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import ayu;
import ly;

public class MonitorTitleView extends RelativeLayout
    implements android.view.View.OnTouchListener
{

    private View a;
    private TextView b;
    private ImageView c;
    private boolean d;
    private ayu e;
    private Context f;

    public MonitorTitleView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = true;
        f = context;
        Context context1 = getContext();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        inflate(context1, 0x7f030053, this);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        a = findViewById(0x7f0700e2);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        b = (TextView)findViewById(0x7f070018);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        c = (ImageView)findViewById(0x7f0700d5);
        TextView textview = b;
        com.dianxinos.dxbs.R.styleable _tmp4 = ly.k;
        textview.setText(context.obtainStyledAttributes(attributeset, com.dianxinos.dxbs.R.styleable.MonitorTitleView).getText(0));
        setOnTouchListener(this);
    }

    private void a()
    {
        if (d)
        {
            View view1 = a;
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            view1.setBackgroundResource(0x7f0203b5);
            ImageView imageview1 = c;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            imageview1.setBackgroundResource(0x7f0203b3);
            return;
        } else
        {
            View view = a;
            com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
            view.setBackgroundResource(0x7f0203b1);
            ImageView imageview = c;
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            imageview.setBackgroundResource(0x7f0203af);
            return;
        }
    }

    private void b()
    {
        if (d)
        {
            View view1 = a;
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            view1.setBackgroundResource(0x7f0203b6);
            ImageView imageview1 = c;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            imageview1.setBackgroundResource(0x7f0203b4);
            return;
        } else
        {
            View view = a;
            com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
            view.setBackgroundResource(0x7f0203b2);
            ImageView imageview = c;
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            imageview.setBackgroundResource(0x7f0203b0);
            return;
        }
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 3: default 36
    //                   0 38
    //                   1 50
    //                   2 36
    //                   3 44;
           goto _L1 _L2 _L3 _L1 _L4
_L1:
        return true;
_L2:
        b();
        return true;
_L4:
        a();
        return true;
_L3:
        boolean flag;
        if (!d)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        d = flag;
        a();
        if (e != null)
        {
            e.a(this);
            return true;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void setOnClickListener(ayu ayu1)
    {
        e = ayu1;
    }
}
