// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Iterator;
import java.util.List;

class nx extends nv
{

    final nt a;
    private String b;
    private od c;

    public nx(nt nt1, od od1)
    {
        a = nt1;
        super();
        c = od1;
        b = od1.a;
    }

    public void a(int i)
    {
        nt.a(b, "[Project]", (new StringBuilder()).append(" Pull failed: status = ").append(i).toString());
        a.a(c, 404);
        if (pi.a(a.b))
        {
            ob.a(a.b, b, "404");
            return;
        } else
        {
            ob.a(a.b, b, "nn");
            return;
        }
    }

    public volatile void a(int i, Object obj)
    {
        a(i, (lj)obj);
    }

    public void a(int i, lj lj1)
    {
        int j = lj1.a();
        nt.a(b, "[Project]", (new StringBuilder()).append(" pid = ").append(lj1.a).toString());
        c.a(lj1);
        if (j < 1)
        {
            a.a(c, 403);
            return;
        }
        for (Iterator iterator = lj1.g.iterator(); iterator.hasNext();)
        {
            lk lk1 = (lk)iterator.next();
            if (b.equalsIgnoreCase(lk1.h))
            {
                nt.a(a, c, lk1);
                return;
            }
        }

        nt.a(b, "[Project]", " Tag not found on server");
        a.a(c, 403);
    }
}
