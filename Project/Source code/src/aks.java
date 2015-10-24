// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class aks extends Enum
{

    public static final aks a;
    public static final aks b;
    public static final aks c;
    private static final aks d[];

    private aks(String s, int i)
    {
        super(s, i);
    }

    public static aks a(int i)
    {
        aks aaks[] = values();
        if (i < 0 || i >= aaks.length)
        {
            return b;
        } else
        {
            return aaks[i];
        }
    }

    public static aks valueOf(String s)
    {
        return (aks)Enum.valueOf(aks, s);
    }

    public static aks[] values()
    {
        return (aks[])d.clone();
    }

    static 
    {
        a = new aks("PURCHASED", 0);
        b = new aks("CANCELED", 1);
        c = new aks("REFUNDED", 2);
        aks aaks[] = new aks[3];
        aaks[0] = a;
        aaks[1] = b;
        aaks[2] = c;
        d = aaks;
    }
}
