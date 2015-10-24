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
import java.util.ArrayList;
import java.util.Iterator;

public class aqg extends ArrayAdapter
    implements aet
{

    private aeu a;
    private Context b;
    private LayoutInflater c;
    private int d;
    private int e;

    public aqg(Context context, aeu aeu1)
    {
        super(context, 0);
        b = context;
        c = LayoutInflater.from(b);
        Resources resources = b.getResources();
        com.dianxinos.dxbs.R.dimen _tmp = ly.d;
        e = resources.getDimensionPixelSize(0x7f080256);
        Resources resources1 = b.getResources();
        com.dianxinos.dxbs.R.dimen _tmp1 = ly.d;
        d = resources1.getDimensionPixelSize(0x7f080257);
        a = aeu1;
    }

    public void a()
    {
        notifyDataSetChanged();
    }

    public void a(String s, int i)
    {
        notifyDataSetChanged();
    }

    public void a(ArrayList arraylist)
    {
        if (arraylist == null)
        {
            return;
        }
        super.setNotifyOnChange(false);
        super.clear();
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); super.add((aev)iterator.next())) { }
        super.notifyDataSetChanged();
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        aev aev1 = (aev)getItem(i);
        aqi aqi1;
        android.graphics.drawable.Drawable drawable;
        android.graphics.drawable.BitmapDrawable bitmapdrawable;
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
            com.dianxinos.dxbs.R.id _tmp5 = ly.f;
            aqi2.e = (ImageView)view.findViewById(0x7f0701fc);
            com.dianxinos.dxbs.R.id _tmp6 = ly.f;
            aqi2.g = (ImageView)view.findViewById(0x7f0701f8);
            com.dianxinos.dxbs.R.id _tmp7 = ly.f;
            aqi2.f = (ImageView)view.findViewById(0x7f0701fd);
            aqi2.h = new aqh(b, a);
            aqi2.c.setOnClickListener(aqi2.h);
            view.setTag(aqi2);
            aqi1 = aqi2;
        } else
        {
            aqi1 = (aqi)view.getTag();
        }
        aqi1.h.a(aev1);
        aev1.h = a.a(aev1);
        a.a(aqi1.c, aqi1.d, aqi1.e, aqi1.f, aev1);
        if (aev1.h == aew.g)
        {
            aqi1.g.setVisibility(0);
        } else
        {
            aqi1.g.setVisibility(4);
        }
        aqi1.a.setTag(Integer.valueOf(aev1.k.hashCode()));
        drawable = aqi1.a.getDrawable();
        if (drawable != null && (drawable instanceof bas) && !((bas)drawable).a.equals(aev1.k))
        {
            ((bas)drawable).a();
        }
        bitmapdrawable = bbk.a().a(aev1.k);
        if (bitmapdrawable != null)
        {
            aqi1.a.setImageDrawable(bitmapdrawable);
        } else
        {
            bas bas1 = new bas(aev1.k);
            aqi1.a.setImageDrawable(bas1);
            bas1.a(aqi1.a, e, d);
        }
        aqi1.b.setText(aev1.l);
        return view;
    }
}
