// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.dianxinos.powermanager.menu.AppListActivity;
import java.util.ArrayList;

public class ala extends BaseAdapter
{

    final AppListActivity a;
    private Context b;
    private LayoutInflater c;
    private int d;
    private ArrayList e;

    public ala(AppListActivity applistactivity, Context context)
    {
        a = applistactivity;
        super();
        b = context;
        c = LayoutInflater.from(b);
    }

    public View a(ViewGroup viewgroup)
    {
        LayoutInflater layoutinflater = c;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f030003, null);
        new alb(this, view);
        return view;
    }

    public void a(View view, int i)
    {
        ((alb)view.getTag()).a((akz)e.get(i));
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
        return AppListActivity.a(a).get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = a(viewgroup);
        }
        a(view, i);
        return view;
    }
}
