// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class bad extends Enum
{

    public static final bad a;
    public static final bad b;
    private static final bad c[];

    private bad(String s, int i)
    {
        super(s, i);
    }

    public static bad valueOf(String s)
    {
        return (bad)Enum.valueOf(bad, s);
    }

    public static bad[] values()
    {
        return (bad[])c.clone();
    }

    static 
    {
        a = new bad("Optimize", 0);
        b = new bad("ChangeSkin", 1);
        bad abad[] = new bad[2];
        abad[0] = a;
        abad[1] = b;
        c = abad;
    }
}
