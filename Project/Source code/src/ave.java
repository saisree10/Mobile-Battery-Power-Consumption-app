// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class ave extends auu
    implements android.view.View.OnClickListener
{

    private Context c;
    private ou d;
    private qb e;

    public ave(Context context, ou ou1)
    {
        super(context);
        c = context;
        d = ou1;
        h();
        i();
        e = new qb((Activity)context);
        LayoutInflater layoutinflater = getLayoutInflater();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f03002f, null);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        view.findViewById(0x7f070026).setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        TextView textview = (TextView)view.findViewById(0x7f070018);
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        textview.setText(0x7f0a02a3);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        View view1 = view.findViewById(0x7f070014);
        com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
        view1.setBackgroundResource(0x7f02018c);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        TextView textview1 = (TextView)view.findViewById(0x7f0700a8);
        com.dianxinos.dxbs.R.string _tmp7 = ly.i;
        textview1.setText(0x7f0a02a4);
        com.dianxinos.dxbs.R.id _tmp8 = ly.f;
        ImageView imageview = (ImageView)view.findViewById(0x7f0700ad);
        ov.a().a(ou1.l, imageview);
        com.dianxinos.dxbs.R.id _tmp9 = ly.f;
        ((TextView)view.findViewById(0x7f0700ae)).setText(ou1.e);
        com.dianxinos.dxbs.R.id _tmp10 = ly.f;
        view.findViewById(0x7f0700af).setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp11 = ly.f;
        ((TextView)view.findViewById(0x7f0700b0)).setCompoundDrawables(null, null, null, null);
        b(view);
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
                e.a(d);
                aje.a(c).a(d.f, System.currentTimeMillis());
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
        }
        if (azy.a(c, d.f))
        {
            d.t = true;
            aje.a(c).c();
        }
        op.a(c, d);
        op.a(c, d.q);
    }
}
