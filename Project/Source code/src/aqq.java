// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Comparator;

public final class aqq
    implements Comparator
{

    public aqq()
    {
    }

    public int a(aqw aqw1, aqw aqw2)
    {
        return aqw1.b - aqw2.b;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((aqw)obj, (aqw)obj1);
    }
}
