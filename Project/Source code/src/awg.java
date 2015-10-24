// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

public class awg extends auu
{

    private Context c;
    private TextView d;

    public awg(Context context)
    {
        super(context);
        c = context;
        a(false);
        LayoutInflater layoutinflater = getLayoutInflater();
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f03006e, null);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        d = (TextView)view.findViewById(0x7f070018);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        view.findViewById(0x7f0701d8).setOnClickListener(new awh(this));
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        view.findViewById(0x7f0701d9).setOnClickListener(new awi(this));
        h();
        i();
        b(view);
    }

    static Context a(awg awg1)
    {
        return awg1.c;
    }

    public void a(int i, int j)
    {
        TextView textview = d;
        Context context = c;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(j);
        textview.setText(context.getString(i, aobj));
    }

    public void setTitle(int i)
    {
        d.setText(i);
    }
}
