// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;

public class acy
    implements Comparable
{

    private int a;
    private int b;
    private int c;
    private String d;
    private String e;
    private boolean f;
    private Context g;

    public acy(Context context)
    {
        g = context;
    }

    public int a()
    {
        return a;
    }

    public int a(acy acy1)
    {
        if (acy1.c < c)
        {
            return 1;
        }
        return acy1.c <= c ? 0 : -1;
    }

    public void a(int i)
    {
        a = i;
    }

    public void a(String s)
    {
        d = s;
    }

    public void a(boolean flag)
    {
        f = flag;
    }

    public void b(int i)
    {
        b = i;
    }

    public void b(String s)
    {
        e = s;
    }

    public boolean b()
    {
        return f;
    }

    public int c()
    {
        return b;
    }

    public void c(int i)
    {
        d = g.getResources().getString(i);
    }

    public int compareTo(Object obj)
    {
        return a((acy)obj);
    }

    public String d()
    {
        return d;
    }

    public void d(int i)
    {
        c = i;
    }

    public String e()
    {
        return e;
    }

    public int f()
    {
        return c;
    }
}
