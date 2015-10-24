// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public class ul
{

    private static ul a;
    private HashMap b;

    private ul()
    {
        b = new HashMap();
        b.put("topic", new HashSet());
        b.put("hottopic", new HashSet());
        b.put("reply", new HashSet());
    }

    public static ul a()
    {
        if (a == null)
        {
            a = new ul();
        }
        return a;
    }

    public void a(String s)
    {
        if ("topic".equals(s) || "hottopic".equals(s) || "reply".equals(s))
        {
            for (Iterator iterator = ((HashSet)b.get(s)).iterator(); iterator.hasNext(); ((um)iterator.next()).a()) { }
        }
    }
}
