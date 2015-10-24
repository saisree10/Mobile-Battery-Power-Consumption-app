// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.dianxinos.powermanager.usage.AppPowerUsageDetails;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;

public class aya extends BaseAdapter
{

    private static int j;
    private static int k;
    android.view.View.OnClickListener a;
    private Context b;
    private LayoutInflater c;
    private ath d;
    private ArrayList e;
    private HashSet f;
    private double g;
    private int h;
    private int i;
    private Comparator l;

    public aya(Context context)
    {
        l = new ayb(this);
        a = new ayc(this);
        b = context;
        a();
        c = LayoutInflater.from(b);
        d = ath.a(b);
    }

    static ath a(aya aya1)
    {
        return aya1.d;
    }

    private ArrayList a(Context context, ArrayList arraylist)
    {
        ArrayList arraylist1;
        int i1;
        int j1;
        arraylist1 = new ArrayList();
        i1 = 0;
        j1 = 0;
_L6:
        if (i1 >= arraylist.size()) goto _L2; else goto _L1
_L1:
        atu atu1 = (atu)arraylist.get(i1);
        if (azy.b(d.a(atu1.a, atu1.b).b, context))
        {
            arraylist1.add(atu1);
            arraylist.remove(i1);
            j1++;
        }
        if ((i1 + 1) - j1 != 5) goto _L3; else goto _L2
_L2:
        int k1 = arraylist.size();
        if (j1 != 0 && k1 != 0) goto _L5; else goto _L4
_L4:
        return arraylist;
_L3:
        i1++;
          goto _L6
_L5:
        int l1;
        int j2;
        int i2;
        if (k1 >= 5)
        {
            l1 = 5;
        } else
        {
            l1 = k1;
        }
        for (i2 = 0; i2 < j1; i2++)
        {
            arraylist.add(l1 + i2, arraylist1.get(i2));
        }

        arraylist1.clear();
        j2 = l1;
_L9:
        if (j2 >= l1 + j1) goto _L4; else goto _L7
_L7:
        double d1 = ((atu)arraylist.get(j2)).f - ((atu)arraylist.get(j2 - 1)).f;
        if (d1 <= 0.0D) goto _L4; else goto _L8
_L8:
        double d2 = d1 / (double)j2;
        for (int k2 = 0; k2 < j2; k2++)
        {
            double d4 = ((atu)arraylist.get(k2)).f;
            ((atu)arraylist.get(k2)).f = d4 + d2;
        }

        double d3 = ((atu)arraylist.get(j2)).f;
        ((atu)arraylist.get(j2)).f = d3 - d1;
        j2++;
          goto _L9
    }

    private void a()
    {
        Resources resources = b.getResources();
        com.dianxinos.dxbs.R.color _tmp = ly.c;
        j = resources.getColor(0x7f090020);
        com.dianxinos.dxbs.R.color _tmp1 = ly.c;
        k = resources.getColor(0x7f090036);
    }

    static void a(aya aya1, ayd ayd1)
    {
        aya1.a(ayd1);
    }

    private void a(ayd ayd1)
    {
        int i1 = ayd1.g;
        atu atu1 = (atu)e.get(i1);
        ati ati1 = d.a(atu1.a, atu1.b);
        bal.a(b, "monitor", "astop", Integer.valueOf(1));
        if (ati1.b != null)
        {
            if (ati1.b.equals("com.dianxinos.dxbs"))
            {
                Context context1 = b;
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                String s1 = context1.getString(0x7f0a0142);
                Toast.makeText(b, s1, 0).show();
                return;
            }
            if (!azy.c(b, ati1.b))
            {
                Intent intent1 = azf.a(ati1.b);
                b.startActivity(intent1);
                return;
            } else
            {
                Context context = b;
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                Object aobj[] = new Object[1];
                aobj[0] = ati1.a;
                String s = context.getString(0x7f0a013e, aobj);
                Toast.makeText(b, s, 0).show();
                f.remove(ati1.b);
                notifyDataSetChanged();
                return;
            }
        } else
        {
            Intent intent = new Intent(b, com/dianxinos/powermanager/usage/AppPowerUsageDetails);
            intent.putExtra("position", i1);
            intent.putExtra("bar_percent", ayd1.h);
            intent.putExtra("bg", false);
            intent.setFlags(0x10000000);
            b.startActivity(intent);
            return;
        }
    }

    static Context b(aya aya1)
    {
        return aya1.b;
    }

