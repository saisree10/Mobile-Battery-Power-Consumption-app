// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;

public class uz extends ux
{

    private String a;
    private int b;
    private int c;
    private int d;
    private ArrayList e;

    public uz(String s, String s1, long l, int i, int j)
    {
        super(s1, l);
        a = s;
        b = 0;
        d = i;
        c = j;
        e = new ArrayList();
    }

    public void a(ArrayList arraylist)
    {
        e = arraylist;
        if (e.size() > 0)
        {
            b = 1;
        }
    }

    public String b()
    {
        return a;
    }

    public int c()
    {
        return c;
    }
}
