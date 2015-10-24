// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

public class agx extends auu
{

    public agx(Context context, int i, int j)
    {
        super(context);
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        setTitle(0x7f0a02d6);
        e();
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        a(0x7f0a02d9, new agy(this, context));
        d();
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        b(0x7f0a0115, null);
        LayoutInflater layoutinflater = LayoutInflater.from(context);
        com.dianxinos.dxbs.R.layout _tmp3 = ly.g;
        View view = layoutinflater.inflate(0x7f03001b, null);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        TextView textview = (TextView)view.findViewById(0x7f070076);
        com.dianxinos.dxbs.R.string _tmp5 = ly.i;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i);
        textview.setText(context.getString(0x7f0a02d7, aobj));
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        TextView textview1 = (TextView)view.findViewById(0x7f070077);
        com.dianxinos.dxbs.R.string _tmp7 = ly.i;
        Object aobj1[] = new Object[1];
        aobj1[0] = Integer.valueOf(j);
        textview1.setText(context.getString(0x7f0a02d8, aobj1));
        b(view);
    }
}
