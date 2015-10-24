// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;

public class awr extends LinearLayout
{

    private Context a;
    private LinearLayout b;
    private awt c;
    private LayoutInflater d;

    public awr(Context context, LayoutInflater layoutinflater)
    {
        super(context);
        a = context;
        d = layoutinflater;
        LayoutInflater layoutinflater1 = d;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater1.inflate(0x7f03007f, this);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        b = (LinearLayout)view.findViewById(0x7f070206);
        b.setOnClickListener(new aws(this));
    }

    static awt a(awr awr1)
    {
        return awr1.c;
    }

    public void setCloseListener(awt awt)
    {
        c = awt;
    }
}
