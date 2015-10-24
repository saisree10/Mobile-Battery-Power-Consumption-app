// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;

public class ayl extends BaseAdapter
{

    public static final int a[];
    android.view.View.OnClickListener b;
    private Context c;
    private LayoutInflater d;
    private ath e;
    private ArrayList f;
    private double g;
    private int h;

    public ayl(Context context)
    {
        b = new aym(this);
        c = context;
        d = LayoutInflater.from(c);
        e = ath.a(c);
    }

    static Context a(ayl ayl1)
    {
        return ayl1.c;
    }

    private String a(int i)
    {
        String s = "";
        amh amh1 = amp.a(c).g();
        if (i == 1)
        {
            StringBuilder stringbuilder = new StringBuilder();
            Context context = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            s = stringbuilder.append(context.getString(0x7f0a0077)).append(amh1.a(0).b()).toString();
        } else
        {
            if (i == 2)
            {
                return amh1.a(2).b();
            }
            if (i == 4)
            {
                return amh1.l().b();
            }
            if (i == 3)
            {
                return amh1.a(3).b();
            }
            if (i == 7)
            {
                return amh1.a(9).b();
            }
            if (i == 9)
            {
                azh azh1 = azh.a(c);
                azh1.e();
                if (azh1.a() == 0)
                {
                    StringBuilder stringbuilder1 = new StringBuilder();
                    Context context1 = c;
                    com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                    StringBuilder stringbuilder2 = stringbuilder1.append(context1.getString(0x7f0a0078));
                    Context context2 = c;
                    com.dianxinos.dxbs.R.string _tmp2 = ly.i;
                    return stringbuilder2.append(context2.getString(0x7f0a0068)).toString();
                } else
                {
                    StringBuilder stringbuilder3 = new StringBuilder();
                    Context context3 = c;
                    com.dianxinos.dxbs.R.string _tmp3 = ly.i;
                    StringBuilder stringbuilder4 = stringbuilder3.append(context3.getString(0x7f0a0078)).append(String.valueOf(azh1.d(0) / 1000));
                    Context context4 = c;
                    com.dianxinos.dxbs.R.string _tmp4 = ly.i;
                    return stringbuilder4.append(context4.getString(0x7f0a0079)).toString();
                }
            }
        }
        return s;
    }

    public void a(ArrayList arraylist)
    {
        f = arraylist;
        double d1;
        if (f.size() > 0)
        {
            d1 = ((atl)f.get(0)).e;
        } else
        {
            d1 = 1.0D;
        }
        g = d1;
        h = f.size();
        notifyDataSetChanged();
    }

    public int getCount()
    {
        return h;
    }

    public Object getItem(int i)
    {
        return null;
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ayn ayn1;
        atl atl1;
        double d1;
        atd atd1;
        ImageView imageview;
        Resources resources;
        android.graphics.drawable.Drawable drawable;
        Resources resources1;
        android.graphics.drawable.Drawable drawable1;
        double d2;
        awc awc1;
        if (view == null)
        {
            LayoutInflater layoutinflater = d;
            com.dianxinos.dxbs.R.layout _tmp = ly.g;
            view = layoutinflater.inflate(0x7f030065, null);
            ayn1 = new ayn();
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            ayn1.a = (ImageView)view.findViewById(0x7f070014);
            com.dianxinos.dxbs.R.id _tmp2 = ly.f;
            ayn1.b = (TextView)view.findViewById(0x7f07001f);
            com.dianxinos.dxbs.R.id _tmp3 = ly.f;
            ayn1.c = (TextView)view.findViewById(0x7f0701c5);
            com.dianxinos.dxbs.R.id _tmp4 = ly.f;
            ayn1.d = (ImageView)view.findViewById(0x7f0701b6);
            com.dianxinos.dxbs.R.id _tmp5 = ly.f;
            ayn1.e = (TextView)view.findViewById(0x7f0701b5);
            com.dianxinos.dxbs.R.id _tmp6 = ly.f;
            ayn1.f = (ImageView)view.findViewById(0x7f07018c);
            ayn1.f.setOnClickListener(b);
            view.setTag(ayn1);
        } else
        {
            ayn1 = (ayn)view.getTag();
        }
        ayn1.g = i;
        atl1 = (atl)f.get(i);
        d1 = atl1.e;
        atd1 = (atd)atl1;
        ayn1.a.setImageResource(atg.b(atd1.a));
        ayn1.b.setText(atg.a(atd1.a));
        ayn1.c.setText(a(atd1.a));
        imageview = ayn1.f;
        com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
        imageview.setImageResource(0x7f0201d8);
        if (d1 > 99.900001525878906D)
        {
            ayn1.e.setText("100%");
        } else
        {
            TextView textview = ayn1.e;
            Object aobj[] = new Object[1];
            aobj[0] = Double.valueOf(d1);
            textview.setText(azq.a("%.1f%%", aobj));
        }
        resources = c.getResources();
        com.dianxinos.dxbs.R.drawable _tmp8 = ly.e;
        drawable = resources.getDrawable(0x7f0201e4);
        resources1 = c.getResources();
        com.dianxinos.dxbs.R.drawable _tmp9 = ly.e;
        drawable1 = resources1.getDrawable(0x7f0201e5);
        d2 = d1 / g;
        awc1 = new awc(drawable, drawable1, d2);
        ayn1.d.setImageDrawable(awc1);
        ayn1.h = d2;
        ayn1.i = atd1.a;
        ayn1.f.setTag(ayn1);
        if (i < a.length)
        {
            ayn1.a.setBackgroundResource(a[i % a.length]);
        }
        return view;
    }

    static 
    {
        int ai[] = new int[9];
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        ai[0] = 0x7f0201f3;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        ai[1] = 0x7f0201f4;
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        ai[2] = 0x7f0201f5;
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        ai[3] = 0x7f0201f6;
        com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
        ai[4] = 0x7f0201f7;
        com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
        ai[5] = 0x7f0201f8;
        com.dianxinos.dxbs.R.drawable _tmp6 = ly.e;
        ai[6] = 0x7f0201f9;
        com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
        ai[7] = 0x7f0201fa;
        com.dianxinos.dxbs.R.drawable _tmp8 = ly.e;
        ai[8] = 0x7f0201fb;
        a = ai;
    }
}
