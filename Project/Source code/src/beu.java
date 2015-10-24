// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;

public class beu extends TreeMap
{

    private final List a = new ArrayList();
    private double b;

    public beu()
    {
        b = 0.0D;
    }

    private void a()
    {
        if (a.size() < 2)
        {
            b = 0.0D;
        } else
        if (Math.abs(((Double)a.get(-1 + a.size())).doubleValue() - ((Double)a.get(-2 + a.size())).doubleValue()) > b)
        {
            b = Math.abs(((Double)a.get(-1 + a.size())).doubleValue() - ((Double)a.get(-2 + a.size())).doubleValue());
            return;
        }
    }

    public int a(Object obj)
    {
        return Collections.binarySearch(a, obj, null);
    }

    public Object a(int i)
    {
        return a.get(i);
    }

    public Object b(int i)
    {
        return get(a.get(i));
    }

    public void clear()
    {
        a();
        super.clear();
        a.clear();
    }

    public Object put(Object obj, Object obj1)
    {
        a.add(obj);
        a();
        return super.put(obj, obj1);
    }
}
