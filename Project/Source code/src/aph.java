// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;

public class aph extends LinearLayout
    implements android.view.View.OnClickListener
{

    public static int a[] = new int[2];
    public int b;
    public boolean c;
    public Context d;
    public amp e;
    public amh f;
    public aoy g;

    public aph(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = 0;
        com.dianxinos.dxbs.R.styleable _tmp = ly.k;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.dianxinos.dxbs.R.styleable.DxSwitch);
        com.dianxinos.dxbs.R.styleable _tmp1 = ly.k;
        c = typedarray.getBoolean(0, false);
        typedarray.recycle();
        Resources resources = getResources();
        int ai[] = a;
        com.dianxinos.dxbs.R.color _tmp2 = ly.c;
        ai[0] = resources.getColor(0x7f090088);
        int ai1[] = a;
        com.dianxinos.dxbs.R.color _tmp3 = ly.c;
        ai1[1] = resources.getColor(0x7f090087);
        d = context;
        e = amp.a(context);
        f = e.g();
        g = aoy.a(context);
        setGravity(17);
    }

    public void onClick(View view)
    {
        if (!c)
        {
            bal.a(getContext(), "widget14", "cswitch", Integer.valueOf(1));
        }
    }

}
