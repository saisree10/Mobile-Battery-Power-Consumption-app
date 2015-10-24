// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.common.ui.fragment;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import ly;

// Referenced classes of package com.dianxinos.common.ui.fragment:
//            TabInfo

public class TitleIndicator extends LinearLayout
    implements android.view.View.OnClickListener, android.view.View.OnFocusChangeListener
{

    private int a;
    private List b;
    private ViewPager c;
    private ColorStateList d;
    private float e;
    private float f;
    private Path g;
    private Paint h;
    private float i;
    private float j;
    private int k;
    private Context l;
    private final int m;
    private boolean n;
    private int o;
    private int p;
    private int q;
    private LayoutInflater r;
    private List s;

    public TitleIndicator(Context context)
    {
        super(context);
        a = 0;
        g = new Path();
        k = 0;
        m = 0xffff00;
        n = true;
        o = 0;
        p = 0;
        q = 0;
        s = new ArrayList();
        a(4F, -15291);
    }

    public TitleIndicator(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 0;
        g = new Path();
        k = 0;
        m = 0xffff00;
        n = true;
        o = 0;
        p = 0;
        q = 0;
        s = new ArrayList();
        setFocusable(true);
        setOnFocusChangeListener(this);
        l = context;
        com.dianxinos.dxbs.R.styleable _tmp = ly.k;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.dianxinos.dxbs.R.styleable.TitleIndicator);
        com.dianxinos.dxbs.R.styleable _tmp1 = ly.k;
        int i1 = typedarray.getColor(6, -15291);
        com.dianxinos.dxbs.R.styleable _tmp2 = ly.k;
        d = typedarray.getColorStateList(2);
        com.dianxinos.dxbs.R.styleable _tmp3 = ly.k;
        e = typedarray.getDimension(3, 0.0F);
        com.dianxinos.dxbs.R.styleable _tmp4 = ly.k;
        f = typedarray.getDimension(4, e);
        com.dianxinos.dxbs.R.styleable _tmp5 = ly.k;
        j = typedarray.getDimension(5, 4F);
        com.dianxinos.dxbs.R.styleable _tmp6 = ly.k;
        i = typedarray.getDimension(7, 10F);
        a(j, i1);
        typedarray.recycle();
        Resources resources = context.getResources();
        com.dianxinos.dxbs.R.color _tmp7 = ly.c;
        setBackgroundColor(resources.getColor(0x7f09004c));
    }

    public static int a(Context context, float f1)
    {
        return (int)(0.5F + f1 * context.getResources().getDisplayMetrics().density);
    }

    private void a(float f1, int i1)
    {
        h = new Paint(4);
        h.setAntiAlias(true);
        h.setStyle(android.graphics.Paint.Style.STROKE);
        h.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        h.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        h.setStrokeWidth(f1);
        h.setColor(i1);
        r = (LayoutInflater)l.getSystemService("layout_inflater");
    }

    private void a(View view)
    {
        s.add(view);
    }

    private void a(View view, boolean flag)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        TextView textview = (TextView)view.findViewById(0x7f070245);
        float f1;
        if (flag)
        {
            f1 = f;
        } else
        {
            f1 = e;
        }
        textview.setTextSize(0, f1);
    }

    private String c(int i1)
    {
        String s1 = (new StringBuilder()).append("title ").append(i1).toString();
        if (b != null && b.size() > i1)
        {
            s1 = ((TabInfo)b.get(i1)).a();
        }
        return s1;
    }

    private int d(int i1)
    {
        List list = b;
        int j1 = 0;
        if (list != null)
        {
            int k1 = b.size();
            j1 = 0;
            if (k1 > i1)
            {
                j1 = ((TabInfo)b.get(i1)).b();
            }
        }
        return j1;
    }

    private boolean e(int i1)
    {
        List list = b;
        boolean flag = false;
        if (list != null)
        {
            int j1 = b.size();
            flag = false;
            if (j1 > i1)
            {
                flag = ((TabInfo)b.get(i1)).a;
            }
        }
        return flag;
    }

    public void a(int i1)
    {
        a = i1;
        invalidate();
    }

    protected void a(int i1, String s1, int j1, boolean flag)
    {
        LayoutInflater layoutinflater = r;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f03008f, this, false);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        TextView textview = (TextView)view.findViewById(0x7f070245);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        a(((View) ((TextView)view.findViewById(0x7f070246))));
        if (d != null)
        {
            textview.setTextColor(d);
        }
        if (e > 0.0F)
        {
            textview.setTextSize(0, e);
        }
        textview.setText(s1);
        if (j1 > 0)
        {
            textview.setCompoundDrawablesWithIntrinsicBounds(0, j1, 0, 0);
        }
        int k1 = o;
        o = k1 + 1;
        view.setId(0xffff00 + k1);
        view.setOnClickListener(this);
        ((android.widget.LinearLayout.LayoutParams)view.getLayoutParams()).gravity = 17;
        addView(view);
    }

    public void a(int i1, List list, ViewPager viewpager)
    {
        removeAllViews();
        c = viewpager;
        b = list;
        q = list.size();
        for (int j1 = 0; j1 < q; j1++)
        {
            a(j1, c(j1), d(j1), e(j1));
        }

        setCurrentTab(i1);
        invalidate();
    }

    public void b(int i1)
    {
        this;
        JVM INSTR monitorenter ;
        int j1 = k;
        if (j1 != i1) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        setCurrentTab(i1);
        invalidate();
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public boolean getChangeOnClick()
    {
        return n;
    }

    public List getPremiumTipIntoList()
    {
        return s;
    }

    public int getTabCount()
    {
        return getChildCount();
    }

    public void onClick(View view)
    {
        setCurrentTab(view.getId() - 0xffff00);
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        float f1;
        Path path;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        if (q != 0)
        {
            p = getWidth() / q;
            int i1 = k;
            f1 = (a - i1 * (getWidth() + c.getPageMargin())) / q;
        } else
        {
            p = getWidth();
            f1 = a;
        }
        path = g;
        path.rewind();
        f2 = a(l, 18F);
        f3 = a(l, 3F);
        f4 = f1 + (f2 + (float)(k * p));
        f5 = f1 + ((float)((1 + k) * p) - f2);
        f6 = (float)getHeight() - j - i - f3;
        f7 = (float)getHeight() - j - f3;
        path.moveTo(f4, f6 + 1.0F);
        path.lineTo(f5, f6 + 1.0F);
        path.lineTo(f5, f7 + 1.0F);
        path.lineTo(f4, f7 + 1.0F);
        path.close();
        canvas.drawPath(path, h);
    }

    public void onFocusChange(View view, boolean flag)
    {
        if (view != this || !flag || getTabCount() <= 0) goto _L2; else goto _L1
_L1:
        getChildAt(k).requestFocus();
_L4:
        return;
_L2:
        if (flag)
        {
            int i1 = 0;
            int j1 = getTabCount();
            while (i1 < j1) 
            {
                if (getChildAt(i1) == view)
                {
                    setCurrentTab(i1);
                    return;
                }
                i1++;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        super.onLayout(flag, i1, j1, k1, l1);
        if (a == 0 && k != 0)
        {
            a = (getWidth() + c.getPageMargin()) * k;
        }
    }

    public void setChangeOnClick(boolean flag)
    {
        n = flag;
    }

    public void setCurrentTab(int i1)
    {
        this;
        JVM INSTR monitorenter ;
        if (i1 < 0) goto _L2; else goto _L1
_L1:
        int j1 = getTabCount();
        if (i1 < j1) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        View view = getChildAt(k);
        view.setSelected(false);
        a(view, false);
        k = i1;
        View view1 = getChildAt(k);
        view1.setSelected(true);
        a(view1, true);
        c.setCurrentItem(k);
        invalidate();
        if (true) goto _L2; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public void setDisplayedPage(int i1)
    {
        k = i1;
    }
}
