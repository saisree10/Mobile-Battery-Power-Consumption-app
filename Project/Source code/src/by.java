// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class by
    implements Cloneable
{

    private static final Object a = new Object();
    private boolean b;
    private int c[];
    private Object d[];
    private int e;

    public by()
    {
        this(10);
    }

    public by(int i)
    {
        b = false;
        if (i == 0)
        {
            c = bn.a;
            d = bn.c;
        } else
        {
            int j = bn.a(i);
            c = new int[j];
            d = new Object[j];
        }
        e = 0;
    }

    private void d()
    {
        int i = e;
        int ai[] = c;
        Object aobj[] = d;
        int j = 0;
        int k = 0;
        for (; j < i; j++)
        {
            Object obj = aobj[j];
            if (obj == a)
            {
                continue;
            }
            if (j != k)
            {
                ai[k] = ai[j];
                aobj[k] = obj;
                aobj[j] = null;
            }
            k++;
        }

        b = false;
        e = k;
    }

    public by a()
    {
        by by1;
        try
        {
            by1 = (by)super.clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            return null;
        }
        try
        {
            by1.c = (int[])c.clone();
            by1.d = (Object[])((Object []) (d)).clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception1)
        {
            return by1;
        }
        return by1;
    }

    public Object a(int i)
    {
        return a(i, null);
    }

    public Object a(int i, Object obj)
    {
        int j = bn.a(c, e, i);
        if (j < 0 || d[j] == a)
        {
            return obj;
        } else
        {
            return d[j];
        }
    }

    public int b()
    {
        if (b)
        {
            d();
        }
        return e;
    }

    public void b(int i)
    {
        int j = bn.a(c, e, i);
        if (j >= 0 && d[j] != a)
        {
            d[j] = a;
            b = true;
        }
    }

    public void b(int i, Object obj)
    {
        int j = bn.a(c, e, i);
        if (j >= 0)
        {
            d[j] = obj;
            return;
        }
        int k = ~j;
        if (k < e && d[k] == a)
        {
            c[k] = i;
            d[k] = obj;
            return;
        }
        if (b && e >= c.length)
        {
            d();
            k = -1 ^ bn.a(c, e, i);
        }
        if (e >= c.length)
        {
            int l = bn.a(1 + e);
            int ai[] = new int[l];
            Object aobj[] = new Object[l];
            System.arraycopy(c, 0, ai, 0, c.length);
            System.arraycopy(((Object) (d)), 0, ((Object) (aobj)), 0, d.length);
            c = ai;
            d = aobj;
        }
        if (e - k != 0)
        {
            System.arraycopy(c, k, c, k + 1, e - k);
            System.arraycopy(((Object) (d)), k, ((Object) (d)), k + 1, e - k);
        }
        c[k] = i;
        d[k] = obj;
        e = 1 + e;
    }

    public void c()
    {
        int i = e;
        Object aobj[] = d;
        for (int j = 0; j < i; j++)
        {
            aobj[j] = null;
        }

        e = 0;
        b = false;
    }

    public void c(int i)
    {
        b(i);
    }

    public Object clone()
    {
        return a();
    }

    public int d(int i)
    {
        if (b)
        {
            d();
        }
        return c[i];
    }

    public Object e(int i)
    {
        if (b)
        {
            d();
        }
        return d[i];
    }

    public String toString()
    {
        if (b() <= 0)
        {
            return "{}";
        }
        StringBuilder stringbuilder = new StringBuilder(28 * e);
        stringbuilder.append('{');
        int i = 0;
        while (i < e) 
        {
            if (i > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append(d(i));
            stringbuilder.append('=');
            Object obj = e(i);
            if (obj != this)
            {
                stringbuilder.append(obj);
            } else
            {
                stringbuilder.append("(this Map)");
            }
            i++;
        }
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

}