    public void a(int i1)
    {
        i = i1;
        if (i == 2)
        {
            double d1;
            if (e.size() > 0)
            {
                d1 = ((atu)e.get(0)).w;
            } else
            {
                d1 = 1.0D;
            }
            g = d1;
        }
    }

    public void a(ArrayList arraylist)
    {
        e = a(b, arraylist);
        double d1;
        if (e.size() > 0)
        {
            d1 = ((atl)e.get(0)).f;
        } else
        {
            d1 = 1.0D;
        }
        g = d1;
        h = e.size();
        notifyDataSetChanged();
    }

    public void a(HashSet hashset)
    {
        f = hashset;
        notifyDataSetChanged();
    }

    public int getCount()
    {
        return h;
    }

    public Object getItem(int i1)
    {
        return null;
    }

    public long getItemId(int i1)
    {
        return 0L;
    }

    public View getView(int i1, View view, ViewGroup viewgroup)
    {
        ayd ayd1;
        atl atl1;
        double d1;
        atu atu1;
        ati ati1;
        Resources resources;
        android.graphics.drawable.Drawable drawable;
        Resources resources1;
        android.graphics.drawable.Drawable drawable1;
        double d2;
        awc awc1;
        if (view == null)
        {
            LayoutInflater layoutinflater = c;
            com.dianxinos.dxbs.R.layout _tmp = ly.g;
            view = layoutinflater.inflate(0x7f03005d, null);
            ayd ayd2 = new ayd();
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            ayd2.a = (ImageView)view.findViewById(0x7f070014);
            com.dianxinos.dxbs.R.id _tmp2 = ly.f;
            ayd2.b = (TextView)view.findViewById(0x7f07001f);
            com.dianxinos.dxbs.R.id _tmp3 = ly.f;
            ayd2.c = (TextView)view.findViewById(0x7f0701c5);
            com.dianxinos.dxbs.R.id _tmp4 = ly.f;
            ayd2.d = (ImageView)view.findViewById(0x7f0701b6);
            com.dianxinos.dxbs.R.id _tmp5 = ly.f;
            ayd2.e = (TextView)view.findViewById(0x7f0701b5);
            com.dianxinos.dxbs.R.id _tmp6 = ly.f;
            ayd2.f = (TextView)view.findViewById(0x7f07018c);
            if (!bag.a().b() && !azf.a(b))
            {
                ayd2.f.setVisibility(8);
            }
            view.setTag(ayd2);
            ayd1 = ayd2;
        } else
        {
            ayd1 = (ayd)view.getTag();
        }
        atl1 = (atl)e.get(i1);
        d1 = atl1.f;
        if (i == 2)
        {
            d1 = ((atu)atl1).w;
        }
        atu1 = (atu)atl1;
        ati1 = d.a(atu1.a, atu1.b);
        ayd1.g = i1;
        ayd1.f.setTag(ayd1);
        ayd1.a.setImageDrawable(ati1.c);
        ayd1.b.setText(ati1.a);
        if (ati1.b == null || f == null || f.contains(atu1.b))
        {
            TextView textview = ayd1.c;
            com.dianxinos.dxbs.R.string _tmp7 = ly.i;
            textview.setText(0x7f0a0140);
            ayd1.c.setTextColor(j);
            ayd1.f.setTextColor(j);
            ayd1.f.setOnClickListener(a);
        } else
        {
            TextView textview2 = ayd1.c;
            com.dianxinos.dxbs.R.string _tmp8 = ly.i;
            textview2.setText(0x7f0a0141);
            ayd1.c.setTextColor(k);
            ayd1.f.setTextColor(k);
            ayd1.f.setClickable(false);
            ayd1.f.setFocusable(false);
        }
        if (d1 > 99.900001525878906D)
        {
            ayd1.e.setText("100%");
        } else
        {
            TextView textview1 = ayd1.e;
            Object aobj[] = new Object[1];
            aobj[0] = Double.valueOf(d1);
            textview1.setText(azq.a("%.1f%%", aobj));
        }
        resources = b.getResources();
        com.dianxinos.dxbs.R.drawable _tmp9 = ly.e;
        drawable = resources.getDrawable(0x7f0201e4);
        resources1 = b.getResources();
        com.dianxinos.dxbs.R.drawable _tmp10 = ly.e;
        drawable1 = resources1.getDrawable(0x7f0201e5);
        d2 = d1 / g;
        awc1 = new awc(drawable, drawable1, d2);
        ayd1.d.setImageDrawable(awc1);
        ayd1.h = d2;
        return view;
    }
}
