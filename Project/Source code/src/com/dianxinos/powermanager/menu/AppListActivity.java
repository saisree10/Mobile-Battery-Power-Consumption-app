// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.menu;

import aao;
import aky;
import akz;
import ala;
import alc;
import aln;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.TextView;
import com.dianxinos.powermanager.ui.MainTitle;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import ly;

public class AppListActivity extends aao
    implements android.widget.AdapterView.OnItemClickListener
{

    public PackageManager a;
    private ListView b;
    private boolean c;
    private ArrayList d;
    private ala e;
    private aln f;
    private LinkedHashSet g;
    private ArrayList h;
    private alc i;
    private MainTitle j;
    private TextView k;

    public AppListActivity()
    {
    }

    public static ArrayList a(AppListActivity applistactivity)
    {
        return applistactivity.d;
    }

    public static ala b(AppListActivity applistactivity)
    {
        return applistactivity.e;
    }

    public static aln c(AppListActivity applistactivity)
    {
        return applistactivity.f;
    }

    public static boolean d(AppListActivity applistactivity)
    {
        return applistactivity.c;
    }

    public static TextView e(AppListActivity applistactivity)
    {
        return applistactivity.k;
    }

    public void onBackPressed()
    {
        f.a(g);
        f.a(h);
        super.onBackPressed();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030002);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        j = (MainTitle)findViewById(0x7f070007);
        a = getPackageManager();
        f = aln.a(this);
        d = new ArrayList();
        e = new ala(this, this);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        b = (ListView)findViewById(0x7f070013);
        b.setAdapter(e);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        k = (TextView)findViewById(0x7f070011);
        TextView textview = k;
        com.dianxinos.dxbs.R.string _tmp4 = ly.i;
        textview.setText(0x7f0a0263);
        b.setEmptyView(k);
        e.a(d);
        b.setOnItemClickListener(this);
        i = new alc(this);
        i.execute(new Void[0]);
        g = new LinkedHashSet();
        h = new ArrayList();
    }

    public void onDestroy()
    {
        synchronized (d)
        {
            d.clear();
        }
        if (i != null && i.getStatus() == android.os.AsyncTask.Status.RUNNING)
        {
            i.cancel(true);
        }
        super.onDestroy();
        return;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onItemClick(AdapterView adapterview, View view, int l, long l1)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        CheckBox checkbox = (CheckBox)(CheckBox)view.findViewById(0x7f070016);
        akz akz1 = (akz)d.get(l);
        boolean flag;
        boolean flag1;
        if (!((akz)d.get(l)).a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        akz1.a = flag;
        flag1 = ((akz)d.get(l)).a;
        checkbox.setChecked(flag1);
        if (flag1)
        {
            g.add(akz.b((akz)d.get(l)));
            h.remove(akz.b((akz)d.get(l)));
            return;
        } else
        {
            g.remove(akz.b((akz)d.get(l)));
            h.add(akz.b((akz)d.get(l)));
            return;
        }
    }

    public void onResume()
    {
        super.onResume();
        MainTitle maintitle = j;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        maintitle.setTitleText(0x7f0a012b);
        j.a();
        MainTitle maintitle1 = j;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        maintitle1.setLeftButtonIcon(0x7f020450);
        j.setLeftButtonOnclickListener(new aky(this));
    }
}
