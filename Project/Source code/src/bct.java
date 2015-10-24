// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class bct extends bcs
{

    static int f[];
    protected final bcv g;
    private int h;

    public bct(bcv bcv, String s)
    {
        this(bcv, s, ((bde) (new bcu())));
    }

    public bct(bcv bcv, String s, bde bde)
    {
        super(s, bde);
        h = 3;
        g = bcv;
    }

    static 
    {
        f = new int[20];
        int i = 0;
        while (i < 20) 
        {
            int ai[] = f;
            int j;
            if (i < 2)
            {
                j = i;
            } else
            {
                j = f[i - 2] + f[i - 1];
            }
            ai[i] = j;
            i++;
        }
    }
}
