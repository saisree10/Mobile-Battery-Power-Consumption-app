// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Message;
import android.support.v4.view.ViewPager;
import android.view.View;
import com.dianxinos.common.ui.fragment.TabInfo;
import com.dianxinos.common.ui.fragment.TitleIndicator;
import com.dianxinos.powermanager.ui.MainTitle;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class rd extends aan
    implements em
{

    protected int n;
    protected int o;
    protected ArrayList p;
    protected rf q;
    protected ViewPager r;
    protected TitleIndicator s;
    protected MainTitle t;
    protected View u;
    private boolean v;

    public rd()
    {
        n = 0;
        o = -1;
        p = new ArrayList();
        q = null;
        v = false;
    }

    private final void i()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        t = (MainTitle)findViewById(0x7f070018);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        u = findViewById(0x7f0700ed);
        n = a(p);
        Intent intent = getIntent();
        if (intent != null)
        {
            n = intent.getIntExtra("tab", n);
        }
        q = new rf(this, this, e(), p);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        r = (ViewPager)findViewById(0x7f0700ef);
        r.setAdapter(q);
        r.setOnPageChangeListener(this);
        r.setOffscreenPageLimit(p.size());
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        s = (TitleIndicator)findViewById(0x7f0700ee);
        s.a(n, p, r);
        r.setCurrentItem(n);
        Message message = g();
        if (message != null)
        {
            r.post(new re(this, message));
        }
    }

    protected abstract int a(ArrayList arraylist);

    public void a(int j)
    {
        s.b(j);
        n = j;
    }

    public void a(int j, float f1, int k)
    {
        s.a(k + j * (r.getWidth() + r.getPageMargin()));
        for (int l = 0; l < p.size(); l++)
        {
            TabInfo tabinfo = (TabInfo)p.get(l);
            if (tabinfo.b != null)
            {
                tabinfo.b.e();
            }
        }

    }

    public void b(int j)
    {
        if (j == 0)
        {
            if (o != n && o >= 0 && o < p.size())
            {
                TabInfo tabinfo1 = (TabInfo)p.get(o);
                if (tabinfo1.b != null)
                {
                    tabinfo1.b.a_();
                }
            }
            if (n != o)
            {
                TabInfo tabinfo = (TabInfo)p.get(n);
                if (tabinfo.b != null)
                {
                    tabinfo.b.b_();
                }
            }
            o = n;
        }
    }

    protected boolean f()
    {
        TabInfo tabinfo = (TabInfo)p.get(n);
        if (tabinfo.b != null)
        {
            return tabinfo.b.a();
        } else
        {
            return false;
        }
    }

    public void finish()
    {
        super.finish();
        if (v)
        {
            com.dianxinos.dxbs.R.anim _tmp = ly.a;
            com.dianxinos.dxbs.R.anim _tmp1 = ly.a;
            overridePendingTransition(0x7f04000d, 0x7f040010);
        }
    }

    protected Message g()
    {
        return null;
    }

    protected int h()
    {
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        return 0x7f03003e;
    }

    public void onBackPressed()
    {
        if (!f())
        {
            finish();
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        ViewPager viewpager;
        Resources resources;
        try
        {
            v = getIntent().getBooleanExtra("extra.has_anim", false);
        }
        catch (Exception exception) { }
        setContentView(h());
        i();
        viewpager = r;
        resources = getResources();
        com.dianxinos.dxbs.R.dimen _tmp = ly.d;
        viewpager.setPageMargin(resources.getDimensionPixelSize(0x7f080109));
        r.setPageMarginDrawable(0x106000d);
    }

    public void onDestroy()
    {
        p.clear();
        p = null;
        q.c();
        q = null;
        r.setAdapter(null);
        r = null;
        s = null;
        super.onDestroy();
    }

    protected void onUserLeaveHint()
    {
        super.onUserLeaveHint();
        Iterator iterator = p.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            TabInfo tabinfo = (TabInfo)iterator.next();
            if (tabinfo.b != null)
            {
                tabinfo.b.d();
            }
        } while (true);
    }
}
