// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Comparator;

public class atw
    implements Comparator
{

    public atw()
    {
    }

    public int a(atu atu1, atu atu2)
    {
        if (atu2.w > atu1.w)
        {
            return 1;
        }
        return atu2.w >= atu1.w ? 0 : -1;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((atu)obj, (atu)obj1);
    }
}
