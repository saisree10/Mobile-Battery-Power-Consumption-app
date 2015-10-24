// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

class wr
    implements xx
{

    final HashMap a;
    final String b;
    final List c;
    final xp d;
    final wm e;

    wr(wm wm1, HashMap hashmap, String s, List list, xp xp)
    {
        e = wm1;
        a = hashmap;
        b = s;
        c = list;
        d = xp;
        super();
    }

    public void a()
    {
        for (Iterator iterator = a.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            String s = (String)entry.getKey();
            int i = ((Integer)entry.getValue()).intValue();
            if (b != null && b.equals(s))
            {
                wm.g(e).a(s, i);
            } else
            {
                wm.g(e).b(s, i);
            }
        }

        if (c != null)
        {
            wm.g(e).b(c);
        }
        if (d != null)
        {
            wm.g(e).b(d);
        }
    }
}
