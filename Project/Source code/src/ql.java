// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import java.util.Iterator;
import java.util.List;

public class ql extends pv
{

    protected ArrayAdapter b;
    protected List c;
    protected pj d;
    protected ox e;
    protected boolean f;
    private String g;
    private boolean h;

    public ql()
    {
        g = "DEFAULT";
        f = true;
        h = false;
    }

    private void a(List list, boolean flag)
    {
        ra.a().a(new qm(this, list, flag));
    }

    private void o()
    {
        if (pi.a(a))
        {
            a(ok.toolbox_loading_apps_info_des);
            pa.a(a).c(g);
            return;
        } else
        {
            b(ok.toolbox_no_apps_des_no_network_a);
            return;
        }
    }

    protected ArrayAdapter a(List list)
    {
        return new qn(this, a, c);
    }

    protected void a()
    {
        o();
    }

    protected void a(ListView listview, View view, int i, long l1)
    {
    }

    protected void a(String s)
    {
        if (!g.equals(s))
        {
            return;
        } else
        {
            b.notifyDataSetChanged();
            return;
        }
    }

    protected void a(String s, int i)
    {
        if (!g.equals(s))
        {
            return;
        }
        j();
        if (i == 403)
        {
            List list = oq.a(a).b(g);
            c = pi.a(a, list);
            StringBuilder stringbuilder = (new StringBuilder()).append("Data size = ");
            int j;
            if (c == null)
            {
                j = 0;
            } else
            {
                j = c.size();
            }
            nz.b("ToolboxListActivity", stringbuilder.append(j).toString());
            b.setNotifyOnChange(false);
            b.clear();
            ou ou1;
            for (Iterator iterator = list.iterator(); iterator.hasNext(); b.add(ou1))
            {
                ou1 = (ou)iterator.next();
            }

            b.notifyDataSetChanged();
            if (!f)
            {
                if (c.size() == 0)
                {
                    b(ok.toolbox_no_apps_des_toolbox_empty_a);
                    return;
                } else
                {
                    a(c, true);
                    return;
                }
            } else
            {
                h = false;
                return;
            }
        } else
        {
            b(ok.toolbox_no_apps_des_network_error_b);
            return;
        }
    }

    protected void b(String s, int i)
    {
        boolean flag = true;
        nz.b("ToolboxListActivity", (new StringBuilder()).append("package changed: ").append(s).toString());
        int j = b.getCount();
        int k = 0;
        do
        {
            ou ou1;
label0:
            {
                if (k < j)
                {
                    ou1 = (ou)b.getItem(k);
                    if (ou1 != null)
                    {
                        break label0;
                    }
                }
                return;
            }
            if (s.equals(ou1.f))
            {
                if (i != flag)
                {
                    flag = false;
                }
                ou1.t = flag;
                b.notifyDataSetChanged();
                return;
            }
            k++;
        } while (true);
    }

    protected pj l()
    {
        return new qb(a);
    }

    protected ox m()
    {
        ox ox1 = new ox();
        ox1.a = oh.toolbox_default_app_icon;
        int i = getResources().getDimensionPixelSize(og.toolbox_apps_listview_item_icon_size);
        ox1.b = i;
        ox1.c = i;
        return ox1;
    }

    protected void n()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d = l();
        String s = getIntent().getStringExtra("ad_tag");
        if (s != null)
        {
            g = s;
        }
        e = m();
        n();
        List list = oq.a(a).b(g);
        c = pi.a(a, list);
        nz.b("ToolboxListActivity", (new StringBuilder()).append("Data size = ").append(c.size()).toString());
        b = a(c);
        setListAdapter(b);
        pa.a(a).b(g);
    }

    protected void onListItemClick(ListView listview, View view, int i, long l1)
    {
        int j = getListView().getHeaderViewsCount();
        if (i < j)
        {
            a(listview, view, i, l1);
            return;
        } else
        {
            int k = i - j;
            ou ou1 = (ou)b.getItem(k);
            d.a(ou1);
            return;
        }
    }

    public void onPause()
    {
        super.onPause();
        f = true;
    }

    public void onResume()
    {
        super.onResume();
        f = false;
        op.a(a, g);
        a(c, h);
        oq.a(a).a(g, false);
        h = true;
    }
}
