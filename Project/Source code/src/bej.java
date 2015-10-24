// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class bej extends Enum
{

    public static final bej a;
    public static final bej b;
    private static final bej d[];
    private int c;

    private bej(String s, int i, int j)
    {
        super(s, i);
        c = 0;
        c = j;
    }

    public static bej valueOf(String s)
    {
        return (bej)Enum.valueOf(bej, s);
    }

    public static bej[] values()
    {
        return (bej[])d.clone();
    }

    public int a()
    {
        return c;
    }

    static 
    {
        a = new bej("HORIZONTAL", 0, 0);
        b = new bej("VERTICAL", 1, 90);
        bej abej[] = new bej[2];
        abej[0] = a;
        abej[1] = b;
        d = abej;
    }
}
