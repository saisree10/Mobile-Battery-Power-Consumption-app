// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class bem extends Enum
{

    public static final bem a;
    public static final bem b;
    public static final bem c;
    public static final bem d;
    public static final bem e;
    public static final bem f;
    private static final bem g[];

    private bem(String s, int i)
    {
        super(s, i);
    }

    public static bem valueOf(String s)
    {
        return (bem)Enum.valueOf(bem, s);
    }

    public static bem[] values()
    {
        return (bem[])g.clone();
    }

    static 
    {
        a = new bem("NONE", 0);
        b = new bem("BOUNDS_ALL", 1);
        c = new bem("BOUNDS_BELOW", 2);
        d = new bem("BOUNDS_ABOVE", 3);
        e = new bem("BELOW", 4);
        f = new bem("ABOVE", 5);
        bem abem[] = new bem[6];
        abem[0] = a;
        abem[1] = b;
        abem[2] = c;
        abem[3] = d;
        abem[4] = e;
        abem[5] = f;
        g = abem;
    }
}
