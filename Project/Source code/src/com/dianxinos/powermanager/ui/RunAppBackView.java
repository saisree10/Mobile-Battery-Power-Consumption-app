// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LayoutAnimationController;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.TextView;
import awj;
import awk;
import awl;
import awm;
import java.util.ArrayList;
import java.util.Iterator;
import ly;

public class RunAppBackView extends LinearLayout
{

    private int a;
    private int b;
    private GridView c;
    private awm d;
    private Animation e;
    private LayoutAnimationController f;
    private TextView g;
    private Context h;
    private Handler i;

    public RunAppBackView(Context context)
    {
        super(context);
        a();
    }

    public RunAppBackView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public static int a(RunAppBackView runappbackview)
    {
        return runappbackview.a;
    }

    private void a()
    {
        h = getContext();
        Context context = getContext();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        inflate(context, 0x7f03006c, this);
        Context context1 = h;
        com.dianxinos.dxbs.R.anim _tmp1 = ly.a;
        e = AnimationUtils.loadAnimation(context1, 0x7f040001);
        e.setFillAfter(true);
        e.setDuration(400L);
        f = new LayoutAnimationController(e);
        f.setDelay(0.0F);
    }

    public static int b(RunAppBackView runappbackview)
    {
        return runappbackview.b;
    }

    public static GridView c(RunAppBackView runappbackview)
    {
        return runappbackview.c;
    }

    public void a(awl awl)
    {
        c.setLayoutAnimation(f);
        c.setLayoutAnimationListener(new awj(this, awl));
        i.post(new awk(this));
    }

    public void a(ArrayList arraylist, Handler handler)
    {
        PackageManager packagemanager;
        ArrayList arraylist1;
        Iterator iterator;
        TextView textview = g;
        Resources resources = getResources();
        ly.i;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(arraylist.size());
        textview.setText(resources.getString(0x7f0a0315, aobj));
        i = handler;
        packagemanager = h.getPackageManager();
        arraylist1 = new ArrayList();
        iterator = arraylist.iterator();
_L2:
        String s;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        s = (String)iterator.next();
        android.graphics.drawable.Drawable drawable1 = packagemanager.getApplicationIcon(s);
        android.graphics.drawable.Drawable drawable = drawable1;
_L3:
        arraylist1.add(drawable);
        if (true) goto _L2; else goto _L1
        Exception exception;
        exception;
        drawable = h.getResources().getDrawable(0x1080093);
          goto _L3
_L1:
        d = new awm(this, h, arraylist1);
        c.setAdapter(d);
        android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)c.getLayoutParams();
        int j = arraylist1.size();
        int k = j / 6;
        int l = j - k * 6;
        int i1 = 0;
        if (l != 0)
        {
            i1 = 1;
        }
        layoutparams.height = (a + b) * (i1 + k) - b;
        c.setLayoutParams(layoutparams);
        return;
    }

    public void onFinishInflate()
    {
        super.onFinishInflate();
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        c = (GridView)findViewById(0x7f0701d3);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        g = (TextView)findViewById(0x7f0701d2);
        Resources resources = getResources();
        com.dianxinos.dxbs.R.dimen _tmp2 = ly.d;
        a = resources.getDimensionPixelOffset(0x7f080084);
        Resources resources1 = getResources();
        com.dianxinos.dxbs.R.dimen _tmp3 = ly.d;
        b = resources1.getDimensionPixelOffset(0x7f080085);
    }
}
