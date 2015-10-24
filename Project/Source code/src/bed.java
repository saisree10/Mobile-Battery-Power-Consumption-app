// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.SortedMap;

public class bed
    implements Serializable
{

    private String a;
    private final beu b;
    private double c;
    private double d;
    private double e;
    private double f;
    private final int g;
    private List h;
    private final beu i;

    public bed(String s)
    {
        this(s, 0);
    }

    public bed(String s, int k)
    {
        b = new beu();
        c = 1.7976931348623157E+308D;
        d = -1.7976931348623157E+308D;
        e = 1.7976931348623157E+308D;
        f = -1.7976931348623157E+308D;
        h = new ArrayList();
        i = new beu();
        a = s;
        g = k;
        j();
    }

    private void b(double d1, double d2)
    {
        c = Math.min(c, d1);
        d = Math.max(d, d1);
        e = Math.min(e, d2);
        f = Math.max(f, d2);
    }

    private void j()
    {
        c = 1.7976931348623157E+308D;
        d = -1.7976931348623157E+308D;
        e = 1.7976931348623157E+308D;
        f = -1.7976931348623157E+308D;
        int k = e();
        for (int l = 0; l < k; l++)
        {
            b(a(l), b(l));
        }

    }

    public double a(int k)
    {
        this;
        JVM INSTR monitorenter ;
        double d1 = ((Double)b.a(k)).doubleValue();
        this;
        JVM INSTR monitorexit ;
        return d1;
        Exception exception;
        exception;
        throw exception;
    }

    public int a()
    {
        return g;
    }

    public int a(double d1)
    {
        return b.a(Double.valueOf(d1));
    }

    public SortedMap a(double d1, double d2, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        if (!flag) goto _L2; else goto _L1
_L1:
        SortedMap sortedmap2;
        SortedMap sortedmap1 = b.headMap(Double.valueOf(d1));
        if (!sortedmap1.isEmpty())
        {
            d1 = ((Double)sortedmap1.lastKey()).doubleValue();
        }
        sortedmap2 = b.tailMap(Double.valueOf(d2));
        if (sortedmap2.isEmpty()) goto _L2; else goto _L3
_L3:
        Iterator iterator;
        Double double1;
        iterator = sortedmap2.keySet().iterator();
        double1 = (Double)iterator.next();
        if (!iterator.hasNext()) goto _L5; else goto _L4
_L4:
        d2 = ((Double)iterator.next()).doubleValue();
_L2:
        SortedMap sortedmap = b.subMap(Double.valueOf(d1), Double.valueOf(d2));
        this;
        JVM INSTR monitorexit ;
        return sortedmap;
_L5:
        double d3 = double1.doubleValue();
        d2 += d3;
          goto _L2
        Exception exception;
        exception;
        throw exception;
    }

    public void a(double d1, double d2)
    {
        this;
        JVM INSTR monitorenter ;
        for (; b.get(Double.valueOf(d1)) != null; d1 += c()) { }
        b.put(Double.valueOf(d1), Double.valueOf(d2));
        b(d1, d2);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public double b(int k)
    {
        this;
        JVM INSTR monitorenter ;
        double d1 = ((Double)b.b(k)).doubleValue();
        this;
        JVM INSTR monitorexit ;
        return d1;
        Exception exception;
        exception;
        throw exception;
    }

    public String b()
    {
        return a;
    }

    protected double c()
    {
        return 9.9999999999999998E-13D;
    }

    public double c(int k)
    {
        return ((Double)i.a(k)).doubleValue();
    }

    public double d(int k)
    {
        return ((Double)i.b(k)).doubleValue();
    }

    public int d()
    {
        return h.size();
    }

    public int e()
    {
        this;
        JVM INSTR monitorenter ;
        int k = b.size();
        this;
        JVM INSTR monitorexit ;
        return k;
        Exception exception;
        exception;
        throw exception;
    }

    public String e(int k)
    {
        return (String)h.get(k);
    }

    public double f()
    {
        return c;
    }

    public double g()
    {
        return e;
    }

    public double h()
    {
        return d;
    }

    public double i()
    {
        return f;
    }
}
