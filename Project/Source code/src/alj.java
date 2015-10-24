// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.dianxinos.powermanager.menu.AppWhiteListActivity;
import java.util.ArrayList;

public class alj extends BaseAdapter
{

    final AppWhiteListActivity a;
    private Context b;
    private LayoutInflater c;
    private int d;
    private ArrayList e;

    public alj(AppWhiteListActivity appwhitelistactivity, Context context)
    {
        a = appwhitelistactivity;
        super();
        b = context;
        c = LayoutInflater.from(b);
    }

    public void a(ArrayList arraylist)
    {
        e = arraylist;
        d = e.size();
        notifyDataSetChanged();
    }

    public int getCount()
    {
        return d;
    }

    public Object getItem(int i)
    {
        return AppWhiteListActivity.a(a).get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        alk alk1;
        if (view == null)
        {
            LayoutInflater layoutinflater = c;
            com.dianxinos.dxbs.R.layout _tmp = ly.g;
            view = layoutinflater.inflate(0x7f030003, null);
            alk1 = new alk(this);
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            alk1.a = (TextView)view.findViewById(0x7f070015);
            com.dianxinos.dxbs.R.id _tmp2 = ly.f;
            alk1.b = (ImageView)view.findViewById(0x7f070014);
            com.dianxinos.dxbs.R.id _tmp3 = ly.f;
            alk1.c = (CheckBox)view.findViewById(0x7f070016);
            view.setTag(alk1);
        } else
        {
            alk1 = (alk)view.getTag();
        }
        alk1.a.setText(ali.b((ali)e.get(i)));
        alk1.b.setImageDrawable(ali.c((ali)e.get(i)));
        if (((ali)AppWhiteListActivity.a(a).get(i)).a)
        {
            alk1.c.setChecked(true);
            return view;
        } else
        {
            alk1.c.setChecked(false);
            return view;
        }
    }
}
