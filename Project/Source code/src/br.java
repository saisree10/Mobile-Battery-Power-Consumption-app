// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

abstract class br
{

    bt b;
    bu c;
    bw d;

    br()
    {
    }

    public static boolean a(Map map, Collection collection)
    {
        for (Iterator iterator = collection.iterator(); iterator.hasNext();)
        {
            if (!map.containsKey(iterator.next()))
            {
                return false;
            }
        }

        return true;
    }

    public static boolean a(Set set, Object obj)
    {
        boolean flag = true;
        if (set != obj) goto _L2; else goto _L1
_L1:
        boolean flag2 = flag;
_L4:
        return flag2;
_L2:
        boolean flag1;
        flag1 = obj instanceof Set;
        flag2 = false;
        if (!flag1) goto _L4; else goto _L3
_L3:
        Set set1 = (Set)obj;
        if (set.size() != set1.size()) goto _L6; else goto _L5
_L5:
        boolean flag3 = set.containsAll(set1);
        if (!flag3) goto _L6; else goto _L7
_L7:
        return flag;
_L6:
        flag = false;
        if (true) goto _L7; else goto _L8
_L8:
        ClassCastException classcastexception;
        classcastexception;
        return false;
        NullPointerException nullpointerexception;
        nullpointerexception;
        return false;
    }

    public static boolean b(Map map, Collection collection)
    {
        int i = map.size();
        for (Iterator iterator = collection.iterator(); iterator.hasNext(); map.remove(iterator.next())) { }
        return i != map.size();
    }

    public static boolean c(Map map, Collection collection)
    {
        int i = map.size();
        Iterator iterator = map.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (!collection.contains(iterator.next()))
            {
                iterator.remove();
            }
        } while (true);
        return i != map.size();
    }

    protected abstract int a();

    protected abstract int a(Object obj);

    protected abstract Object a(int i, int j);

    protected abstract Object a(int i, Object obj);

    protected abstract void a(int i);

    protected abstract void a(Object obj, Object obj1);

    public Object[] a(Object aobj[], int i)
    {
        int j = a();
        Object aobj1[];
        int k;
        if (aobj.length < j)
        {
            aobj1 = (Object[])(Object[])Array.newInstance(((Object) (aobj)).getClass().getComponentType(), j);
        } else
        {
            aobj1 = aobj;
        }
        for (k = 0; k < j; k++)
        {
            aobj1[k] = a(k, i);
        }

        if (aobj1.length > j)
        {
            aobj1[j] = null;
        }
        return aobj1;
    }

    protected abstract int b(Object obj);

    protected abstract Map b();

    public Object[] b(int i)
    {
        int j = a();
        Object aobj[] = new Object[j];
        for (int k = 0; k < j; k++)
        {
            aobj[k] = a(k, i);
        }

        return aobj;
    }

    protected abstract void c();

    public Set d()
    {
        if (b == null)
        {
            b = new bt(this);
        }
        return b;
    }

    public Set e()
    {
        if (c == null)
        {
            c = new bu(this);
        }
        return c;
    }

    public Collection f()
    {
        if (d == null)
        {
            d = new bw(this);
        }
        return d;
    }
}
