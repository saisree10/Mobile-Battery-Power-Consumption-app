// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import avz;
import awz;
import azt;
import ly;

// Referenced classes of package com.dianxinos.powermanager.ui:
//            NumPickerView

public class TimePickerView extends LinearLayout
    implements avz
{

    private static String d[] = {
        "00", "05", "10", "15", "20", "25", "30", "35", "40", "45", 
        "50", "55"
    };
    private String a;
    private awz b;
    private String c[] = {
        "00", "01", "02", "03", "04", "05", "06", "07", "08", "09", 
        "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", 
        "20", "21", "22", "23"
    };
    private NumPickerView e;
    private NumPickerView f;
    private Paint g;
    private int h;
    private int i;
    private int j;

    public TimePickerView(Context context)
    {
        super(context);
        a = "TimePickerView";
        a();
    }

    public TimePickerView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = "TimePickerView";
        a();
    }

    private void a()
    {
        g = new Paint();
        g.setColor(-1);
        Resources resources = getResources();
        com.dianxinos.dxbs.R.dimen _tmp = ly.d;
        float f1 = resources.getDimension(0x7f080072);
        azt.a(a, (new StringBuilder()).append("fontsize: ").append(f1).toString());
        g.setTextSize(f1);
        Resources resources1 = getResources();
        com.dianxinos.dxbs.R.dimen _tmp1 = ly.d;
        j = (int)resources1.getDimension(0x7f080075);
    }

    public void a(int k, int l)
    {
        e.setCurrentSelected(k);
        f.setCurrentSelected(l / 5);
        h = k;
        i = l;
    }

    public void a(NumPickerView numpickerview, int k)
    {
        if (b != null)
        {
            if (e == numpickerview && h != k)
            {
                h = k;
                b.a(this, h, i);
            }
            if (f == numpickerview && i != k)
            {
                i = k * 5;
                b.a(this, h, i);
                return;
            }
        }
    }

    protected void onFinishInflate()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        e = (NumPickerView)findViewById(0x7f0701e3);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        f = (NumPickerView)findViewById(0x7f0701e4);
        e.a(c, g, j, 0);
        f.a(d, g, j, 0);
        e.setObserver(this);
        f.setObserver(this);
    }

    protected void onLayout(boolean flag, int k, int l, int i1, int j1)
    {
        super.onLayout(flag, k, l, i1, j1);
    }

    public void setListener(awz awz1)
    {
        b = awz1;
    }

}
