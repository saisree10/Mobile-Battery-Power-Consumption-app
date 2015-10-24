// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Iterator;
import java.util.List;

public class xp
{

    public long a;
    public long b;
    public List c;

    public xp()
    {
    }

    public xq a(int i)
    {
        for (Iterator iterator = c.iterator(); iterator.hasNext();)
        {
            xq xq1 = (xq)iterator.next();
            if (xq1.a == i)
            {
                return xq1;
            }
        }

        return null;
    }
}
