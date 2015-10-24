// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.mode;

import ahd;
import ahp;
import amh;
import amp;
import anb;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import azf;
import java.util.ArrayList;
import ly;

public class ModeIconView extends LinearLayout
{

    ImageView a;
    ImageView b;
    ImageView c;
    ImageView d;

    public ModeIconView(Context context)
    {
        super(context);
        a(context);
    }

    public ModeIconView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(context);
    }

    private void a(Context context)
    {
        setGravity(16);
        setOrientation(0);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        inflate(context, 0x7f03004c, this);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        a = (ImageView)findViewById(0x7f070146);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        b = (ImageView)findViewById(0x7f070147);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        c = (ImageView)findViewById(0x7f070148);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        d = (ImageView)findViewById(0x7f070149);
    }

    public void a(int i, amp amp1)
    {
        if (amp1.g().l().h() || azf.n())
        {
            a.setVisibility(0);
            b.setVisibility(0);
        }
        c.setVisibility(0);
        if (amp1.g().a(4).h())
        {
            d.setVisibility(0);
        }
        if (i == 2 && !azf.n())
        {
            ImageView imageview12 = a;
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            imageview12.setImageResource(0x7f020428);
            ImageView imageview13 = b;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            imageview13.setImageResource(0x7f020424);
        } else
        {
            ImageView imageview = a;
            com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
            imageview.setImageResource(0x7f020429);
            ImageView imageview1 = b;
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            imageview1.setImageResource(0x7f020425);
        }
        if (i == 0)
        {
            ImageView imageview10 = c;
            com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
            imageview10.setImageResource(0x7f02042b);
            ImageView imageview11 = d;
            com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
            imageview11.setImageResource(0x7f020426);
            return;
        }
        if (i == 1)
        {
            ImageView imageview8 = c;
            com.dianxinos.dxbs.R.drawable _tmp6 = ly.e;
            imageview8.setImageResource(0x7f02042b);
            ImageView imageview9 = d;
            com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
            imageview9.setImageResource(0x7f020427);
            return;
        }
        if (i == 2)
        {
            ImageView imageview6 = c;
            com.dianxinos.dxbs.R.drawable _tmp8 = ly.e;
            imageview6.setImageResource(0x7f02042b);
            ImageView imageview7 = d;
            com.dianxinos.dxbs.R.drawable _tmp9 = ly.e;
            imageview7.setImageResource(0x7f020426);
            return;
        }
        int j = amp1.g(i);
        ArrayList arraylist = amp1.f().a(j);
        if (((Integer)arraylist.get(2)).intValue() == 0)
        {
            ImageView imageview5 = c;
            com.dianxinos.dxbs.R.drawable _tmp10 = ly.e;
            imageview5.setImageResource(0x7f02042b);
        } else
        {
            ImageView imageview2 = c;
            com.dianxinos.dxbs.R.drawable _tmp11 = ly.e;
            imageview2.setImageResource(0x7f02042c);
        }
        if (((Integer)arraylist.get(4)).intValue() == 0)
        {
            ImageView imageview4 = d;
            com.dianxinos.dxbs.R.drawable _tmp12 = ly.e;
            imageview4.setImageResource(0x7f020426);
            return;
        } else
        {
            ImageView imageview3 = d;
            com.dianxinos.dxbs.R.drawable _tmp13 = ly.e;
            imageview3.setImageResource(0x7f020427);
            return;
        }
    }

    public void setCurrStatus(amp amp1)
    {
        amh amh1 = amp1.g();
        boolean flag = amh1.l().a();
        boolean flag1 = amh1.a(2).a();
        boolean flag2 = amh1.a(4).a();
        boolean flag3;
        if (amh1.l().h() || azf.n())
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        if (flag3)
        {
            a.setVisibility(0);
            b.setVisibility(0);
        }
        if (amp1.g().a(4).h())
        {
            d.setVisibility(0);
        }
        c.setVisibility(0);
        if (!flag || azf.n())
        {
            ImageView imageview = a;
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            imageview.setImageResource(0x7f020429);
            ImageView imageview1 = b;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            imageview1.setImageResource(0x7f020425);
        } else
        {
            ImageView imageview7 = a;
            com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
            imageview7.setImageResource(0x7f020428);
            ImageView imageview8 = b;
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            imageview8.setImageResource(0x7f020424);
        }
        if (flag2)
        {
            ImageView imageview6 = d;
            com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
            imageview6.setImageResource(0x7f020427);
        } else
        {
            ImageView imageview2 = d;
            com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
            imageview2.setImageResource(0x7f020426);
        }
        if (azf.i() && flag)
        {
            ImageView imageview5 = d;
            com.dianxinos.dxbs.R.drawable _tmp6 = ly.e;
            imageview5.setImageResource(0x7f020426);
        }
        if (flag1)
        {
            ImageView imageview4 = c;
            com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
            imageview4.setImageResource(0x7f02042c);
            return;
        } else
        {
            ImageView imageview3 = c;
            com.dianxinos.dxbs.R.drawable _tmp8 = ly.e;
            imageview3.setImageResource(0x7f02042c);
            return;
        }
    }
}
