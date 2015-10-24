// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.dianxinos.common.coins.CoinManager;

public class awe extends auu
{

    public awe(Context context, int i, String s, android.view.View.OnClickListener onclicklistener)
    {
        View view;
        TextView textview;
        TextView textview1;
        super(context);
        h();
        i();
        LayoutInflater layoutinflater = getLayoutInflater();
        ly.g;
        view = layoutinflater.inflate(0x7f03002f, null);
        ly.f;
        view.findViewById(0x7f0700a7).setVisibility(8);
        ly.f;
        view.findViewById(0x7f070014).setVisibility(8);
        ly.f;
        textview = (TextView)view.findViewById(0x7f0700a8);
        Resources resources = context.getResources();
        ly.d;
        textview.setTextSize(0, resources.getDimension(0x7f0802b4));
        Resources resources1 = context.getResources();
        ly.c;
        textview.setTextColor(resources1.getColor(0x7f090020));
        ly.f;
        textview1 = (TextView)view.findViewById(0x7f0700aa);
        textview1.setVisibility(0);
        Resources resources2 = context.getResources();
        ly.d;
        textview1.setTextSize(0, resources2.getDimension(0x7f0802b5));
        ly.i;
        textview1.setText(context.getString(0x7f0a02fe));
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        Resources resources3 = a.getResources();
        ly.d;
        int j = (int)resources3.getDimension(0x7f080226);
        layoutparams.setMargins(j, 0, j, 0);
        textview1.setLayoutParams(layoutparams);
        ly.f;
        view.findViewById(0x7f0700ab).setVisibility(8);
        ly.f;
        view.findViewById(0x7f0700ac).setVisibility(8);
        ly.f;
        TextView textview2 = (TextView)view.findViewById(0x7f070077);
        textview2.setVisibility(0);
        ly.i;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(CoinManager.a(context).a());
        textview2.setText(context.getString(0x7f0a02d8, aobj));
        ly.f;
        TextView textview3 = (TextView)view.findViewById(0x7f0700b0);
        textview3.setShadowLayer(0.0F, 0.0F, 0.0F, 0);
        textview3.setCompoundDrawables(null, null, null, null);
        ly.i;
        textview3.setText(0x7f0a0027);
        ly.f;
        view.findViewById(0x7f0700af).setOnClickListener(new auz(this, onclicklistener));
        ly.f;
        TextView textview4 = (TextView)view.findViewById(0x7f0700b2);
        ly.i;
        textview4.setText(0x7f0a0115);
        ly.f;
        View view1 = view.findViewById(0x7f0700b1);
        view1.setVisibility(0);
        view1.setOnClickListener(new awf(this));
        i;
        JVM INSTR tableswitch 0 1: default 480
    //                   0 487
    //                   1 539;
           goto _L1 _L2 _L3
_L1:
        b(view);
        return;
_L2:
        ly.i;
        Object aobj2[] = new Object[2];
        aobj2[0] = s;
        ly.i;
        aobj2[1] = context.getString(0x7f0a02fc);
        textview.setText(context.getString(0x7f0a02fb, aobj2));
        textview1.setVisibility(8);
        continue; /* Loop/switch isn't completed */
_L3:
        ly.i;
        Object aobj1[] = new Object[2];
        aobj1[0] = s;
        ly.i;
        aobj1[1] = context.getString(0x7f0a02fd);
        textview.setText(context.getString(0x7f0a02fb, aobj1));
        if (azx.c(a))
        {
            textview1.setVisibility(8);
        }
        if (true) goto _L1; else goto _L4
_L4:
    }
}
