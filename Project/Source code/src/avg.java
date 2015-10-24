// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

public abstract class avg extends RelativeLayout
{

    public static int e;
    public avh a;
    public String b;
    public String c;
    public boolean d;
    public float f;
    public int g;
    public String h;

    public avg(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = null;
        b = null;
        c = null;
        f = -1F;
        g = 0;
        h = "";
        Resources resources = getResources();
        com.dianxinos.dxbs.R.dimen _tmp = ly.d;
        e = (int)resources.getDimension(0x7f080082);
        com.dianxinos.dxbs.R.styleable _tmp1 = ly.k;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.dianxinos.dxbs.R.styleable.DxPref);
        com.dianxinos.dxbs.R.styleable _tmp2 = ly.k;
        b = typedarray.getString(0);
        com.dianxinos.dxbs.R.styleable _tmp3 = ly.k;
        c = typedarray.getString(1);
        com.dianxinos.dxbs.R.styleable _tmp4 = ly.k;
        d = typedarray.getBoolean(2, false);
        com.dianxinos.dxbs.R.styleable _tmp5 = ly.k;
        f = typedarray.getDimension(3, 0.0F);
        com.dianxinos.dxbs.R.styleable _tmp6 = ly.k;
        com.dianxinos.dxbs.R.color _tmp7 = ly.c;
        g = typedarray.getColor(5, resources.getColor(0x7f090024));
        com.dianxinos.dxbs.R.styleable _tmp8 = ly.k;
        h = typedarray.getString(4);
        typedarray.recycle();
    }

    public abstract void b();

    public abstract void c();

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i = motionevent.getAction();
        if (i == 0)
        {
            setPressed(true);
        } else
        if (i == 1 || i == 3)
        {
            setPressed(false);
            if (i == 1)
            {
                c();
                return true;
            }
        }
        return true;
    }

    public void setOnPreferenceChangeListener(avh avh)
    {
        a = avh;
    }

    public void setSummary(String s)
    {
        c = s;
        b();
    }

    public void setTitle(String s)
    {
        b = s;
        b();
    }
}
