// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.GestureDetector;
import android.view.View;
import android.view.WindowManager;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import com.dianxinos.optimizer.module.messagebox.DisableScrollListView;

public class ya extends HorizontalScrollView
{

    private int a;
    private Context b;
    private LinearLayout c;
    private LinearLayout d;
    private LinearLayout e;
    private int f;
    private int g;
    private boolean h;
    private GestureDetector i;
    private yf j;
    private yg k;
    private DisableScrollListView l;

    public ya(Context context, DisableScrollListView disablescrolllistview, View view, View view1, yg yg1)
    {
        super(context);
        a = 0;
        b = context;
        l = disablescrolllistview;
        k = yg1;
        a(view, view1);
        b();
    }

    static int a(ya ya1)
    {
        return ya1.g;
    }

    static int a(ya ya1, int i1)
    {
        ya1.a = i1;
        return i1;
    }

    private void a(View view, View view1)
    {
        setLayoutParams(new android.widget.AbsListView.LayoutParams(-1, -2));
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        setFadingEdgeLength(0);
        Context context = b;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view2 = View.inflate(context, 0x7f030043, this);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        e = (LinearLayout)view2.findViewById(0x7f07011e);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        c = (LinearLayout)view2.findViewById(0x7f07011f);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        d = (LinearLayout)view2.findViewById(0x7f070120);
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((Activity)b).getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        f = displaymetrics.widthPixels;
        e.getLayoutParams().width = 2 * f;
        g = f / 6;
        c.addView(view);
        d.addView(view1);
    }

    static DisableScrollListView b(ya ya1)
    {
        return ya1.l;
    }

    private void b()
    {
        j = new yb(this);
        i = new GestureDetector(b, new yh(this, j));
        setOnTouchListener(new yc(this));
    }

    private void c()
    {
        h = true;
        k.c();
        post(new ye(this));
    }

    static boolean c(ya ya1)
    {
        return ya1.h;
    }

    static yg d(ya ya1)
    {
        return ya1.k;
    }

    static GestureDetector e(ya ya1)
    {
        return ya1.i;
    }

    static int f(ya ya1)
    {
        return ya1.a;
    }

    static void g(ya ya1)
    {
        ya1.c();
    }

    static int h(ya ya1)
    {
        return ya1.f;
    }

    public void a()
    {
        h = false;
        post(new yd(this));
    }
}
