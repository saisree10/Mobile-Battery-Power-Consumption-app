// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class alu
{

    private String a;
    private int b;
    private int c;

    public alu()
    {
        a = null;
        b = -1;
        c = -1;
    }

    public String a()
    {
        return a;
    }

    public void a(int i)
    {
        b = i;
    }

    public void a(String s)
    {
        a = s;
    }

    public int b()
    {
        return b;
    }

    public void b(int i)
    {
        c = i;
    }

    public int c()
    {
        return c;
    }
}
