// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.os.Handler;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import avf;
import azf;
import azp;
import azt;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import ly;

public class DxDigitalTimeDisplay extends LinearLayout
    implements android.view.View.OnClickListener
{

    public android.view.View.OnClickListener a;
    private boolean b;
    private TextView c;
    private TextView d;
    private int e;
    private int f;
    private Typeface g;
    private Handler h;
    private int i;
    private int j;
    private TextView k;
    private TextView l;
    private LinkedList m;
    private Shader n;
    private float o;
    private float p;
    private float q;
    private int r;
    private Context s;
    private HashMap t;

    public DxDigitalTimeDisplay(Context context)
    {
        super(context);
        b = false;
        a = null;
        h = new avf(this);
        a();
    }

    public DxDigitalTimeDisplay(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = false;
        a = null;
        h = new avf(this);
        com.dianxinos.dxbs.R.styleable _tmp = ly.k;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.dianxinos.dxbs.R.styleable.DxDigitalTimeDisplay);
        com.dianxinos.dxbs.R.styleable _tmp1 = ly.k;
        o = typedarray.getDimension(0, 0.0F);
        com.dianxinos.dxbs.R.styleable _tmp2 = ly.k;
        p = typedarray.getDimension(1, 0.0F);
        com.dianxinos.dxbs.R.styleable _tmp3 = ly.k;
        r = typedarray.getDimensionPixelSize(2, 0);
        com.dianxinos.dxbs.R.styleable _tmp4 = ly.k;
        q = typedarray.getDimensionPixelSize(3, 0);
        typedarray.recycle();
        a();
    }

    public static int a(DxDigitalTimeDisplay dxdigitaltimedisplay)
    {
        return dxdigitaltimedisplay.j;
    }

    public static int a(DxDigitalTimeDisplay dxdigitaltimedisplay, int i1)
    {
        dxdigitaltimedisplay.j = i1;
        return i1;
    }

    public static int a(DxDigitalTimeDisplay dxdigitaltimedisplay, int i1, int j1)
    {
        return dxdigitaltimedisplay.b(i1, j1);
    }

    private void a()
    {
        s = getContext();
        g = azp.a(s).c();
        Context context = getContext();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        inflate(context, 0x7f030032, this);
        float f1 = o;
        Resources resources = s.getResources();
        com.dianxinos.dxbs.R.color _tmp1 = ly.c;
        int i1 = resources.getColor(0x7f090063);
        Resources resources1 = s.getResources();
        com.dianxinos.dxbs.R.color _tmp2 = ly.c;
        n = new LinearGradient(0.0F, 0.0F, 0.0F, f1, i1, resources1.getColor(0x7f090064), android.graphics.Shader.TileMode.CLAMP);
    }

    private int b(int i1, int j1)
    {
        if (i1 > j1)
        {
            i1--;
        } else
        if (i1 < j1)
        {
            return i1 + 1;
        }
        return i1;
    }

    public static int b(DxDigitalTimeDisplay dxdigitaltimedisplay)
    {
        return dxdigitaltimedisplay.e;
    }

    public static int b(DxDigitalTimeDisplay dxdigitaltimedisplay, int i1)
    {
        dxdigitaltimedisplay.i = i1;
        return i1;
    }

    public static int b(DxDigitalTimeDisplay dxdigitaltimedisplay, int i1, int j1)
    {
        return dxdigitaltimedisplay.c(i1, j1);
    }

    private void b()
    {
        int i1;
        int j1;
        int k1;
        String s1;
        if (j > 0)
        {
            i1 = j;
        } else
        {
            i1 = 0;
        }
        j1 = i;
        k1 = 0;
        if (j1 > 0)
        {
            k1 = i;
        }
        if (k1 < 10 && k1 != 0)
        {
            s1 = (new StringBuilder()).append("0").append(String.valueOf(k1)).toString();
        } else
        {
            s1 = String.valueOf(k1);
        }
        c.setText(String.valueOf(i1));
        d.setText(s1);
        h.sendEmptyMessageDelayed(1, 40L);
    }

    private int c(int i1, int j1)
    {
        if (Math.abs(i1 - j1) <= 7)
        {
            i1 = b(i1, j1);
        } else
        {
            if (i1 > j1)
            {
                return i1 - 7;
            }
            if (i1 < j1)
            {
                return i1 + 7;
            }
        }
        return i1;
    }

    public static int c(DxDigitalTimeDisplay dxdigitaltimedisplay)
    {
        return dxdigitaltimedisplay.i;
    }

    private void c()
    {
        if (t == null)
        {
            t = new HashMap();
            TextView textview;
            for (Iterator iterator1 = m.iterator(); iterator1.hasNext(); t.put(textview, textview.getTextColors()))
            {
                textview = (TextView)iterator1.next();
            }

        }
        for (Iterator iterator = m.iterator(); iterator.hasNext();)
        {
            TextView _tmp = (TextView)iterator.next();
        }

    }

    public static int d(DxDigitalTimeDisplay dxdigitaltimedisplay)
    {
        return dxdigitaltimedisplay.f;
    }

    private void d()
    {
        azt.b("DxDigitalTimeDisplay", "reset");
        TextView textview;
        for (Iterator iterator = m.iterator(); iterator.hasNext(); textview.setTextColor((ColorStateList)t.get(textview)))
        {
            textview = (TextView)iterator.next();
        }

    }

    public static void e(DxDigitalTimeDisplay dxdigitaltimedisplay)
    {
        dxdigitaltimedisplay.b();
    }

    public void a(int i1)
    {
        int j1;
        int k1;
        if (i1 >= 3600)
        {
            j1 = i1 / 3600;
            i1 -= j1 * 3600;
        } else
        {
            j1 = 0;
        }
        k1 = 0;
        if (i1 >= 60)
        {
            k1 = i1 / 60;
            int _tmp = i1 - k1 * 60;
        }
        a(j1, k1);
    }

    public void a(int i1, int j1)
    {
        if (i1 <= 999);
        e = i1;
        if (i1 >= 100)
        {
            f = 0;
        } else
        {
            f = j1;
        }
        b();
    }

    public void onClick(View view)
    {
        if (a != null)
        {
            a.onClick(this);
        }
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        c = (TextView)findViewById(0x7f0700cf);
        if (azf.l())
        {
            c.setLayerType(1, c.getPaint());
        }
        c.getPaint().setShader(n);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        d = (TextView)findViewById(0x7f0700d1);
        if (azf.l())
        {
            d.setLayerType(1, d.getPaint());
        }
        d.getPaint().setShader(n);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        k = (TextView)findViewById(0x7f0700d0);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        l = (TextView)findViewById(0x7f0700d2);
        if (o != 0.0F)
        {
            c.setTextSize(0, o);
            d.setTextSize(0, o);
        }
        if (p != 0.0F)
        {
            k.setTextSize(0, p);
            l.setTextSize(0, p);
        }
        if (r != 0)
        {
            android.widget.LinearLayout.LayoutParams layoutparams1 = (android.widget.LinearLayout.LayoutParams)c.getLayoutParams();
            c.setPadding(layoutparams1.leftMargin, layoutparams1.topMargin, r, layoutparams1.bottomMargin);
            d.setPadding(layoutparams1.leftMargin, layoutparams1.topMargin, r, layoutparams1.bottomMargin);
        }
        if (q != 0.0F)
        {
            android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)k.getLayoutParams();
            k.setPadding(layoutparams.leftMargin, layoutparams.topMargin, (int)q, layoutparams.bottomMargin);
        }
        m = new LinkedList();
        m.add(c);
        m.add(d);
        m.add(k);
        m.add(l);
        c.setTypeface(g);
        d.setTypeface(g);
        setOnClickListener(this);
        setClickable(true);
        setFocusable(true);
        setDescendantFocusability(0x60000);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 3: default 36
    //                   0 53
    //                   1 42
    //                   2 36
    //                   3 42;
           goto _L1 _L2 _L3 _L1 _L3
_L1:
        return super.onTouchEvent(motionevent);
_L3:
        d();
        b();
        continue; /* Loop/switch isn't completed */
_L2:
        c();
        b();
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void setOnDigitalClickListener(android.view.View.OnClickListener onclicklistener)
    {
        a = onclicklistener;
    }
}
