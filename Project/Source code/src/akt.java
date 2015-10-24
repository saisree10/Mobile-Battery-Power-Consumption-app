// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class akt extends Enum
{

    public static final akt a;
    public static final akt b;
    public static final akt c;
    public static final akt d;
    public static final akt e;
    public static final akt f;
    public static final akt g;
    private static final akt h[];

    private akt(String s, int i)
    {
        super(s, i);
    }

    public static akt a(int i)
    {
        akt aakt[] = values();
        if (i < 0 || i >= aakt.length)
        {
            return g;
        } else
        {
            return aakt[i];
        }
    }

    public static akt valueOf(String s)
    {
        return (akt)Enum.valueOf(akt, s);
    }

    public static akt[] values()
    {
        return (akt[])h.clone();
    }

    static 
    {
        a = new akt("RESULT_OK", 0);
        b = new akt("RESULT_USER_CANCELED", 1);
        c = new akt("RESULT_SERVICE_UNAVAILABLE", 2);
        d = new akt("RESULT_BILLING_UNAVAILABLE", 3);
        e = new akt("RESULT_ITEM_UNAVAILABLE", 4);
        f = new akt("RESULT_DEVELOPER_ERROR", 5);
        g = new akt("RESULT_ERROR", 6);
        akt aakt[] = new akt[7];
        aakt[0] = a;
        aakt[1] = b;
        aakt[2] = c;
        aakt[3] = d;
        aakt[4] = e;
        aakt[5] = f;
        aakt[6] = g;
        h = aakt;
    }
}
