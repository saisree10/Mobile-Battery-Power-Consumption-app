// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class pd extends Enum
{

    public static final pd a;
    public static final pd b;
    private static final pd c[];

    private pd(String s, int i)
    {
        super(s, i);
    }

    public static pd valueOf(String s)
    {
        return (pd)Enum.valueOf(pd, s);
    }

    public static pd[] values()
    {
        return (pd[])c.clone();
    }

    static 
    {
        a = new pd("CHINA", 0);
        b = new pd("OVERSEA", 1);
        pd apd[] = new pd[2];
        apd[0] = a;
        apd[1] = b;
        c = apd;
    }
}
