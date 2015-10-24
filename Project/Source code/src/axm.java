// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class axm extends Enum
{

    public static final axm a;
    public static final axm b;
    public static final axm c;
    private static final axm e[];
    private final int d;

    private axm(String s, int i, int j)
    {
        super(s, i);
        d = j;
    }

    public static axm a(int i)
    {
        axm aaxm[] = values();
        int j = aaxm.length;
        for (int k = 0; k < j; k++)
        {
            axm axm1 = aaxm[k];
            if (i == axm1.a())
            {
                return axm1;
            }
        }

        return a;
    }

    public static axm valueOf(String s)
    {
        return (axm)Enum.valueOf(axm, s);
    }

    public static axm[] values()
    {
        return (axm[])e.clone();
    }

    public int a()
    {
        return d;
    }

    static 
    {
        a = new axm("DEFAULT_VERSION", 0, -1);
        b = new axm("NO_NEW_VERSION", 1, 0);
        c = new axm("HAS_NEW_VERSION", 2, 1);
        axm aaxm[] = new axm[3];
        aaxm[0] = a;
        aaxm[1] = b;
        aaxm[2] = c;
        e = aaxm;
    }
}
