// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Comparator;

public final class ee
    implements Comparator
{

    public ee()
    {
    }

    public int a(ei ei1, ei ei2)
    {
        return ei1.b - ei2.b;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((ei)obj, (ei)obj1);
    }
}
