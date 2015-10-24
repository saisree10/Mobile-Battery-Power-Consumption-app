// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.dianxinos.powermanager.BatteryInfoDetailsActivity;
import java.util.ArrayList;
import java.util.Iterator;

public class aah extends BaseAdapter
{

    final BatteryInfoDetailsActivity a;
    private boolean b;
    private ArrayList c;
    private ArrayList d;
    private Context e;
    private LayoutInflater f;
    private boolean g;

    public aah(BatteryInfoDetailsActivity batteryinfodetailsactivity, Context context)
    {
        a = batteryinfodetailsactivity;
        super();
        b = true;
        c = new ArrayList();
        d = new ArrayList();
        e = context;
        f = LayoutInflater.from(e);
    }

    public acy a(int i)
    {
        if (i == 3)
        {
            return null;
        }
        if (i > 3)
        {
            i--;
        }
        return (acy)d.get(i);
    }

    public ArrayList a()
    {
        return d;
    }

    public void a(acy acy1)
    {
        d.remove(acy1);
        notifyDataSetChanged();
    }

    public void a(acy acy1, int i)
    {
        if (i > 3)
        {
            i--;
        }
        d.add(i, acy1);
        notifyDataSetChanged();
    }

    public void a(ArrayList arraylist, ArrayList arraylist1)
    {
        d.clear();
        int j;
        for (Iterator iterator = arraylist1.iterator(); iterator.hasNext(); d.add(arraylist.get(j)))
        {
            j = ((Integer)iterator.next()).intValue();
        }

        boolean flag = b;
        int i = 0;
        if (flag)
        {
            b = false;
            for (; i < d.size(); i++)
            {
                acy acy2 = (acy)d.get(i);
                acy2.a(BatteryInfoDetailsActivity.a(a)[i]);
                c.add(Integer.valueOf(acy2.f()));
            }

        } else
        {
            for (; i < d.size(); i++)
            {
                acy acy1 = (acy)d.get(i);
                if (c.indexOf(Integer.valueOf(acy1.f())) == -1)
                {
                    c.add(Integer.valueOf(acy1.f()));
                }
                acy1.a(BatteryInfoDetailsActivity.a(a)[c.indexOf(Integer.valueOf(acy1.f()))]);
            }

        }
    }

    public void a(boolean flag)
    {
        g = flag;
        notifyDataSetChanged();
    }

    public int getCount()
    {
        return 1 + d.size();
    }

    public Object getItem(int i)
    {
        return a(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public int getItemViewType(int i)
    {
        return i != 3 ? 1 : 0;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (i == 3)
        {
            if (view == null)
            {
                LayoutInflater layoutinflater1 = f;
                com.dianxinos.dxbs.R.layout _tmp = ly.g;
                view = layoutinflater1.inflate(0x7f030008, null);
            }
            return view;
        }
        aai aai1;
        acy acy1;
        if (view == null)
        {
            LayoutInflater layoutinflater = f;
            com.dianxinos.dxbs.R.layout _tmp1 = ly.g;
            view = layoutinflater.inflate(0x7f030007, null);
            aai1 = new aai(this, null);
            com.dianxinos.dxbs.R.id _tmp2 = ly.f;
            aai1.a = (ImageView)view.findViewById(0x7f070022);
            com.dianxinos.dxbs.R.id _tmp3 = ly.f;
            aai1.b = (TextView)view.findViewById(0x7f070023);
            com.dianxinos.dxbs.R.id _tmp4 = ly.f;
            aai1.c = (TextView)view.findViewById(0x7f070024);
            com.dianxinos.dxbs.R.id _tmp5 = ly.f;
            aai1.d = (ImageView)view.findViewById(0x7f070025);
            view.setTag(aai1);
        } else
        {
            aai1 = (aai)view.getTag();
        }
        if (i > 3)
        {
            i--;
        }
        acy1 = (acy)d.get(i);
        aai1.a.setBackgroundResource(acy1.a());
        aai1.a.setImageResource(acy1.c());
        aai1.b.setText(acy1.d());
        aai1.c.setText(acy1.e());
        if (acy1.b())
        {
            Resources resources1 = a.getResources();
            com.dianxinos.dxbs.R.color _tmp6 = ly.c;
            int k = resources1.getColor(0x7f090090);
            aai1.c.setTextColor(k);
        } else
        {
            Resources resources = a.getResources();
            com.dianxinos.dxbs.R.color _tmp7 = ly.c;
            int j = resources.getColor(0x7f09006b);
            aai1.c.setTextColor(j);
        }
        if (g && !TextUtils.isEmpty(acy1.d()))
        {
            aai1.d.setVisibility(0);
            return view;
        } else
        {
            aai1.d.setVisibility(8);
            return view;
        }
    }

    public int getViewTypeCount()
    {
        return 2;
    }

    public boolean isEnabled(int i)
    {
        return i != 3;
    }
}
