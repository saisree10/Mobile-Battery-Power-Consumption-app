// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class oo extends Enum
{

    public static final oo a;
    public static final oo b;
    public static final oo c;
    public static final oo d;
    private static final oo e[];

    private oo(String s, int i)
    {
        super(s, i);
    }

    public static oo valueOf(String s)
    {
        return (oo)Enum.valueOf(oo, s);
    }

    public static oo[] values()
    {
        return (oo[])e.clone();
    }

    static 
    {
        a = new oo("Query", 0);
        b = new oo("Increase", 1);
        c = new oo("ByCoin", 2);
        d = new oo("ByPlay", 3);
        oo aoo[] = new oo[4];
        aoo[0] = a;
        aoo[1] = b;
        aoo[2] = c;
        aoo[3] = d;
        e = aoo;
    }
}
