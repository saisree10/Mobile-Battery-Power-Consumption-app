// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class bbc extends Enum
{

    public static final bbc a;
    public static final bbc b;
    public static final bbc c;
    private static final bbc d[];

    private bbc(String s, int i)
    {
        super(s, i);
    }

    public static bbc valueOf(String s)
    {
        return (bbc)Enum.valueOf(bbc, s);
    }

    public static bbc[] values()
    {
        return (bbc[])d.clone();
    }

    static 
    {
        a = new bbc("PENDING", 0);
        b = new bbc("RUNNING", 1);
        c = new bbc("FINISHED", 2);
        bbc abbc[] = new bbc[3];
        abbc[0] = a;
        abbc[1] = b;
        abbc[2] = c;
        d = abbc;
    }
}
