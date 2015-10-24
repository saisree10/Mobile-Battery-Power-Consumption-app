// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;

public class awn extends Dialog
    implements android.view.View.OnClickListener
{

    private LinearLayout a;
    private ArrayList b;
    private int c;
    private awp d;

    public awn(Context context)
    {
        com.dianxinos.dxbs.R.style _tmp = ly.j;
        super(context, 0x7f0b0007);
        b = new ArrayList();
        c = -1;
        com.dianxinos.dxbs.R.layout _tmp1 = ly.g;
        setContentView(0x7f030078);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        a = (LinearLayout)findViewById(0x7f0701ee);
    }

    public void a(int i, int j)
    {
        LayoutInflater layoutinflater = LayoutInflater.from(getContext());
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        LinearLayout linearlayout = (LinearLayout)layoutinflater.inflate(0x7f030079, null);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        ImageView imageview = (ImageView)linearlayout.findViewById(0x7f0701ef);
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        imageview.setImageResource(0x7f0201f1);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        ((TextView)linearlayout.findViewById(0x7f07001f)).setText(j);
        awq awq1 = new awq(null);
        awq1.a = imageview;
        awq1.b = i;
        awq1.c = linearlayout;
        linearlayout.setTag(awq1);
        linearlayout.setOnClickListener(this);
        if (b.size() > 0)
        {
            ImageView imageview1 = new ImageView(getContext());
            com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
            imageview1.setImageResource(0x7f0203d6);
            a.addView(imageview1, new android.widget.LinearLayout.LayoutParams(-1, -2));
        }
        a.addView(linearlayout);
        b.add(awq1);
    }

    public void a(awp awp1)
    {
        d = awp1;
    }

    public boolean a(int i)
    {
        if (c == -1) goto _L2; else goto _L1
_L1:
        awq awq2 = (awq)b.get(c);
        if (awq2.b != i) goto _L4; else goto _L3
_L3:
        return false;
_L4:
        ImageView imageview1 = awq2.a;
        ly.e;
        imageview1.setImageResource(0x7f0201f1);
_L2:
        int j = 0;
        while (j < b.size()) 
        {
            awq awq1 = (awq)b.get(j);
            if (awq1.b == i)
            {
                awq1.c.getBackground().setState(null);
                ImageView imageview = awq1.a;
                ly.e;
                imageview.setImageResource(0x7f0201f2);
                c = j;
                return true;
            }
            j++;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public void onClick(View view)
    {
        awq awq1 = (awq)view.getTag();
        boolean flag = a(awq1.b);
        if (d != null && flag)
        {
            d.a_(awq1.b);
        }
        dismiss();
    }

    public void setTitle(int i)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        ((TextView)findViewById(0x7f070018)).setText(i);
    }
}
