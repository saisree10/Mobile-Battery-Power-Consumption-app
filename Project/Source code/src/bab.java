// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class bab extends Enum
{

    public static final bab a;
    public static final bab b;
    public static final bab c;
    public static final bab d;
    private static final bab e[];

    private bab(String s, int i)
    {
        super(s, i);
    }

    public static bab valueOf(String s)
    {
        return (bab)Enum.valueOf(bab, s);
    }

    public static bab[] values()
    {
        return (bab[])e.clone();
    }

    static 
    {
        a = new bab("Optimize", 0);
        b = new bab("ChangeSkin", 1);
        c = new bab("OptimizeAgain", 2);
        d = new bab("ChangeSkinAgain", 3);
        bab abab[] = new bab[4];
        abab[0] = a;
        abab[1] = b;
        abab[2] = c;
        abab[3] = d;
        e = abab;
    }
}
