// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.LinearLayout;
import java.util.ArrayList;

public class ajn extends ajk
{

    private static double a = 10D;
    private atm p;
    private ats q;
    private ath r;
    private atu s;
    private String t;
    private String u;
    private int v;
    private ArrayList w;
    private boolean x;
    private boolean y;

    public ajn(Context context, Handler handler, LinearLayout linearlayout)
    {
        super(context, handler, linearlayout);
        j = 15;
        p = atm.a(context);
        r = ath.a(context);
    }

    public void a()
    {
        if (!x && n && !y)
        {
            y = true;
            n = false;
            k = 0;
            w = aze.a(c);
            v = -1;
            s = null;
            q = p.b();
            int i = q.g.size();
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
            while (j < i) 
            {
                s = (atu)q.g.get(j);
                ati ati1 = r.a(s.a, s.b);
                t = ati1.b;
                if (TextUtils.isEmpty(t) || t.equals("com.dianxinos.dxbs") || !w.contains(ati1.b))
                {
                    j++;
                } else
                {
                    v = j;
                    if (s.e <= a)
                    {
                        n = false;
                        l = 1;
                        return;
                    } else
                    {
                        n = true;
                        l = 2;
                        u = ati1.a;
                        Context context = c;
                        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                        Object aobj[] = new Object[2];
                        aobj[0] = u;
                        Object aobj1[] = new Object[1];
                        aobj1[0] = Double.valueOf(s.e);
                        aobj[1] = azq.a("%.1f%%", aobj1);
                        m = context.getString(0x7f0a031a, aobj);
                        return;
                    }
                }
            }
        }
    }

    public void b()
    {
        k = j;
        if (n && l != 1)
        {
            l = 1;
            Context context = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Object aobj[] = new Object[1];
            aobj[0] = u;
            m = context.getString(0x7f0a033f, aobj);
            if (t != null && !t.equals("com.dianxinos.dxbs"))
            {
                azy.b(c, t);
                if (s != null && v != -1)
                {
                    p.a(s.a, s.b);
                    q.a(v, false);
                    q.a(c);
                    q.a(c, 20, 0.10000000000000001D);
                    return;
                }
            }
        }
    }

    public String c()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a0317);
    }

    public String d()
    {
        return null;
    }

}
