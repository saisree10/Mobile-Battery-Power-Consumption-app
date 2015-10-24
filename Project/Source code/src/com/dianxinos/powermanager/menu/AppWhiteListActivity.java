// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.menu;

import aao;
import alf;
import alg;
import alh;
import ali;
import alj;
import all;
import aln;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.TextView;
import avc;
import com.dianxinos.powermanager.ui.MainTitle;
import java.util.ArrayList;
import ly;

public class AppWhiteListActivity extends aao
    implements android.widget.AdapterView.OnItemClickListener
{

    private ListView a;
    private ArrayList b;
    private alj c;
    private aln d;
    private ArrayList e;
    private all f;
    private MainTitle g;
    private avc h;
    private Handler i;

    public AppWhiteListActivity()
    {
        i = new alf(this);
    }

    public static ArrayList a(AppWhiteListActivity appwhitelistactivity)
    {
        return appwhitelistactivity.b;
    }

    public static alj b(AppWhiteListActivity appwhitelistactivity)
    {
        return appwhitelistactivity.c;
    }

    public static aln c(AppWhiteListActivity appwhitelistactivity)
    {
        return appwhitelistactivity.d;
    }

    public static Handler d(AppWhiteListActivity appwhitelistactivity)
    {
        return appwhitelistactivity.i;
    }

    public void a()
    {
        if (h == null)
        {
            com.dianxinos.dxbs.R.style _tmp = ly.j;
            h = new avc(this, 0x7f0b001a);
        }
        h.show();
    }

    public void b()
    {
        if (h != null)
        {
            h.dismiss();
        }
    }

    public void onBackPressed()
    {
        d.a(e);
        finish();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030002);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        g = (MainTitle)findViewById(0x7f070007);
        b = new ArrayList();
        c = new alj(this, this);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        a = (ListView)findViewById(0x7f070013);
        a.setAdapter(c);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        TextView textview = (TextView)findViewById(0x7f070011);
        com.dianxinos.dxbs.R.string _tmp4 = ly.i;
        textview.setText(0x7f0a012e);
        a.setEmptyView(textview);
        c.a(b);
        a.setOnItemClickListener(this);
        d = aln.a(this);
        d.b(this);
        e = new ArrayList();
    }

    public void onDestroy()
    {
        b.clear();
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int j, long l)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        CheckBox checkbox = (CheckBox)(CheckBox)view.findViewById(0x7f070016);
        ali ali1 = (ali)b.get(j);
        boolean flag;
        boolean flag1;
        if (!((ali)b.get(j)).a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ali1.a = flag;
        flag1 = ((ali)b.get(j)).a;
        checkbox.setChecked(flag1);
        if (flag1)
        {
            e.remove(ali.a((ali)b.get(j)));
            return;
        } else
        {
            e.add(ali.a((ali)b.get(j)));
            return;
        }
    }

    public void onPause()
    {
        super.onPause();
        if (f != null && f.getStatus() == android.os.AsyncTask.Status.RUNNING)
        {
            f.cancel(true);
        }
    }

    public void onResume()
    {
        f = new all(this);
        f.execute(new Void[0]);
        MainTitle maintitle = g;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        maintitle.setTitleText(0x7f0a012a);
        g.a();
        MainTitle maintitle1 = g;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        maintitle1.setLeftButtonIcon(0x7f020450);
        g.setLeftButtonOnclickListener(new alg(this));
        MainTitle maintitle2 = g;
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        maintitle2.setRightButtonIcon(0x7f0203e2);
        g.setRightButtonOnclickListener(new alh(this));
        super.onResume();
    }
}
