// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui.Integratelottery;

import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import avn;
import avo;
import avq;
import avr;
import avs;
import avt;
import avu;
import avv;
import avw;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import ly;

public class WheelView extends View
{

    private static final int c[] = {
        0xff111111, 0xaaaaaa, 0xaaaaaa
    };
    boolean a;
    private avq b;
    private int d;
    private int e;
    private int f;
    private Drawable g;
    private GradientDrawable h;
    private GradientDrawable i;
    private avo j;
    private boolean k;
    private int l;
    private LinearLayout m;
    private int n;
    private avn o;
    private avw p;
    private List q;
    private List r;
    private DataSetObserver s;

    public WheelView(Context context)
    {
        super(context);
        b = new avr(this);
        d = 0;
        e = 3;
        f = 0;
        a = false;
        p = new avw(this, this);
        q = new LinkedList();
        r = new LinkedList();
        s = new avs(this);
        a(context);
    }

    public WheelView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = new avr(this);
        d = 0;
        e = 3;
        f = 0;
        a = false;
        p = new avw(this, this);
        q = new LinkedList();
        r = new LinkedList();
        s = new avs(this);
        a(context);
    }

    public WheelView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        b = new avr(this);
        d = 0;
        e = 3;
        f = 0;
        a = false;
        p = new avw(this, this);
        q = new LinkedList();
        r = new LinkedList();
        s = new avs(this);
        a(context);
    }

    private int a(LinearLayout linearlayout)
    {
        if (linearlayout != null && linearlayout.getChildAt(0) != null)
        {
            f = linearlayout.getChildAt(0).getMeasuredHeight();
        }
        return Math.max(f * e - (10 * f) / 50, getSuggestedMinimumHeight());
    }

    public static int a(WheelView wheelview)
    {
        return wheelview.l;
    }

    private void a(int i1)
    {
        l = i1 + l;
        int j1 = getItemHeight();
        int k1 = l / j1;
        int l1 = d - k1;
        int i2 = o.a();
        int j2 = l % j1;
        if (Math.abs(j2) <= j1 / 2)
        {
            j2 = 0;
        }
        if (a && i2 > 0)
        {
            int k2;
            int l2;
            int i3;
            int j3;
            if (j2 > 0)
            {
                int i4 = l1 - 1;
                int j4 = k1 + 1;
                j3 = i4;
                l2 = j4;
            } else
            if (j2 < 0)
            {
                int k3 = l1 + 1;
                int l3 = k1 - 1;
                j3 = k3;
                l2 = l3;
            } else
            {
                j3 = l1;
                l2 = k1;
            }
            for (; j3 < 0; j3 += i2) { }
            k2 = j3 % i2;
        } else
        if (l1 < 0)
        {
            l2 = d;
            k2 = 0;
        } else
        if (l1 >= i2)
        {
            l2 = 1 + (d - i2);
            k2 = i2 - 1;
        } else
        if (l1 > 0 && j2 > 0)
        {
            k2 = l1 - 1;
            l2 = k1 + 1;
        } else
        if (l1 < i2 - 1 && j2 < 0)
        {
            k2 = l1 + 1;
            l2 = k1 - 1;
        } else
        {
            k2 = l1;
            l2 = k1;
        }
        i3 = l;
        if (k2 != d)
        {
            a(k2, false);
        } else
        {
            invalidate();
        }
        l = i3 - l2 * j1;
        if (l > getHeight())
        {
            l = l % getHeight() + getHeight();
        }
    }

    private void a(Context context)
    {
        j = new avo(getContext(), b);
    }

    private void a(Canvas canvas)
    {
        int i1 = (int)(1.5D * (double)getItemHeight());
        h.setBounds(0, 0, getWidth(), i1);
        h.draw(canvas);
        i.setBounds(0, getHeight() - i1, getWidth(), getHeight());
        i.draw(canvas);
    }

    public static void a(WheelView wheelview, int i1)
    {
        wheelview.a(i1);
    }

    public static boolean a(WheelView wheelview, boolean flag)
    {
        wheelview.k = flag;
        return flag;
    }

    public static int b(WheelView wheelview, int i1)
    {
        wheelview.l = i1;
        return i1;
    }

    public static avo b(WheelView wheelview)
    {
        return wheelview.j;
    }

    private void b(Canvas canvas)
    {
        canvas.save();
        canvas.translate(10F, -((d - n) * getItemHeight() + (getItemHeight() - getHeight()) / 2) + l);
        m.draw(canvas);
        canvas.restore();
    }

    private boolean b(int i1)
    {
        return o != null && o.a() > 0 && (a || i1 >= 0 && i1 < o.a());
    }

    private boolean b(int i1, boolean flag)
    {
        View view = c(i1);
        boolean flag1 = false;
        if (view != null)
        {
            if (flag)
            {
                m.addView(view, 0);
            } else
            {
                m.addView(view);
            }
            flag1 = true;
        }
        return flag1;
    }

    private int c(int i1, int j1)
    {
        int k1;
        d();
        m.setLayoutParams(new android.view.ViewGroup.LayoutParams(-2, -2));
        m.measure(android.view.View.MeasureSpec.makeMeasureSpec(i1, 0), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
        k1 = m.getMeasuredWidth();
        if (j1 != 0x40000000) goto _L2; else goto _L1
_L1:
        m.measure(android.view.View.MeasureSpec.makeMeasureSpec(i1 - 20, 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
        return i1;
_L2:
        int l1 = Math.max(k1 + 20, getSuggestedMinimumWidth());
        if (j1 != 0x80000000 || i1 >= l1)
        {
            i1 = l1;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    private View c(int i1)
    {
        if (o == null || o.a() == 0)
        {
            return null;
        }
        int j1 = o.a();
        if (!b(i1))
        {
            return o.a(p.b(), m);
        }
        for (; i1 < 0; i1 += j1) { }
        int k1 = i1 % j1;
        return o.a(k1, p.a(), m);
    }

    private void c(Canvas canvas)
    {
        int i1 = getHeight() / 2;
        g.setBounds(0, i1 - 13, getWidth(), i1 + 13);
        g.draw(canvas);
    }

    public static boolean c(WheelView wheelview)
    {
        return wheelview.k;
    }

    private void d()
    {
        if (g == null)
        {
            Resources resources = getContext().getResources();
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            g = resources.getDrawable(0x7f0204a3);
        }
        if (h == null)
        {
            h = new GradientDrawable(android.graphics.drawable.GradientDrawable.Orientation.TOP_BOTTOM, c);
        }
        if (i == null)
        {
            i = new GradientDrawable(android.graphics.drawable.GradientDrawable.Orientation.BOTTOM_TOP, c);
        }
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        setBackgroundResource(0x7f020493);
    }

    private void d(int i1, int j1)
    {
        int k1 = i1 - 20;
        m.layout(0, 0, k1, j1);
    }

    private boolean e()
    {
        avt avt1;
        boolean flag;
        int i1;
        int k1;
        avt1 = getItemsRange();
        if (m != null)
        {
            int l1 = p.a(m, n, avt1);
            int j1;
            if (n != l1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            n = l1;
        } else
        {
            g();
            flag = true;
        }
        if (!flag)
        {
            if (n != avt1.a() || m.getChildCount() != avt1.c())
            {
                flag = true;
            } else
            {
                flag = false;
            }
        }
        if (n <= avt1.a() || n > avt1.b()) goto _L2; else goto _L1
_L1:
        k1 = -1 + n;
_L7:
        if (k1 >= avt1.a() && b(k1, true)) goto _L4; else goto _L3
_L3:
        i1 = n;
        for (j1 = m.getChildCount(); j1 < avt1.c(); j1++)
        {
            if (!b(j1 + n, false) && m.getChildCount() == 0)
            {
                i1++;
            }
        }

        break; /* Loop/switch isn't completed */
_L4:
        n = k1;
        k1--;
        continue; /* Loop/switch isn't completed */
_L2:
        n = avt1.a();
        if (true) goto _L3; else goto _L5
_L5:
        n = i1;
        return flag;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private void f()
    {
        if (e())
        {
            c(getWidth(), 0x40000000);
            d(getWidth(), getHeight());
        }
    }

    private void g()
    {
        if (m == null)
        {
            m = new LinearLayout(getContext());
            m.setOrientation(1);
        }
    }

    private int getItemHeight()
    {
        if (f != 0)
        {
            return f;
        }
        if (m != null && m.getChildAt(0) != null)
        {
            f = m.getChildAt(0).getHeight();
            return f;
        } else
        {
            return getHeight() / e;
        }
    }

    private avt getItemsRange()
    {
        if (getItemHeight() == 0)
        {
            return null;
        }
        int i1 = d;
        int j1;
        for (j1 = 1; j1 * getItemHeight() < getHeight(); j1 += 2)
        {
            i1--;
        }

        if (l != 0)
        {
            if (l > 0)
            {
                i1--;
            }
            int k1 = j1 + 1;
            int l1 = l / getItemHeight();
            i1 -= l1;
            j1 = (int)((double)k1 + Math.asin(l1));
        }
        return new avt(this, i1, j1);
    }

    private void h()
    {
        int i1;
        if (m != null)
        {
            p.a(m, n, new avt(this));
        } else
        {
            g();
        }
        i1 = e / 2;
        for (int j1 = i1 + d; j1 >= d - i1; j1--)
        {
            if (b(j1, true))
            {
                n = j1;
            }
        }

    }

    public void a()
    {
        for (Iterator iterator = r.iterator(); iterator.hasNext(); ((avv)iterator.next()).a(this)) { }
    }

    protected void a(int i1, int j1)
    {
        for (Iterator iterator = q.iterator(); iterator.hasNext(); ((avu)iterator.next()).a(this, i1, j1)) { }
    }

    public void a(int i1, boolean flag)
    {
        if (o != null && o.a() != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j1;
        j1 = o.a();
        if (i1 >= 0 && i1 < j1)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!a) goto _L1; else goto _L3
_L3:
        for (; i1 < 0; i1 += j1) { }
        i1 %= j1;
        if (i1 == d) goto _L1; else goto _L4
_L4:
        if (!flag) goto _L6; else goto _L5
_L5:
        int l1 = i1 - d;
        if (!a) goto _L8; else goto _L7
_L7:
        int i2 = (j1 + Math.min(i1, d)) - Math.max(i1, d);
        if (i2 >= Math.abs(l1)) goto _L8; else goto _L9
_L9:
        if (l1 >= 0)
        {
            i2 = -i2;
        }
_L11:
        b(i2, 0);
        return;
_L6:
        l = 0;
        int k1 = d;
        d = i1;
        a(k1, d);
        invalidate();
        return;
_L8:
        i2 = l1;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public void a(avu avu1)
    {
        q.add(avu1);
    }

    public void a(avv avv1)
    {
        r.add(avv1);
    }

    public void a(boolean flag)
    {
        if (!flag) goto _L2; else goto _L1
_L1:
        p.c();
        if (m != null)
        {
            m.removeAllViews();
        }
        l = 0;
_L4:
        invalidate();
        return;
_L2:
        if (m != null)
        {
            p.a(m, n, new avt(this));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void b()
    {
        for (Iterator iterator = r.iterator(); iterator.hasNext(); ((avv)iterator.next()).b(this)) { }
    }

    public void b(int i1, int j1)
    {
        int k1 = i1 * getItemHeight() - l;
        j.a(k1, j1);
    }

    public boolean c()
    {
        return a;
    }

    public int getCurrentItem()
    {
        return d;
    }

    public avn getViewAdapter()
    {
        return o;
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (o != null && o.a() > 0)
        {
            f();
            b(canvas);
            c(canvas);
        }
        a(canvas);
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        d(k1 - i1, l1 - j1);
    }

    protected void onMeasure(int i1, int j1)
    {
        int k1 = android.view.View.MeasureSpec.getMode(i1);
        int l1 = android.view.View.MeasureSpec.getMode(j1);
        int i2 = android.view.View.MeasureSpec.getSize(i1);
        int j2 = android.view.View.MeasureSpec.getSize(j1);
        h();
        int k2 = c(i2, k1);
        if (l1 != 0x40000000)
        {
            int l2 = a(m);
            if (l1 == 0x80000000)
            {
                j2 = Math.min(l2, j2);
            } else
            {
                j2 = l2;
            }
        }
        setMeasuredDimension(k2, j2);
    }

    public void setCurrentItem(int i1)
    {
        a(i1, false);
    }

    public void setCyclic(boolean flag)
    {
        a = flag;
        a(false);
    }

    public void setViewAdapter(avn avn1)
    {
        if (o != null)
        {
            o.b(s);
        }
        o = avn1;
        if (o != null)
        {
            o.a(s);
        }
        a(true);
    }

}
