// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.dianxinos.powermanager.batterytheme.BatteryThemeActivity;
import java.util.ArrayList;
import java.util.Iterator;

class aql extends ArrayAdapter
{

    final aqj a;
    private Context b;
    private LayoutInflater c;

    public aql(aqj aqj1, Context context)
    {
        a = aqj1;
        super(context, 0);
        b = context;
        c = LayoutInflater.from(b);
    }

    static Context a(aql aql1)
    {
        return aql1.b;
    }

    public void a(ArrayList arraylist)
    {
        if (arraylist == null)
        {
            return;
        }
        super.setNotifyOnChange(false);
        super.clear();
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); super.add((aqn)iterator.next())) { }
        super.notifyDataSetChanged();
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        aqn aqn1 = (aqn)getItem(i);
        aqi aqi1;
        if (view == null)
        {
            LayoutInflater layoutinflater = c;
            com.dianxinos.dxbs.R.layout _tmp = ly.g;
            view = layoutinflater.inflate(0x7f03007b, viewgroup, false);
            aqi aqi2 = new aqi();
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            aqi2.a = (ImageView)view.findViewById(0x7f0701f6);
            com.dianxinos.dxbs.R.id _tmp2 = ly.f;
            aqi2.b = (TextView)view.findViewById(0x7f0701f9);
            com.dianxinos.dxbs.R.id _tmp3 = ly.f;
            aqi2.c = view.findViewById(0x7f0701fa);
            com.dianxinos.dxbs.R.id _tmp4 = ly.f;
            aqi2.d = (TextView)view.findViewById(0x7f0701fb);
            View view1 = aqi2.c;
            com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
            view1.setBackgroundResource(0x7f02041e);
            com.dianxinos.dxbs.R.id _tmp6 = ly.f;
            aqi2.e = (ImageView)view.findViewById(0x7f0701fc);
            com.dianxinos.dxbs.R.id _tmp7 = ly.f;
            aqi2.g = (ImageView)view.findViewById(0x7f0701f8);
            aqi2.h = new aqo(a, b, i);
            view.setTag(aqi2);
            aqi1 = aqi2;
        } else
        {
            aqi1 = (aqi)view.getTag();
        }
        aqi1.h.a(i);
        aqi1.a.setImageBitmap(aqn1.a);
        aqi1.b.setText(aqn1.b);
        if (i == 0)
        {
            aqn1.c = aqj.a(a, "dt", 0);
        } else
        {
            aqn1.c = aqj.a(a, "pt_", i - 1);
        }
        if (aqn1.c)
        {
            aqi1.g.setVisibility(0);
            if (BatteryThemeActivity.c(b))
            {
                aqi1.e.setVisibility(0);
                aqi1.d.setVisibility(0);
                aqi1.c.setVisibility(0);
                aqi1.d.setText("");
                aqi1.c.setOnClickListener(new aqm(this));
                return view;
            } else
            {
                aqi1.e.setVisibility(8);
                aqi1.d.setVisibility(8);
                aqi1.c.setVisibility(8);
                return view;
            }
        } else
        {
            aqi1.c.setOnClickListener(aqi1.h);
            aqi1.c.setVisibility(0);
            aqi1.e.setVisibility(8);
            aqi1.d.setVisibility(0);
            TextView textview = aqi1.d;
            com.dianxinos.dxbs.R.string _tmp8 = ly.i;
            textview.setText(0x7f0a02b1);
            TextView textview1 = aqi1.d;
            Resources resources = view.getResources();
            com.dianxinos.dxbs.R.color _tmp9 = ly.c;
            textview1.setTextColor(resources.getColor(0x7f0900ae));
            aqi1.e.setVisibility(8);
            aqi1.g.setVisibility(4);
            return view;
        }
    }
}
