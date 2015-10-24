// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Comparator;

class ayi
    implements Comparator
{

    final ayg a;

    ayi(ayg ayg1)
    {
        a = ayg1;
        super();
    }

    public int a(ayj ayj1, ayj ayj2)
    {
        if (ayj1.d == ayj2.d)
        {
            boolean flag = azy.a(ayj1.g, ayg.a(a));
            boolean flag1 = azy.a(ayj2.g, ayg.a(a));
            if (!flag && !flag1 || flag && flag1)
            {
                return 0;
            }
            return !flag ? -1 : 1;
        }
        return ayj1.d >= ayj2.d ? -1 : 1;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((ayj)obj, (ayj)obj1);
    }
}
