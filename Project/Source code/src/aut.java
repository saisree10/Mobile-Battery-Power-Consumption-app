// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

public class aut extends auu
    implements android.view.View.OnClickListener
{

    private Context c;
    private android.view.View.OnClickListener d;
    private TextView e;

    public aut(Context context)
    {
        super(context);
        c = context;
        h();
        i();
        LayoutInflater layoutinflater = getLayoutInflater();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f03002f, null);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        view.findViewById(0x7f070026).setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        e = (TextView)view.findViewById(0x7f070018);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        View view1 = view.findViewById(0x7f070014);
        com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
        view1.setBackgroundResource(0x7f020189);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        TextView textview = (TextView)view.findViewById(0x7f0700a8);
        com.dianxinos.dxbs.R.string _tmp6 = ly.i;
        textview.setText(0x7f0a02bb);
        com.dianxinos.dxbs.R.id _tmp7 = ly.f;
        view.findViewById(0x7f0700af).setOnClickListener(this);
        b(view);
        com.dianxinos.dxbs.R.id _tmp8 = ly.f;
        view.findViewById(0x7f0700ab).setVisibility(8);
        com.dianxinos.dxbs.R.id _tmp9 = ly.f;
        view.findViewById(0x7f0700ac).setVisibility(8);
    }

    public void a(int i)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        findViewById(0x7f070014).setBackgroundResource(i);
    }

    public void a(android.view.View.OnClickListener onclicklistener)
    {
        d = onclicklistener;
    }

    public void a(String s)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        ((TextView)findViewById(0x7f0700b0)).setText(s);
    }

    public void b(int i)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        ((TextView)findViewById(0x7f0700a8)).setText(i);
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
                dismiss();
                if (d != null)
                {
                    d.onClick(view);
                    return;
                }
            }
        }
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        if (flag);
    }

    public void setTitle(int i)
    {
        e.setText(i);
        if (aoe.b.e() == i)
        {
            com.dianxinos.dxbs.R.id _tmp = ly.f;
            findViewById(0x7f0700a9).setVisibility(0);
        }
    }
}
