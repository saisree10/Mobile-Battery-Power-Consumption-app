// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class bce
    implements Runnable
{

    static final String a = bce.getName();
    bck b;
    private String c;
    private String d;
    private String e;
    private int f;
    private bdd g;
    private Map h;
    private bco i;
    private bcq j;

    public bce(String s, String s1, String s2, bdd bdd, int k, Map map, bco bco1)
    {
        b = null;
        c = s;
        d = s1;
        e = s2;
        f = k;
        g = bdd;
        h = map;
        i = bco1;
        j = bcq.b;
        b = new bck();
    }

    public void run()
    {
        bdg bdg1 = new bdg((new StringBuilder()).append(c).append("://").append(d).toString(), b);
        bdg1.a(f);
        bdg1.b(f);
        bdg1.a(new bcf(this));
        if (h != null)
        {
            java.util.Map.Entry entry;
            for (Iterator iterator = h.entrySet().iterator(); iterator.hasNext(); bdg1.a((String)entry.getKey(), (String)entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

        }
        bdc bdc1 = bdg1.a(e, g);
        if (bdc1 == null)
        {
            j = b.a;
            Log.w(a, (new StringBuilder("failed to retrieve from ")).append(d).toString());
            if (i != null)
            {
                i.a(j);
                i.d();
            }
        } else
        {
            String _tmp = a;
            (new StringBuilder("retrieved: ")).append(bdc1.b());
            if (bdc1.a() != 200)
            {
                Log.w(a, (new StringBuilder("error (")).append(bdc1.a()).append(") status on request to ").append(c).append("://").append(d).toString());
                return;
            }
        }
    }

}
