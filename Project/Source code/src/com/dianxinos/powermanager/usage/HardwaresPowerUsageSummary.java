// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.usage;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import atl;
import ato;
import atq;
import atr;
import ayl;
import ayn;
import ayo;
import ays;
import azf;
import azq;
import bal;
import java.util.ArrayList;
import ly;
import n;
import rc;

// Referenced classes of package com.dianxinos.powermanager.usage:
//            AppsPowerUsageHistory, HwPowerUsageDetails

public class HardwaresPowerUsageSummary extends rc
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener, atq
{

    private static String e = "HardwaresPowerUsageSummary";
    private ato f;
    private atl g;
    private ayl h;
    private ListView i;
    private LinearLayout j;
    private View k;
    private int l;
    private ays m;
    private ayo n;
    private View o;
    private View p;
    private ImageView q;
    private boolean r;
    private View s;

    public HardwaresPowerUsageSummary()
    {
        n = new ayo(this);
        r = true;
    }

    public static void a(HardwaresPowerUsageSummary hardwarespowerusagesummary)
    {
        hardwarespowerusagesummary.f();
    }

    private void a(boolean flag)
    {
        if (flag)
        {
            o.setVisibility(0);
            p.setVisibility(8);
            return;
        } else
        {
            o.setVisibility(8);
            AppsPowerUsageHistory.a(getActivity(), q, false, false, false);
            p.setVisibility(0);
            return;
        }
    }

    private void f()
    {
        atr atr1 = f.a();
        if (atr1 == null)
        {
            if (l <= 1)
            {
                f.b();
                l = 1 + l;
                return;
            } else
            {
                m.a(getActivity(), d);
                return;
            }
        }
        m.a(getActivity(), d);
        g = atr1.d;
        if (g.g.isEmpty())
        {
            s.setVisibility(8);
        }
        h.a(g.g);
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        TextView textview = (TextView)a(0x7f0701c6);
        int i1 = (int)(atr1.b / 1000L);
        String s1 = azq.a(getActivity(), i1);
        int _tmp1 = (int)(g.d / 3600D);
        String s2;
        if (azf.a() == 0)
        {
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            s2 = getString(0x7f0a021d, new Object[] {
                s1
            });
        } else
        {
            com.dianxinos.dxbs.R.string _tmp3 = ly.i;
            s2 = getString(0x7f0a0082, new Object[] {
                s1
            });
        }
        textview.setText(s2);
    }

    public boolean a()
    {
        Activity activity = getActivity().getParent();
        if (activity != null)
        {
            activity.onBackPressed();
        } else
        {
            super.a();
        }
        return true;
    }

    public void b()
    {
        n.sendEmptyMessage(1);
    }

    public void onClick(View view)
    {
        if (view != k || g == null)
        {
            return;
        }
        if (r)
        {
            r = false;
            a(r);
            return;
        } else
        {
            r = true;
            a(r);
            return;
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        d = layoutinflater.inflate(0x7f030068, viewgroup, false);
        m = new ays();
        h = new ayl(getActivity());
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        i = (ListView)a(0x7f07013c);
        n n1 = getActivity();
        com.dianxinos.dxbs.R.layout _tmp2 = ly.g;
        s = View.inflate(n1, 0x7f030069, null);
        i.addFooterView(s);
        i.setAdapter(h);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        j = (LinearLayout)a(0x7f070011);
        i.setEmptyView(j);
        i.setOnItemClickListener(this);
        f = ato.a(getActivity());
        f.a(this);
        f();
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        k = a(0x7f0701c8);
        k.setOnClickListener(this);
        f.b();
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        o = a(0x7f0701cb);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        p = a(0x7f0701c9);
        com.dianxinos.dxbs.R.id _tmp7 = ly.f;
        q = (ImageView)a(0x7f0701ca);
        return d;
    }

    public void onDestroy()
    {
        super.onDestroy();
        f.b(this);
        m.b();
    }

    public void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        ayn ayn1 = (ayn)view.getTag();
        if (ayn1 == null)
        {
            return;
        } else
        {
            Intent intent = new Intent(getActivity(), com/dianxinos/powermanager/usage/HwPowerUsageDetails);
            intent.putExtra("position", i1);
            intent.putExtra("bar_percent", ayn1.h);
            startActivity(intent);
            bal.a(getActivity(), "monitor", "hdetail", Integer.valueOf(1));
            return;
        }
    }

    public void onResume()
    {
        super.onResume();
        if (m.a())
        {
            f.b();
        }
        f.c();
        h.notifyDataSetChanged();
    }

    public void startActivity(Intent intent)
    {
        getActivity().getParent().startActivity(intent);
    }

}
