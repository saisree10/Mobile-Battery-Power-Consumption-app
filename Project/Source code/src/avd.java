// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

public class avd extends auu
    implements android.view.View.OnClickListener
{

    private Context c;
    private ou d;
    private View e;
    private View f;
    private qb g;

    public avd(Context context)
    {
        super(context);
        c = context;
        g = new qb((Activity)c);
        h();
        i();
        LayoutInflater layoutinflater = getLayoutInflater();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f03002f, null);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        view.findViewById(0x7f070026).setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        TextView textview = (TextView)view.findViewById(0x7f070018);
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        textview.setText(0x7f0a038c);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        View view1 = view.findViewById(0x7f070014);
        com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
        view1.setBackgroundResource(0x7f020189);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        TextView textview1 = (TextView)view.findViewById(0x7f0700a8);
        com.dianxinos.dxbs.R.string _tmp7 = ly.i;
        textview1.setText(0x7f0a02bb);
        com.dianxinos.dxbs.R.id _tmp8 = ly.f;
        view.findViewById(0x7f0700af).setOnClickListener(this);
        b(view);
        com.dianxinos.dxbs.R.id _tmp9 = ly.f;
        e = view.findViewById(0x7f0700ab);
        com.dianxinos.dxbs.R.id _tmp10 = ly.f;
        f = view.findViewById(0x7f0700ac);
        com.dianxinos.dxbs.R.id _tmp11 = ly.f;
        ((TextView)view.findViewById(0x7f0700b0)).setCompoundDrawables(null, null, null, null);
        d = new ou();
        d.q = "DASHI";
        d.m = "https://play.google.com/store/apps/details?id=com.dianxinos.optimizer.duplay";
        d.e = "DU Speed Booster";
        d.f = "com.dianxinos.optimizer.duplay";
        d.j = 1;
    }

    public void a()
    {
        e.setVisibility(8);
        f.setVisibility(8);
    }

    public void onClick(View view)
    {
        int i = view.getId();
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        if (i == 0x7f070026)
        {
            dismiss();
        } else
        {
            int j = view.getId();
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            if (j == 0x7f0700af)
            {
                d.t = azy.a(c, d.f);
                g.a(d);
                return;
            }
        }
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        if (!flag)
        {
            return;
        } else
        {
            d.t = azy.a(c, d.f);
            op.a(c, d.q);
            op.a(c, d);
            return;
        }
    }
}
