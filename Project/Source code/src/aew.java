// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class aew extends Enum
{

    public static final aew a;
    public static final aew b;
    public static final aew c;
    public static final aew d;
    public static final aew e;
    public static final aew f;
    public static final aew g;
    private static final aew h[];

    private aew(String s, int i)
    {
        super(s, i);
    }

    public static aew valueOf(String s)
    {
        return (aew)Enum.valueOf(aew, s);
    }

    public static aew[] values()
    {
        return (aew[])h.clone();
    }

    static 
    {
        a = new aew("FREE", 0);
        b = new aew("UNPURCHASED", 1);
        c = new aew("PURCHASED", 2);
        d = new aew("DOWNLOADING", 3);
        e = new aew("DOWNLOADED", 4);
        f = new aew("UNZIPING", 5);
        g = new aew("INUSE", 6);
        aew aaew[] = new aew[7];
        aaew[0] = a;
        aaew[1] = b;
        aaew[2] = c;
        aaew[3] = d;
        aaew[4] = e;
        aaew[5] = f;
        aaew[6] = g;
        h = aaew;
    }
}
