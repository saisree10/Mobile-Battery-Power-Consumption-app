// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Comparator;

class ayb
    implements Comparator
{

    final aya a;

    ayb(aya aya1)
    {
        a = aya1;
        super();
    }

    public int a(atu atu1, atu atu2)
    {
        if (atu1.f == atu2.f)
        {
            ati ati1 = aya.a(a).a(atu1.a, atu1.b);
            ati ati2 = aya.a(a).a(atu2.a, atu2.b);
            boolean flag = azy.a(ati1.b, aya.b(a));
            boolean flag1 = azy.a(ati2.b, aya.b(a));
            if (!flag && !flag1 || flag && flag1)
            {
                return 0;
            }
            return !flag ? -1 : 1;
        }
        return atu1.f >= atu2.f ? -1 : 1;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((atu)obj, (atu)obj1);
    }
}
