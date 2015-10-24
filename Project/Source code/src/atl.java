// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.ListIterator;

public class atl
    implements Comparable
{

    protected int c;
    public double d;
    public double e;
    public double f;
    public ArrayList g;

    public atl()
    {
        c = 2;
        g = new ArrayList();
    }

    public void a()
    {
        c = 2;
        d = 0.0D;
        e = 0.0D;
        for (Iterator iterator = g.iterator(); iterator.hasNext(); ((atl)iterator.next()).a()) { }
        g.clear();
    }

    protected void a(double d1)
    {
        e = d1;
        if (c == 1)
        {
            return;
        }
        ListIterator listiterator = g.listIterator();
        while (listiterator.hasNext()) 
        {
            atl atl1 = (atl)listiterator.next();
            double d2;
            if (d > 0.0D)
            {
                d2 = (atl1.d / d) * e;
            } else
            {
                d2 = 0.0D;
            }
            atl1.a(d2);
        }
        Collections.sort(g);
    }

    public final void a(Context context)
    {
        d();
        a(100D);
    }

    public void a(Context context, int i, double d1)
    {
    }

    protected void a(atl atl1)
    {
        c = atl1.c;
        d = atl1.d;
        e = atl1.e;
        g.clear();
        int i = atl1.g.size();
        for (int j = 0; j < i; j++)
        {
            g.add(((atl)atl1.g.get(j)).b());
        }

    }

    public atl b()
    {
        atl atl1 = c();
        atl1.a(this);
        return atl1;
    }

    public void b(atl atl1)
    {
        g.add(atl1);
    }

    protected atl c()
    {
        return new atl();
    }

    protected void c(atl atl1)
    {
    }

    public Object clone()
    {
        return b();
    }

    public int compareTo(Object obj)
    {
        return d((atl)obj);
    }

    public int d(atl atl1)
    {
        if (atl1.e > e)
        {
            return 1;
        }
        return atl1.e >= e ? 0 : -1;
    }

    protected void d()
    {
        if (c != 1)
        {
            d = 0.0D;
            ListIterator listiterator = g.listIterator();
            while (listiterator.hasNext()) 
            {
                atl atl1 = (atl)listiterator.next();
                atl1.d();
                d = d + atl1.d;
            }
        }
    }
}
