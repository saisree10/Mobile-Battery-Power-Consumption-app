// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class bdv extends Enum
{

    public static final bdv a;
    public static final bdv b;
    public static final bdv c;
    public static final bdv d;
    public static final bdv e;
    public static final bdv f;
    private static final bdv h[];
    private String g;

    private bdv(String s, int i, String s1)
    {
        super(s, i);
        g = s1;
    }

    public static bdv valueOf(String s)
    {
        return (bdv)Enum.valueOf(bdv, s);
    }

    public static bdv[] values()
    {
        return (bdv[])h.clone();
    }

    public String a()
    {
        return g;
    }

    public String toString()
    {
        return a();
    }

    static 
    {
        a = new bdv("X", 0, "x");
        b = new bdv("CIRCLE", 1, "circle");
        c = new bdv("TRIANGLE", 2, "triangle");
        d = new bdv("SQUARE", 3, "square");
        e = new bdv("DIAMOND", 4, "diamond");
        f = new bdv("POINT", 5, "point");
        bdv abdv[] = new bdv[6];
        abdv[0] = a;
        abdv[1] = b;
        abdv[2] = c;
        abdv[3] = d;
        abdv[4] = e;
        abdv[5] = f;
        h = abdv;
    }
}
