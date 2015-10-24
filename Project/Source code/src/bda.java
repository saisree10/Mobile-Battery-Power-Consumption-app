// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public abstract class bda
{

    protected String a;
    protected bcz b;
    protected String c;
    protected byte d[];

    public bda(String s, bdd bdd1)
    {
        a = "";
        if (s != null)
        {
            a = s;
        }
        if (bdd1 != null)
        {
            String s1 = bdd1.a();
            a = (new StringBuilder()).append(a).append("?").append(s1).toString();
        }
    }

    public String a()
    {
        return a;
    }

    public bcz b()
    {
        return b;
    }

    public String c()
    {
        return c;
    }

    public byte[] d()
    {
        return d;
    }
}
