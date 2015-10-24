// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class kr extends Enum
{

    public static final kr a;
    public static final kr b;
    public static final kr c;
    private static final kr e[];
    private String d;

    private kr(String s, int i, String s1)
    {
        super(s, i);
        d = s1;
    }

    public static kr valueOf(String s)
    {
        return (kr)Enum.valueOf(kr, s);
    }

    public static kr[] values()
    {
        kr akr[] = e;
        int i = akr.length;
        kr akr1[] = new kr[i];
        System.arraycopy(akr, 0, akr1, 0, i);
        return akr1;
    }

    public String toString()
    {
        return d;
    }

    static 
    {
        a = new kr("DEFAULT", 0, "sort");
        b = new kr("UPDATE", 1, "modifiedTime");
        c = new kr("DOWNLOAD", 2, "downloadCount");
        kr akr[] = new kr[3];
        akr[0] = a;
        akr[1] = b;
        akr[2] = c;
        e = akr;
    }
}
