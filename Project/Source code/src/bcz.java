// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class bcz extends Enum
{

    public static final bcz a;
    public static final bcz b;
    public static final bcz c;
    public static final bcz d;
    public static final bcz e;
    private static final bcz h[];
    private boolean f;
    private boolean g;

    private bcz(String s, int i, boolean flag, boolean flag1)
    {
        super(s, i);
        f = flag;
        g = flag1;
    }

    public static bcz valueOf(String s)
    {
        return (bcz)Enum.valueOf(bcz, s);
    }

    public static bcz[] values()
    {
        return (bcz[])h.clone();
    }

    public final boolean a()
    {
        return f;
    }

    public final boolean b()
    {
        return g;
    }

    public final String c()
    {
        return toString();
    }

    static 
    {
        a = new bcz("GET", 0, true, false);
        b = new bcz("POST", 1, true, true);
        c = new bcz("PUT", 2, true, true);
        d = new bcz("DELETE", 3, true, false);
        e = new bcz("HEAD", 4, false, false);
        bcz abcz[] = new bcz[5];
        abcz[0] = a;
        abcz[1] = b;
        abcz[2] = c;
        abcz[3] = d;
        abcz[4] = e;
        h = abcz;
    }
}
