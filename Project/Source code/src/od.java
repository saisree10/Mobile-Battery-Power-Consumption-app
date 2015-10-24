// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class od
{

    public String a;
    public int b;
    long c;
    long d;
    long e;
    lj f;
    lk g;
    private boolean h;
    private boolean i;

    public od(String s)
    {
        h = false;
        i = false;
        b = 10;
        a = s;
    }

    public void a(int j)
    {
        if (j > 0)
        {
            b = j;
            return;
        } else
        {
            throw new IllegalArgumentException("must > 0");
        }
    }

    void a(long l)
    {
        e = l;
    }

    void a(lj lj1)
    {
        f = lj1;
        c = lj1.a;
    }

    void a(lk lk1)
    {
        g = lk1;
        d = lk1.a;
    }

    public void a(boolean flag)
    {
        h = flag;
    }

    public boolean a()
    {
        return h;
    }

    public void b(boolean flag)
    {
        i = flag;
    }

    public boolean b()
    {
        return i;
    }

    public int c()
    {
        return b;
    }
}
