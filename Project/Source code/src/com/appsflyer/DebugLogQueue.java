// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.appsflyer;

import java.util.ArrayList;
import java.util.List;

public class DebugLogQueue
{

    private static DebugLogQueue b = new DebugLogQueue();
    List a;

    private DebugLogQueue()
    {
        a = new ArrayList();
    }

    public static DebugLogQueue a()
    {
        return b;
    }

    public void a(String s)
    {
        a.add(new Item(s));
    }

    public Item b()
    {
        if (a.size() == 0)
        {
            return null;
        } else
        {
            Item item = (Item)a.get(0);
            a.remove(0);
            return item;
        }
    }


    private class Item
    {

        private String a;
        private long b;

        public String a()
        {
            return a;
        }

        public long b()
        {
            return b;
        }

        public Item(String s)
        {
            a = s;
            b = (new Date()).getTime();
        }
    }

}
