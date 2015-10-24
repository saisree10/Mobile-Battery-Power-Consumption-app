// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import com.dianxinos.common.coins.CoinManager;
import java.util.List;

public class qp extends ql
{

    qr g;
    private mc h;

    public qp()
    {
        h = new qq(this);
    }

    private void b(List list)
    {
        if (pi.a(this)) goto _L2; else goto _L1
_L1:
        int i2 = list.size();
        for (int j2 = 0; j2 < i2; j2++)
        {
            ((ou)list.get(j2)).u = false;
        }

          goto _L3
_L2:
        long l1 = om.d(this);
        long l2 = 0L;
        long l3 = 0L;
        int j = -1;
        byte byte0 = -1;
        int i1 = 0;
        int j1 = list.size();
        while (i1 < j1) 
        {
            ou ou2 = (ou)list.get(i1);
            ou2.u = false;
            int k1;
            long l5;
            long l6;
            long l7;
            if (ou2.v <= 0L)
            {
                k1 = byte0;
                long l9 = l3;
                l5 = l2;
                l6 = l9;
            } else
            {
                if (ou2.v > l2)
                {
                    l2 = ou2.v;
                    j = i1;
                }
                ou ou1;
                if (ou2.v < l1 && ou2.v > l3)
                {
                    long l8 = ou2.v;
                    k1 = i1;
                    l5 = l2;
                    l6 = l8;
                } else
                {
                    k1 = byte0;
                    long l4 = l3;
                    l5 = l2;
                    l6 = l4;
                }
            }
            i1++;
            l7 = l6;
            l2 = l5;
            byte0 = k1;
            l3 = l7;
        }
        if (byte0 <= 0) goto _L5; else goto _L4
_L4:
        ou1 = (ou)list.remove(byte0);
        list.add(0, ou1);
_L7:
        if (ou1 != null)
        {
            ou1.u = true;
            om.a(this, ou1.v);
        }
_L3:
        return;
_L5:
        if (byte0 == 0)
        {
            ou1 = (ou)list.get(byte0);
        } else
        if (j > 0)
        {
            ou1 = (ou)list.remove(j);
            list.add(0, ou1);
        } else
        {
            ou1 = null;
            if (j == 0)
            {
                ou1 = (ou)list.get(j);
            }
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    protected ArrayAdapter a(List list)
    {
        b(list);
        return new pl(a, list);
    }

    protected void a(ListView listview, View view, int j, long l1)
    {
        pf.d(a);
        if (pi.a(a))
        {
            om.a(a, true);
            pf.e(a);
            mh.a();
            return;
        } else
        {
            d.a();
            return;
        }
    }

    protected boolean d()
    {
        return true;
    }

    protected boolean e()
    {
        return true;
    }

    protected void g()
    {
        if (g != null && g.a())
        {
            return;
        } else
        {
            g = new qr(this, null);
            g.execute(new Void[0]);
            return;
        }
    }

    protected int i()
    {
        return oj.toolbox_list_gold_activity;
    }

    public void k()
    {
        if (g != null)
        {
            g.cancel(true);
        }
    }

    protected pj l()
    {
        return new qs(this);
    }

    protected void n()
    {
        if (nl.a(a).g())
        {
            View view = LayoutInflater.from(this).inflate(oj.tapjoy_entrance, null);
            getListView().addHeaderView(view);
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        CoinManager.a(this, h);
        String s = CoinManager.a(this).b();
        mh.a(getApplicationContext(), s);
    }

    public void onDestroy()
    {
        super.onDestroy();
        CoinManager.b(this, h);
    }

    public void onResume()
    {
        super.onResume();
        pt.a(a);
    }
}
