// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class afg
{

    public final int a;
    public int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    private int g;

    public afg(int i, int j, int k, int l, int i1, int j1)
    {
        g = 0;
        a = i;
        b = j;
        c = k;
        d = l;
        e = i1;
        f = j1;
    }

    public void a()
    {
        g = 1;
    }

    public void b()
    {
        g = 2;
    }

    public void c()
    {
        g = 0;
    }

    public int d()
    {
        return g;
    }
}
