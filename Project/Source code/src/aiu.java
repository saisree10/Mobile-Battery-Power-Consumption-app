// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.Iterator;

public class aiu extends ajk
{

    private ats a;
    private ath p;
    private atm q;
    private double r;
    private boolean s;
    private boolean t;
    private PackageManager u;
    private int v;
    private ArrayList w;
    private ArrayList x;
    private ArrayList y;

    public aiu(Context context, Handler handler, LinearLayout linearlayout)
    {
        super(context, handler, linearlayout);
        j = 25;
        q = atm.a(c);
        p = ath.a(context);
        w = new ArrayList();
        x = new ArrayList();
    }

    public void a()
    {
        if (s || !n || t)
        {
            return;
        }
        t = true;
        k = 0;
        v = 0;
        r = 0.0D;
        y = aze.a(c);
        a = q.b();
        int i = a.g.size();
        if (i <= 0)
        {
            n = false;
            l = 2;
            Context context1 = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            m = context1.getString(0x7f0a0318);
            return;
        }
        int j = 0;
        while (j < i && v < 5) 
        {
            atu atu1 = (atu)a.g.get(j);
            ati ati1 = p.a(atu1.a, atu1.b);
            if (!TextUtils.isEmpty(ati1.b) && !ati1.b.equals("com.dianxinos.dxbs") && y.contains(ati1.b))
            {
                v = 1 + v;
                r = r + atu1.e;
                w.add(ati1.b);
                x.add(ati1.a);
            }
            j++;
        }
        l = 2;
        if (v == 0 || r <= 10D)
        {
            n = false;
            return;
        } else
        {
            n = true;
            Context context = c;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(v);
            Object aobj1[] = new Object[1];
            aobj1[0] = Double.valueOf(r);
            aobj[1] = azq.a("%.1f%%", aobj1);
            m = context.getString(0x7f0a0319, aobj);
            return;
        }
    }

    public void b()
    {
        k = j;
        s = true;
        if (!n || l == 1)
        {
            return;
        }
        if (u == null)
        {
            u = c.getPackageManager();
        }
        Iterator iterator = w.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s1 = (String)iterator.next();
            if (s1 != null)
            {
                azy.b(c, s1);
            }
        } while (true);
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(v);
        Object aobj1[] = new Object[1];
        aobj1[0] = Double.valueOf(r);
        aobj[1] = azq.a("%.1f%%", aobj1);
        m = context.getString(0x7f0a0340, aobj);
        l = 1;
    }

    public String c()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a0317);
    }

    public String d()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a0344);
    }
}
