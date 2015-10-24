// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.dianxinos.powermanager.ui.DxSwitchPreference;
import com.dianxinos.powermanager.ui.PageHorizontalScrollView;
import java.util.ArrayList;
import java.util.Iterator;

public class afc extends auu
    implements android.view.View.OnClickListener, avh, awa
{

    private int c[];
    private int d[];
    private amb e;
    private ArrayList f;
    private ArrayList g;
    private ImageView h;
    private ImageView i;
    private PageHorizontalScrollView j;
    private ImageView k;
    private ImageView l;
    private ImageView m;
    private ImageView n;
    private DxSwitchPreference o;
    private boolean p;

    public afc(Context context, int i1)
    {
        super(context, true);
        int ai[] = new int[4];
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        ai[0] = 0x7f0a017f;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        ai[1] = 0x7f0a01ef;
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        ai[2] = 0x7f0a01f1;
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        ai[3] = 0x7f0a01f3;
        c = ai;
        int ai1[] = new int[4];
        com.dianxinos.dxbs.R.string _tmp4 = ly.i;
        ai1[0] = 0x7f0a01f5;
        com.dianxinos.dxbs.R.string _tmp5 = ly.i;
        ai1[1] = 0x7f0a01f0;
        com.dianxinos.dxbs.R.string _tmp6 = ly.i;
        ai1[2] = 0x7f0a01f2;
        com.dianxinos.dxbs.R.string _tmp7 = ly.i;
        ai1[3] = 0x7f0a01f4;
        d = ai1;
        f = new ArrayList();
        g = new ArrayList();
        Window window = getWindow();
        com.dianxinos.dxbs.R.style _tmp8 = ly.j;
        window.setWindowAnimations(0x7f0b001b);
        LayoutInflater layoutinflater = getLayoutInflater();
        com.dianxinos.dxbs.R.layout _tmp9 = ly.g;
        View view = layoutinflater.inflate(0x7f030046, null);
        b(view);
        h();
        i();
        c(view);
        d(view);
        h(i1);
        j.a(i1);
    }

    static PageHorizontalScrollView a(afc afc1)
    {
        return afc1.j;
    }

    private void a()
    {
        LinearLayout linearlayout = (LinearLayout)j.getChildAt(0);
        if (linearlayout.getChildCount() != f.size())
        {
            linearlayout.removeAllViews();
            i.setVisibility(4);
            h.setVisibility(0);
            j.c(17);
            j.setItemSize(4);
            for (Iterator iterator = f.iterator(); iterator.hasNext(); linearlayout.addView((View)iterator.next())) { }
        }
    }

    private void c(View view)
    {
        e = amb.a(a);
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        n = (ImageView)view.findViewById(0x7f070125);
        n.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        k = (ImageView)view.findViewById(0x7f070128);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        l = (ImageView)view.findViewById(0x7f070129);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        m = (ImageView)view.findViewById(0x7f07012a);
        g.add(k);
        g.add(l);
        g.add(m);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        o = (DxSwitchPreference)view.findViewById(0x7f070131);
        o.setOnPreferenceChangeListener(this);
    }

    private void d(View view)
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        j = (PageHorizontalScrollView)view.findViewById(0x7f07012e);
        LayoutInflater layoutinflater = getLayoutInflater();
        for (int i1 = 0; i1 < 4; i1++)
        {
            com.dianxinos.dxbs.R.layout _tmp1 = ly.g;
            View view1 = layoutinflater.inflate(0x7f030041, null);
            com.dianxinos.dxbs.R.id _tmp2 = ly.f;
            ((TextView)view1.findViewById(0x7f07011b)).setText(c[i1]);
            com.dianxinos.dxbs.R.id _tmp3 = ly.f;
            ((TextView)view1.findViewById(0x7f07011c)).setText(d[i1]);
            f.add(view1);
        }

        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        h = (ImageView)view.findViewById(0x7f07012d);
        h.setOnClickListener(new afd(this));
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        i = (ImageView)view.findViewById(0x7f07012c);
        i.setOnClickListener(new afe(this));
        a();
        j.setChangeItemListener(this);
    }

    private void h(int i1)
    {
        int j1 = 0;
        while (j1 < g.size()) 
        {
            if (i1 == 0)
            {
                ((View)g.get(j1)).setVisibility(4);
            } else
            if (j1 == i1 - 1)
            {
                ((View)g.get(j1)).setVisibility(4);
            } else
            {
                ((View)g.get(j1)).setVisibility(0);
            }
            j1++;
        }
    }

    public void a(int i1)
    {
        boolean flag = true;
        if (h == null || i == null)
        {
            return;
        }
        h(i1);
        boolean flag1;
        if (i1 != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (flag1)
        {
            i.setVisibility(0);
        } else
        {
            i.setVisibility(4);
        }
        if (i1 == 3)
        {
            flag = false;
        }
        if (flag)
        {
            h.setVisibility(0);
            return;
        } else
        {
            h.setVisibility(4);
            return;
        }
    }

    public void a(avg avg)
    {
        if (avg == o)
        {
            boolean flag;
            if (!p)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            p = flag;
            o.setEnabled(p);
            e.m(p);
        }
    }

    public void b(int i1)
    {
        j.a(i1);
    }

    public void onClick(View view)
    {
        if (view == n)
        {
            dismiss();
        }
    }

    public void show()
    {
        p = e.q();
        o.setEnabled(p);
        super.show();
    }
}
